-- Mock schema for public discussion only.
-- This table tracks watch/observation state, not trading advice.

CREATE TABLE IF NOT EXISTS watch_positions (
    trade_date TEXT NOT NULL,
    symbol TEXT NOT NULL,
    name TEXT,
    strategy_id TEXT NOT NULL,
    watch_start_time TEXT,
    entry_condition TEXT,
    entry_triggered INTEGER DEFAULT 0,
    watch_status TEXT DEFAULT 'active',
    exit_reason TEXT,
    review_note TEXT,
    updated_at TEXT DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (trade_date, symbol, strategy_id)
);

CREATE INDEX IF NOT EXISTS idx_watch_positions_date
ON watch_positions (trade_date);

CREATE INDEX IF NOT EXISTS idx_watch_positions_status
ON watch_positions (watch_status);

