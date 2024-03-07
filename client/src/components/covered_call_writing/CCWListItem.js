import React from "react";

export default function CCWListItem({ ccw }) {
    return (
        <div id="ccw-list-item">
            <div>
                <h5>Margin?</h5>
                <p>{ccw.is_margin_account ? 'yes' : 'no'}</p>
            </div>
            <div>
                <h5>Ticker</h5>
                <p>{ccw.ticker}</p>
            </div>
            <div>
                <h5>Initial stock price</h5>
                <p>${parseFloat(ccw.init_stock_price).toFixed(2)}</p>
            </div>
            <div>
                <h5>Shares bought</h5>
                <p>{ccw.shares}</p>
            </div>
            <div>
                <h5>Strike price</h5>
                <p>{ccw.strike}</p>
            </div>
            <div>
                <h5>Premium</h5>
                <p>${parseFloat(ccw.premium).toFixed(2)}</p>
            </div>
            <div>
                <h5>Expiration date</h5>
                <p>{ccw.expiration}</p>
            </div>
            <div>
                <h5>Contracts</h5>
                <p>{ccw.contracts}</p>
            </div>
            <div>
                <h5>Total dividends</h5>
                <p>${parseFloat(ccw.total_dividends).toFixed(2)}</p>
            </div>
            <div>
                <h5>Current stock price</h5>
                <p>${parseFloat(ccw.current_stock_price).toFixed(2)}</p>
            </div>
            <div>
                <h5>Closed date</h5>
                <p>{ccw.closed_at}</p>
            </div>
            <div>    
                <h5>Net investment</h5>
                <p>${parseFloat(ccw.net_investment).toFixed(2)}</p>
            </div>
            <div>    
                <h5>Debit balance</h5>
                <p>${parseFloat(ccw.debit_balance).toFixed(2)}</p>
            </div>
            <div>    
                <h5>Net profit if exercised</h5>
                <p>${parseFloat(ccw.net_profit_if_exercised).toFixed(2)}</p>
            </div>
            <div>    
                <h5>Return if exercised</h5>
                <p>{((ccw.return_if_exercised) * 100).toFixed(2)}%</p>
            </div>
            <div>    
                <h5>Net profit if unchanged</h5>
                <p>${parseFloat(ccw.net_profit_if_unchanged).toFixed(2)}</p>
            </div>
            <div>
                <h5>Return if unchanged</h5>
                <p>{((ccw.return_if_unchanged) * 100).toFixed(2)}%</p>
            </div>
            <div>    
                <h5>Downside break-even</h5>
                <p>${parseFloat(ccw.downside_break_even).toFixed(2)}</p>
            </div>
            <div>    
                <h5>Downside protection</h5>
                <p>{((ccw.percent_downside_protection) * 100).toFixed(2)}%</p>
            </div>
        </div>
    );
}
