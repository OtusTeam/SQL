-- Вставка данных в таблицу landmarks
INSERT INTO landmarks (name, location, boundary)
VALUES
('Эйфелева башня', ST_GeomFromText('POINT(2.2943506 48.8588443)'), ST_GeomFromText('POLYGON((2.2940 48.8586, 2.2950 48.8586, 2.2950 48.8590, 2.2940 48.8590, 2.2940 48.8586))')),
('Лувр', ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('POLYGON((2.3376 48.8606, 2.3387 48.8606, 2.3387 48.8599, 2.3376 48.8599, 2.3376 48.8606))')),
('Собор Парижской Богоматери', ST_GeomFromText('POINT(2.3499 48.8529)'), NULL),
('Триумфальная арка', ST_GeomFromText('POINT(2.2950 48.8738)'), NULL),
('Мулен Руж', ST_GeomFromText('POINT(2.3322 48.8841)'), NULL),
('Опера Гарнье', ST_GeomFromText('POINT(2.3319 48.8704)'), NULL),
('Башня Монпарнас', ST_GeomFromText('POINT(2.3212 48.8422)'), NULL),
('Музей Орсе', ST_GeomFromText('POINT(2.3266 48.8599)'), NULL),
('Площадь Конкорд', ST_GeomFromText('POINT(2.3215 48.8656)'), NULL),
('Дворец Версаль', ST_GeomFromText('POINT(2.1204 48.8049)'), NULL),
('Базилика Сакре-Кёр', ST_GeomFromText('POINT(2.3431 48.8867)'), NULL),
('Бульвар Сен-Жермен', ST_GeomFromText('POINT(2.3405 48.8531)'), NULL),
('Центр Помпиду', ST_GeomFromText('POINT(2.3522 48.8606)'), NULL),
('Дом инвалидов', ST_GeomFromText('POINT(2.3122 48.8566)'), NULL),
('Музей Родена', ST_GeomFromText('POINT(2.3162 48.8555)'), NULL),
('Музей Пикассо', ST_GeomFromText('POINT(2.3617 48.8594)'), NULL),
('Пантеон', ST_GeomFromText('POINT(2.3464 48.8462)'), NULL),
('Библиотека Франсуа Миттерана', ST_GeomFromText('POINT(2.3767 48.8336)'), NULL),
('Сен-Шапель', ST_GeomFromText('POINT(2.3445 48.8550)'), NULL),
('Парк Монсо', ST_GeomFromText('POINT(2.3086 48.8792)'), NULL);

-- Вставка данных в таблицу routes
INSERT INTO routes (start_location, end_location, route)
VALUES
(ST_GeomFromText('POINT(2.2943506 48.8588443)'), ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('LINESTRING(2.2943506 48.8588443, 2.337644 48.860611)')),
(ST_GeomFromText('POINT(2.2943506 48.8588443)'), ST_GeomFromText('POINT(2.3499 48.8529)'), ST_GeomFromText('LINESTRING(2.2943506 48.8588443, 2.3499 48.8529)')),
(ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('POINT(2.2950 48.8738)'), ST_GeomFromText('LINESTRING(2.337644 48.860611, 2.2950 48.8738)')),
(ST_GeomFromText('POINT(2.3499 48.8529)'), ST_GeomFromText('POINT(2.3322 48.8841)'), ST_GeomFromText('LINESTRING(2.3499 48.8529, 2.3322 48.8841)')),
(ST_GeomFromText('POINT(2.2950 48.8738)'), ST_GeomFromText('POINT(2.3212 48.8422)'), ST_GeomFromText('LINESTRING(2.2950 48.8738, 2.3212 48.8422)')),
(ST_GeomFromText('POINT(2.3322 48.8841)'), ST_GeomFromText('POINT(2.3266 48.8599)'), ST_GeomFromText('LINESTRING(2.3322 48.8841, 2.3266 48.8599)')),
(ST_GeomFromText('POINT(2.3212 48.8422)'), ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('LINESTRING(2.3212 48.8422, 2.337644 48.860611)')),
(ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('POINT(2.3215 48.8656)'), ST_GeomFromText('LINESTRING(2.337644 48.860611, 2.3215 48.8656)')),
(ST_GeomFromText('POINT(2.3215 48.8656)'), ST_GeomFromText('POINT(2.1204 48.8049)'), ST_GeomFromText('LINESTRING(2.3215 48.8656, 2.1204 48.8049)')),
(ST_GeomFromText('POINT(2.1204 48.8049)'), ST_GeomFromText('POINT(2.3499 48.8529)'), ST_GeomFromText('LINESTRING(2.1204 48.8049, 2.3499 48.8529)')),
(ST_GeomFromText('POINT(2.3431 48.8867)'), ST_GeomFromText('POINT(2.2943506 48.8588443)'), ST_GeomFromText('LINESTRING(2.3431 48.8867, 2.2943506 48.8588443)')),
(ST_GeomFromText('POINT(2.3499 48.8529)'), ST_GeomFromText('POINT(2.3215 48.8656)'), ST_GeomFromText('LINESTRING(2.3499 48.8529, 2.3215 48.8656)')),
(ST_GeomFromText('POINT(2.3215 48.8656)'), ST_GeomFromText('POINT(2.3431 48.8867)'), ST_GeomFromText('LINESTRING(2.3215 48.8656, 2.3431 48.8867)')),
(ST_GeomFromText('POINT(2.1204 48.8049)'), ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('LINESTRING(2.1204 48.8049, 2.337644 48.860611)')),
(ST_GeomFromText('POINT(2.3215 48.8656)'), ST_GeomFromText('POINT(2.2950 48.8738)'), ST_GeomFromText('LINESTRING(2.3215 48.8656, 2.2950 48.8738)')),
(ST_GeomFromText('POINT(2.2950 48.8738)'), ST_GeomFromText('POINT(2.3499 48.8529)'), ST_GeomFromText('LINESTRING(2.2950 48.8738, 2.3499 48.8529)')),
(ST_GeomFromText('POINT(2.3499 48.8529)'), ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('LINESTRING(2.3499 48.8529, 2.337644 48.860611)')),
(ST_GeomFromText('POINT(2.337644 48.860611)'), ST_GeomFromText('POINT(2.3431 48.8867)'), ST_GeomFromText('LINESTRING(2.337644 48.860611, 2.3431 48.8867)')),
(ST_GeomFromText('POINT(2.3431 48.8867)'), ST_GeomFromText('POINT(2.3322 48.8841)'), ST_GeomFromText('LINESTRING(2.3431 48.8867, 2.3322 48.8841)')),
(ST_GeomFromText('POINT(2.3215 48.8656)'), ST_GeomFromText('POINT(2.2943506 48.8588443)'), ST_GeomFromText('LINESTRING(2.3215 48.8656, 2.2943506 48.8588443)'));
