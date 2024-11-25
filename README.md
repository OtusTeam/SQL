
# Репозиторий с домашними заданиями и скриптами для баз данных

Добро пожаловать в репозиторий, посвящённый обучению базам данных! Здесь вы найдёте домашние задания, описание проекта и скрипты для создания и наполнения баз данных в различных СУБД.

## Структура репозитория

- **`homework_description/`**  
  Папка с описанием домашних заданий.  

- **`project_description/`**  
  Папка с описанием проекта.  
    
- **`schemes/`**  
  Папка со схемами и описаниями баз данных.  

- **`scripts/`**  
  Папка со скриптами для создания и наполнения баз данных. В каждой папке вы найдёте:
  
  - **`create_tables_[database_name].sql`** — скрипт для создания таблиц базы данных.  
  - **`insert_data_[database_name].sql`** — скрипт для наполнения таблиц данными.  

  Скрипты разделены по используемым СУБД:  
  - **`postgresql/`** — скрипты для PostgreSQL.  
  - **`mssql/`** — скрипты для Microsoft SQL Server.  
  - **`oracle/`** — скрипты для Oracle Database.  
  - **`mysql/`** — скрипты для MySQL.  
  - **`sqlite/`** — скрипты для SQLite.  

---

# Инструкции по созданию контейнеров баз данных через Docker (Windows CMD)

## Oracle

**Команда для запуска контейнера:**
```cmd
docker run -d --name oracle_db -p 1521:1521 -e ORACLE_PASSWORD=oracle_password gvenzl/oracle-xe

```

**Информация для подключения:**
- **Пользователь:** `SYS` или `SYSTEM`
- **Пароль:** `oracle_password`
- **Порт:** `1521`
- **SID (имя базы данных):** `XE`

---

## PostgreSQL

**Команда для запуска контейнера:**
```cmd
docker run -d --name postgres_db -p 5432:5432 -e POSTGRES_PASSWORD=postgres_password postgres:latest
```

**Информация для подключения:**
- **Пользователь:** `postgres`
- **Пароль:** `postgres_password`
- **Порт:** `5432`
- **База данных:** `postgres` (по умолчанию)

---

## MS SQL Server

**Команда для запуска контейнера:**
```cmd
docker run -d --name mssql_db -p 1433:1433 -e ACCEPT_EULA=Y -e SA_PASSWORD=StrongPassword123 mcr.microsoft.com/mssql/server:latest
```

**Информация для подключения:**
- **Пользователь:** `SA`
- **Пароль:** `StrongPassword123`
- **Порт:** `1433`
- **База данных:** `master` (по умолчанию)

---

## MySQL

**Команда для запуска контейнера:**
```cmd
docker run -d --name mysql_db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root_password mysql:latest
```

**Информация для подключения:**
- **Пользователь:** `root`
- **Пароль:** `root_password`
- **Порт:** `3306`
- **База данных:** отсутствует по умолчанию

---

## SQLite

SQLite не требует отдельного сервера для работы, поэтому контейнеры не нужны. База данных хранится в виде файла.

**Команда для создания базы данных:**
1. Убедитесь, что SQLite установлен на вашем компьютере. Для проверки выполните:
   ```cmd
   sqlite3 --version
   ```
2. Для создания новой базы данных выполните команду:
   ```cmd
   sqlite3 database_name.db
   ```
   Эта команда создаст файл базы данных `database_name.db` и откроет консоль SQLite.

**Информация для подключения:**
- **Файл базы данных:** `database_name.db`
- **Пользователь:** SQLite не требует учётных записей для работы.
- **Пароль:** отсутствует.
- **Подключение:** Прямое подключение к файлу базы данных.