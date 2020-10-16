DELETE FROM trackers.users;
ALTER TABLE trackers.users AUTO_INCREMENT = 1;
INSERT INTO trackers.users (id, name, surname, email, mobile, password) VALUES (null, 'Mario', 'Rossi','m.rossi@email.com', '3491239409', 'pizza');
INSERT INTO trackers.users (id, name, surname, email, mobile, password) VALUES (null, 'Luigi', 'Verdi', 'luigi@email.com', '3471145387', 'ciaomamma');
INSERT INTO trackers.users (id, name, surname, email, mobile, password) VALUES (null, 'Rosa', 'Bianchi', 'r@email.com', '3401123454', 'passowrd');
INSERT INTO trackers.users (id, name, surname, email, mobile, password) VALUES (null, 'Fabrizio', 'Giacomi', 'f.g@email.com', '3487651102', '1234');