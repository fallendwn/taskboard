
PRAGMA foreign_keys = ON;


CREATE TABLE IF NOT EXISTS user(

    user_id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name VARCHAR(32) NOT NULL,
    login VARCHAR(32) NOT NULL UNIQUE,
    password VARCHAR(32) NOT NULL

);

CREATE TABLE IF NOT EXISTS board(

    board_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    board_name VARCHAR(32) NOT NULL,
    FOREIGN KEY(user_id) REFERENCES user(user_id)
    ON DELETE CASCADE

);

CREATE TABLE IF NOT EXISTS subboard(

    subboard_id INTEGER PRIMARY KEY AUTOINCREMENT,
    board_id INTEGER,
    subboard_name VARCHAR(32),
    FOREIGN KEY(board_id) REFERENCES board(board_id)
    ON DELETE CASCADE

);

CREATE TABLE IF NOT EXISTS note(

    note_id INTEGER PRIMARY KEY AUTOINCREMENT,
    subboard_id INTEGER,
    note_name VARCHAR(32) NOT NULL,
    note_text text,
    FOREIGN KEY(subboard_id) REFERENCES subboard(subboard_id)
    ON DELETE CASCADE

);

-- INSERT INTO user(name,login,password) VALUES("asd", "test", "test");

SELECT * FROM user;