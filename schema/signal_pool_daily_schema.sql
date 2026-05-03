-- Mock schema for public discussion only.
-- This is not the private production schema.

CREATE TABLE IF NOT EXISTS signal_pool_daily (
    trade_date TEXT NOT NULL,
    signal_time TEXT NOT NULL,
    symbol TEXT NOT NULL,
    name TEXT,
    strategy_id TEXT NOT NULL,
    signal_source TEXT,
    trigger_reason TEXT,
    market_temperature TEXT,
    risk_tag TEXT,
    score REAL,
    status TEXT DEFAULT 'watch',
    created_at TEXT DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (trade_date, signal_time, symbol, strategy_id)
);

CREATE INDEX IF NOT EXISTS idx_signal_pool_daily_date
ON signal_pool_daily (trade_date);

CREATE INDEX IF NOT EXISTS idx_signal_pool_daily_strategy
ON signal_pool_daily (strategy_id);

