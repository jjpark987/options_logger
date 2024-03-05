# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding one cash account and one margin account records...'

cash_account_attributes = {
    is_margin_account: false,
    ticker: "SPY",
    init_stock_price: 43,
    shares: 500,
    strike: 45,
    premium: 3,
    expiration: Date.today + 6.months,
    contracts: 5,
    total_dividends: 500,
    current_stock_price: 43,
    closed_at: nil
}

margin_account_attributes = {
    is_margin_account: true,
    ticker: "SPY",
    init_stock_price: 43,
    shares: 500,
    strike: 45,
    premium: 3,
    expiration: Date.today + 6.months,
    contracts: 5,
    total_dividends: 500,
    current_stock_price: 43,
    closed_at: nil
}

CoveredCallWriting.create(cash_account_attributes)
CoveredCallWriting.create(margin_account_attributes)

puts '...finished seeding CoveredCallWriting'
