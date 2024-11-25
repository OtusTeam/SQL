CREATE TABLE Movies (
    MovieId INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    ReleaseYear INT,
    Genre VARCHAR(100),
    Rating DECIMAL(2,1),
    Duration INT,
    Description TEXT,
    AdditionalInfo NVARCHAR(MAX) -- Используем NVARCHAR(MAX) для хранения JSON данных
);

CREATE TABLE Customers (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(255),
    RegistrationDate DATE,
    Preferences NVARCHAR(MAX) -- Для хранения JSON данных
);

CREATE TABLE Rentals (
    RentalId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerId INT FOREIGN KEY REFERENCES Customers(CustomerId),
    MovieId INT FOREIGN KEY REFERENCES Movies(MovieId),
    RentalDate DATE,
    ReturnDate DATE
);

CREATE TABLE Actors (
    ActorId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    BirthDate DATE,
    Nationality VARCHAR(100)
);

CREATE TABLE MovieActors (
    MovieActorId INT IDENTITY(1,1) PRIMARY KEY,
    MovieId INT FOREIGN KEY REFERENCES Movies(MovieId) NOT NULL,
    ActorId INT FOREIGN KEY REFERENCES Actors(ActorId) NOT NULL
);
