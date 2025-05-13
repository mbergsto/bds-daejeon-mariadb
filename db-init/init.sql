CREATE TABLE IF NOT EXISTS scrape_runs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    run_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    latest_game_date DATE
);

CREATE TABLE IF NOT EXISTS game_metadata (
    id INT AUTO_INCREMENT PRIMARY KEY,
    game_id VARCHAR(255) NOT NULL UNIQUE,
    game_date DATE NOT NULL,
    scrape_run_id INT,
    FOREIGN KEY (scrape_run_id) REFERENCES scrape_runs(id)
);
