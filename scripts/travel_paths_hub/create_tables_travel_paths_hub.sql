-- Создание расширения PostGIS
CREATE EXTENSION IF NOT EXISTS postgis;

-- Создание таблицы для достопримечательностей (landmarks)
CREATE TABLE landmarks (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location GEOMETRY(POINT, 4326) NOT NULL,
    boundary GEOMETRY(POLYGON, 4326)
);

-- Создание таблицы для маршрутов (routes)
CREATE TABLE routes (
    id SERIAL PRIMARY KEY,
    start_location GEOMETRY(POINT, 4326) NOT NULL,
    end_location GEOMETRY(POINT, 4326) NOT NULL,
    route GEOMETRY(LINESTRING, 4326) NOT NULL
);