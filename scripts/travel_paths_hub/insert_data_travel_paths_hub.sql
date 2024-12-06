-- Вставка данных в таблицу landmarks
INSERT INTO landmarks (name, location, boundary)
VALUES
('Эйфелева башня', ST_SetSRID(ST_MakePoint(2.2943506, 48.8588443), 4326), ST_SetSRID(ST_GeomFromText('POLYGON((2.2940 48.8586, 2.2950 48.8586, 2.2950 48.8590, 2.2940 48.8590, 2.2940 48.8586))'), 4326)),
('Лувр', ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_GeomFromText('POLYGON((2.3376 48.8606, 2.3387 48.8606, 2.3387 48.8599, 2.3376 48.8599, 2.3376 48.8606))'), 4326)),
('Собор Парижской Богоматери', ST_SetSRID(ST_MakePoint(2.3499, 48.8529), 4326), NULL),
('Триумфальная арка', ST_SetSRID(ST_MakePoint(2.2950, 48.8738), 4326), NULL),
('Мулен Руж', ST_SetSRID(ST_MakePoint(2.3322, 48.8841), 4326), NULL),
('Опера Гарнье', ST_SetSRID(ST_MakePoint(2.3319, 48.8704), 4326), NULL),
('Башня Монпарнас', ST_SetSRID(ST_MakePoint(2.3212, 48.8422), 4326), NULL),
('Музей Орсе', ST_SetSRID(ST_MakePoint(2.3266, 48.8599), 4326), NULL),
('Площадь Конкорд', ST_SetSRID(ST_MakePoint(2.3215, 48.8656), 4326), NULL),
('Дворец Версаль', ST_SetSRID(ST_MakePoint(2.1204, 48.8049), 4326), NULL),
('Базилика Сакре-Кёр', ST_SetSRID(ST_MakePoint(2.3431, 48.8867), 4326), NULL),
('Бульвар Сен-Жермен', ST_SetSRID(ST_MakePoint(2.3405, 48.8531), 4326), NULL),
('Центр Помпиду', ST_SetSRID(ST_MakePoint(2.3522, 48.8606), 4326), NULL),
('Дом инвалидов', ST_SetSRID(ST_MakePoint(2.3122, 48.8566), 4326), NULL),
('Музей Родена', ST_SetSRID(ST_MakePoint(2.3162, 48.8555), 4326), NULL),
('Музей Пикассо', ST_SetSRID(ST_MakePoint(2.3617, 48.8594), 4326), NULL),
('Пантеон', ST_SetSRID(ST_MakePoint(2.3464, 48.8462), 4326), NULL),
('Библиотека Франсуа Миттерана', ST_SetSRID(ST_MakePoint(2.3767, 48.8336), 4326), NULL),
('Сен-Шапель', ST_SetSRID(ST_MakePoint(2.3445, 48.8550), 4326), NULL),
('Парк Монсо', ST_SetSRID(ST_MakePoint(2.3086, 48.8792), 4326), NULL);

-- Вставка данных в таблицу routes
INSERT INTO routes (start_location, end_location, route)
VALUES
(ST_SetSRID(ST_MakePoint(2.2943506, 48.8588443), 4326), ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.2943506, 48.8588443), ST_MakePoint(2.337644, 48.860611)), 4326)),
(ST_SetSRID(ST_MakePoint(2.2943506, 48.8588443), 4326), ST_SetSRID(ST_MakePoint(2.3499, 48.8529), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.2943506, 48.8588443), ST_MakePoint(2.3499, 48.8529)), 4326)),
(ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_MakePoint(2.2950, 48.8738), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.337644, 48.860611), ST_MakePoint(2.2950, 48.8738)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3499, 48.8529), 4326), ST_SetSRID(ST_MakePoint(2.3322, 48.8841), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3499, 48.8529), ST_MakePoint(2.3322, 48.8841)), 4326)),
(ST_SetSRID(ST_MakePoint(2.2950, 48.8738), 4326), ST_SetSRID(ST_MakePoint(2.3212, 48.8422), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.2950, 48.8738), ST_MakePoint(2.3212, 48.8422)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3322, 48.8841), 4326), ST_SetSRID(ST_MakePoint(2.3266, 48.8599), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3322, 48.8841), ST_MakePoint(2.3266, 48.8599)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3212, 48.8422), 4326), ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3212, 48.8422), ST_MakePoint(2.337644, 48.860611)), 4326)),
(ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_MakePoint(2.3215, 48.8656), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.337644, 48.860611), ST_MakePoint(2.3215, 48.8656)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3215, 48.8656), 4326), ST_SetSRID(ST_MakePoint(2.1204, 48.8049), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3215, 48.8656), ST_MakePoint(2.1204, 48.8049)), 4326)),
(ST_SetSRID(ST_MakePoint(2.1204, 48.8049), 4326), ST_SetSRID(ST_MakePoint(2.3499, 48.8529), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.1204, 48.8049), ST_MakePoint(2.3499, 48.8529)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3431, 48.8867), 4326), ST_SetSRID(ST_MakePoint(2.2943506, 48.8588443), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3431, 48.8867), ST_MakePoint(2.2943506, 48.8588443)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3499, 48.8529), 4326), ST_SetSRID(ST_MakePoint(2.3215, 48.8656), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3499, 48.8529), ST_MakePoint(2.3215, 48.8656)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3215, 48.8656), 4326), ST_SetSRID(ST_MakePoint(2.3431, 48.8867), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3215, 48.8656), ST_MakePoint(2.3431, 48.8867)), 4326)),
(ST_SetSRID(ST_MakePoint(2.1204, 48.8049), 4326), ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.1204, 48.8049), ST_MakePoint(2.337644, 48.860611)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3215, 48.8656), 4326), ST_SetSRID(ST_MakePoint(2.2950, 48.8738), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3215, 48.8656), ST_MakePoint(2.2950, 48.8738)), 4326)),
(ST_SetSRID(ST_MakePoint(2.2950, 48.8738), 4326), ST_SetSRID(ST_MakePoint(2.3499, 48.8529), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.2950, 48.8738), ST_MakePoint(2.3499, 48.8529)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3499, 48.8529), 4326), ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3499, 48.8529), ST_MakePoint(2.337644, 48.860611)), 4326)),
(ST_SetSRID(ST_MakePoint(2.337644, 48.860611), 4326), ST_SetSRID(ST_MakePoint(2.3431, 48.8867), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.337644, 48.860611), ST_MakePoint(2.3431, 48.8867)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3431, 48.8867), 4326), ST_SetSRID(ST_MakePoint(2.3322, 48.8841), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3431, 48.8867), ST_MakePoint(2.3322, 48.8841)), 4326)),
(ST_SetSRID(ST_MakePoint(2.3215, 48.8656), 4326), ST_SetSRID(ST_MakePoint(2.2943506, 48.8588443), 4326), ST_SetSRID(ST_MakeLine(ST_MakePoint(2.3215, 48.8656), ST_MakePoint(2.2943506, 48.8588443)), 4326));