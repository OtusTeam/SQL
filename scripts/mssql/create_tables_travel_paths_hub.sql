-- Создание таблицы для достопримечательностей (Landmarks)
CREATE TABLE Landmarks (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Location GEOMETRY NOT NULL,  -- Тип данных для геометрии
    Boundary GEOMETRY NULL       -- Тип данных для геометрии (если нет границы, то NULL)
);

-- Создание таблицы для маршрутов (Routes)
CREATE TABLE Routes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    StartLocation GEOMETRY NOT NULL,  -- Тип данных для геометрии
    EndLocation GEOMETRY NOT NULL,    -- Тип данных для геометрии
    Route GEOMETRY NOT NULL            -- Тип данных для геометрии
);
