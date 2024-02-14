class CoveredCallWritingSerializer < ActiveModel::Serializer
  attributes :id, :ticker, :expiration, :strike, :premium, :initial_stock, :type, :stock_commissions, :option_commissions, :dividends, :current_stock, :shares, :margin_rate, :margin_interest
end
