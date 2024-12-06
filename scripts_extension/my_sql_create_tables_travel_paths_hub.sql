-- Создание таблицы для достопримечательностей (landmarks)
CREATE TABLE landmarks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location POINT NOT NULL,  -- Тип данных для точки
    boundary POLYGON          -- Тип данных для полигона
);

-- Создание таблицы для маршрутов (routes)
CREATE TABLE routes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_location POINT NOT NULL,  -- Тип данных для точки начала маршрута
    end_location POINT NOT NULL,    -- Тип данных для точки конца маршрута
    route LINESTRING NOT NULL       -- Тип данных для линии маршрута
);
