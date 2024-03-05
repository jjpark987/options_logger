class CoveredCallWriting < ApplicationRecord
    validates :ticker, :expiration, presence: true
    validates :init_stock_price, :shares, :strike, :premium, :contracts, :total_dividends, :current_stock_price, presence: true, numericality: { only_numeric: true }
    
    # Contract fee + activity assessment fee
    PER_OPTION_FEE = 0.65 + 0.04
    # Set by Federal Reserves
    MARGIN_RATE = 0.50

    # Cost of stock transaction
    def stock_cost
        shares * init_stock_price
    end

    # Annual margin interest rate
    def margin_interest_rate
        case stock_cost
        when 0...25,000
            0.13575
        when 25,000...50,000
            0.13075
        when 50,000...100,000
            0.12075
        when 100,000...250,000
            0.11825
        when 250,000...500,000
            0.095
        else
            0.0925
        end
    end

    # Duration of option contract
    def duration
        (expiration - created_at.to_date).to_i
    end

    # Total amount charged for margin interest
    def margin_interest_charges
        stock_cost * MARGIN_RATE * margin_interest_rate * duration / 360
    end

    # Money required for covered call writing
    def net_investment
        if is_margin_account
            # Required equity in account
            (stock_cost * MARGIN_RATE) - (contracts * premium * 100) + (contracts * PER_OPTION_FEE)
        else
            # Initial payment
            stock_cost - (contracts * premium * 100) + (contracts * PER_OPTION_FEE)
        end
    end

    # Money owed to broker
    def debit_balance
        if is_margin_account
            stock_cost - (stock_cost * MARGIN_RATE)
        else
            nil
        end
    end

    # Profit after selling shares at strike price (at expiration)
    def net_profit_if_exercised
        if is_margin_account
            (shares * strike) + total_dividends - net_investment - debit_balance - margin_interest_charges
        else
            (shares * strike) + total_dividends - net_investment
        end
    end

    # Return after selling shares at strike price (at expiration)
    def return_if_exercised
        net_profit_if_exercised / net_investment
    end

    # Profit if stock price does not change (at expiration)
    def net_profit_if_unchanged
        if is_margin_account
            stock_cost + total_dividends - net_investment - debit_balance - margin_interest_charges
        else
            stock_cost + total_dividends - net_investment
        end
    end

    # Return if stock price does not change (at expiration)
    def return_if_unchanged
        net_profit_if_unchanged / net_investment
    end

    # Stock price at which the strategy breaks even on the downside (at expiration)
    def downside_break_even
        if is_margin_account
            (net_investment + debit_balance - total_dividends + margin_interest_charges) / shares
        else
            (net_investment - total_dividends) / shares
        end
    end

    # Percentage of downside protection provided by the strategy relative to the initial stock price
    def percent_downside_protection
        (init_stock_price - downside_break_even) / init_stock_price
    end
end
