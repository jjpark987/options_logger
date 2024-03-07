class CoveredCallWritingSerializer < ActiveModel::Serializer
  attributes :id, :is_margin_account, :ticker, :init_stock_price, :shares, :strike, :premium, :expiration, :contracts, :total_dividends, :current_stock_price, :closed_at, :net_investment, :debit_balance, :net_profit_if_exercised, :return_if_exercised, :net_profit_if_unchanged, :return_if_unchanged, :downside_break_even, :percent_downside_protection
end
