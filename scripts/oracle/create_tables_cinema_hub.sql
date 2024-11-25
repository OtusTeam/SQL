-- Создание пользователя с полными правами
CREATE USER CINEMA_HUB IDENTIFIED BY your_password;

-- Предоставление роли DBA для полного доступа
GRANT DBA TO CINEMA_HUB;

-- Установка квоты на таблицы для пользователя CINEMA_HUB
ALTER USER CINEMA_HUB QUOTA UNLIMITED ON USERS;

-- Переключаемся на схему CINEMA_HUB
ALTER SESSION SET CURRENT_SCHEMA = CINEMA_HUB;


-- Выполнение скрипта для создания таблиц
CREATE TABLE MOVIES (
    MOVIE_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    TITLE VARCHAR2(255) NOT NULL,
    RELEASE_YEAR NUMBER,
    GENRE VARCHAR2(100),
    RATING NUMBER(2,1),
    DURATION NUMBER,
    DESCRIPTION CLOB,  -- Используем CLOB для хранения текстового описания
    ADDITIONAL_INFO JSON  -- Используем JSON для хранения JSON данных
);

CREATE TABLE CUSTOMERS (
    CUSTOMER_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    FIRST_NAME VARCHAR2(100),
    LAST_NAME VARCHAR2(100),
    EMAIL VARCHAR2(255),
    PHONE_NUMBER VARCHAR2(20),
    ADDRESS VARCHAR2(255),
    REGISTRATION_DATE DATE,
    PREFERENCES JSON  -- Используем JSON для хранения предпочтений
);

CREATE TABLE RENTALS (
    RENTAL_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    CUSTOMER_ID NUMBER REFERENCES CUSTOMERS(CUSTOMER_ID),
    MOVIE_ID NUMBER REFERENCES MOVIES(MOVIE_ID),
    RENTAL_DATE DATE,
    RETURN_DATE DATE
);

CREATE TABLE ACTORS (
    ACTOR_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    FIRST_NAME VARCHAR2(100),
    LAST_NAME VARCHAR2(100),
    BIRTH_DATE DATE,
    NATIONALITY VARCHAR2(100)
);

CREATE TABLE MOVIE_ACTORS (
    MOVIE_ACTOR_ID NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    MOVIE_ID NUMBER REFERENCES MOVIES(MOVIE_ID) NOT NULL,
    ACTOR_ID NUMBER REFERENCES ACTORS(ACTOR_ID) NOT NULL
);