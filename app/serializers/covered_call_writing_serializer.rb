class CoveredCallWritingSerializer < ActiveModel::Serializer
  attributes :id, :is_margin_account, :ticker, :init_stock_price, :shares, :strike, :premium, :expiration, :contracts, :total_dividends, :current_stock_price, :closed_at
end
