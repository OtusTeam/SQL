-- Вставка данных в таблицу Landmarks
INSERT INTO Landmarks (Name, Location, Boundary)
VALUES
('Эйфелева Башня', geometry::STGeomFromText('POINT(2.2943506 48.8588443)', 4326), geometry::STGeomFromText('POLYGON((2.2940 48.8586, 2.2950 48.8586, 2.2950 48.8590, 2.2940 48.8590, 2.2940 48.8586))', 4326)),
('Лувр', geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('POLYGON((2.3376 48.8606, 2.3387 48.8606, 2.3387 48.8599, 2.3376 48.8599, 2.3376 48.8606))', 4326)),
('Собор Парижской Богоматери', geometry::STGeomFromText('POINT(2.3499 48.8529)', 4326), NULL),
('Триумфальная Арка', geometry::STGeomFromText('POINT(2.2950 48.8738)', 4326), NULL),
('Мулен Руж', geometry::STGeomFromText('POINT(2.3322 48.8841)', 4326), NULL),
('Опера Гарнье', geometry::STGeomFromText('POINT(2.3319 48.8704)', 4326), NULL),
('Башня Монпарнас', geometry::STGeomFromText('POINT(2.3212 48.8422)', 4326), NULL),
('Музей Орсе', geometry::STGeomFromText('POINT(2.3266 48.8599)', 4326), NULL),
('Площадь Конкорд', geometry::STGeomFromText('POINT(2.3215 48.8656)', 4326), NULL),
('Дворец Версаль', geometry::STGeomFromText('POINT(2.1204 48.8049)', 4326), NULL),
('Базилика Сакре-Кёр', geometry::STGeomFromText('POINT(2.3431 48.8867)', 4326), NULL),
('Бульвар Сен-Жермен', geometry::STGeomFromText('POINT(2.3405 48.8531)', 4326), NULL),
('Центр Помпиду', geometry::STGeomFromText('POINT(2.3522 48.8606)', 4326), NULL),
('Дом Инвалидов', geometry::STGeomFromText('POINT(2.3122 48.8566)', 4326), NULL),
('Музей Родена', geometry::STGeomFromText('POINT(2.3162 48.8555)', 4326), NULL),
('Музей Пикассо', geometry::STGeomFromText('POINT(2.3617 48.8594)', 4326), NULL),
('Пантеон', geometry::STGeomFromText('POINT(2.3464 48.8462)', 4326), NULL),
('Библиотека Франсуа Миттерана', geometry::STGeomFromText('POINT(2.3767 48.8336)', 4326), NULL),
('Сен-Шапель', geometry::STGeomFromText('POINT(2.3445 48.8550)', 4326), NULL),
('Парк Монсо', geometry::STGeomFromText('POINT(2.3086 48.8792)', 4326), NULL);


-- Вставка данных в таблицу Routes
INSERT INTO Routes (StartLocation, EndLocation, Route)
VALUES
(geometry::STGeomFromText('POINT(2.2943506 48.8588443)', 4326), geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('LINESTRING(2.2943506 48.8588443, 2.337644 48.860611)', 4326)),
(geometry::STGeomFromText('POINT(2.2943506 48.8588443)', 4326), geometry::STGeomFromText('POINT(2.3499 48.8529)', 4326), geometry::STGeomFromText('LINESTRING(2.2943506 48.8588443, 2.3499 48.8529)', 4326)),
(geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('POINT(2.2950 48.8738)', 4326), geometry::STGeomFromText('LINESTRING(2.337644 48.860611, 2.2950 48.8738)', 4326)),
(geometry::STGeomFromText('POINT(2.3499 48.8529)', 4326), geometry::STGeomFromText('POINT(2.3322 48.8841)', 4326), geometry::STGeomFromText('LINESTRING(2.3499 48.8529, 2.3322 48.8841)', 4326)),
(geometry::STGeomFromText('POINT(2.2950 48.8738)', 4326), geometry::STGeomFromText('POINT(2.3212 48.8422)', 4326), geometry::STGeomFromText('LINESTRING(2.2950 48.8738, 2.3212 48.8422)', 4326)),
(geometry::STGeomFromText('POINT(2.3322 48.8841)', 4326), geometry::STGeomFromText('POINT(2.3266 48.8599)', 4326), geometry::STGeomFromText('LINESTRING(2.3322 48.8841, 2.3266 48.8599)', 4326)),
(geometry::STGeomFromText('POINT(2.3212 48.8422)', 4326), geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('LINESTRING(2.3212 48.8422, 2.337644 48.860611)', 4326)),
(geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('POINT(2.3215 48.8656)', 4326), geometry::STGeomFromText('LINESTRING(2.337644 48.860611, 2.3215 48.8656)', 4326)),
(geometry::STGeomFromText('POINT(2.3215 48.8656)', 4326), geometry::STGeomFromText('POINT(2.1204 48.8049)', 4326), geometry::STGeomFromText('LINESTRING(2.3215 48.8656, 2.1204 48.8049)', 4326)),
(geometry::STGeomFromText('POINT(2.1204 48.8049)', 4326), geometry::STGeomFromText('POINT(2.3499 48.8529)', 4326), geometry::STGeomFromText('LINESTRING(2.1204 48.8049, 2.3499 48.8529)', 4326)),
(geometry::STGeomFromText('POINT(2.3431 48.8867)', 4326), geometry::STGeomFromText('POINT(2.2943506 48.8588443)', 4326), geometry::STGeomFromText('LINESTRING(2.3431 48.8867, 2.2943506 48.8588443)', 4326)),
(geometry::STGeomFromText('POINT(2.3499 48.8529)', 4326), geometry::STGeomFromText('POINT(2.3215 48.8656)', 4326), geometry::STGeomFromText('LINESTRING(2.3499 48.8529, 2.3215 48.8656)', 4326)),
(geometry::STGeomFromText('POINT(2.3215 48.8656)', 4326), geometry::STGeomFromText('POINT(2.3431 48.8867)', 4326), geometry::STGeomFromText('LINESTRING(2.3215 48.8656, 2.3431 48.8867)', 4326)),
(geometry::STGeomFromText('POINT(2.1204 48.8049)', 4326), geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('LINESTRING(2.1204 48.8049, 2.337644 48.860611)', 4326)),
(geometry::STGeomFromText('POINT(2.3215 48.8656)', 4326), geometry::STGeomFromText('POINT(2.2950 48.8738)', 4326), geometry::STGeomFromText('LINESTRING(2.3215 48.8656, 2.2950 48.8738)', 4326)),
(geometry::STGeomFromText('POINT(2.2950 48.8738)', 4326), geometry::STGeomFromText('POINT(2.3499 48.8529)', 4326), geometry::STGeomFromText('LINESTRING(2.2950 48.8738, 2.3499 48.8529)', 4326)),
(geometry::STGeomFromText('POINT(2.3499 48.8529)', 4326), geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('LINESTRING(2.3499 48.8529, 2.337644 48.860611)', 4326)),
(geometry::STGeomFromText('POINT(2.337644 48.860611)', 4326), geometry::STGeomFromText('POINT(2.3431 48.8867)', 4326), geometry::STGeomFromText('LINESTRING(2.337644 48.860611, 2.3431 48.8867)', 4326)),
(geometry::STGeomFromText('POINT(2.3431 48.8867)', 4326), geometry::STGeomFromText('POINT(2.3322 48.8841)', 4326), geometry::STGeomFromText('LINESTRING(2.3431 48.8867, 2.3322 48.8841)', 4326)),
(geometry::STGeomFromText('POINT(2.3215 48.8656)', 4326), geometry::STGeomFromText('POINT(2.2943506 48.8588443)', 4326), geometry::STGeomFromText('LINESTRING(2.3215 48.8656, 2.2943506 48.8588443)', 4326));
