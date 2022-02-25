# CSE 216 Term Project : Fantasy Premier League

How to run at your end

## 0. Prerequisite - Used Softwares

- Oracle 19c Database (WINDOWS.X64_193000)

- node v16.13.0

- npm v8.3.0

- 

## 1. Git Clone

Clone the Git repository locally

```
git clone https://github.com/MJKSabit/FantasyPremierLeague.git
```

## 2. Set Up Database

### Create User/Database

Log in to SQL Plus with sysdba

```
create user c##fpl identified by password;
grant dba to c##fpl;
```

### Restore SQL Dump

Using Navicat, import sql dump from `sql/c##fpl_dump.sql` to `c##fpl` database

## 3. Dependency

### FrontEnd

Open Terminal at `./frontend` and run `npm install`

### BackEnd

Open Terminal at `./backend` and run `npm install`

Create `.env` file at `./backend`

```
DB_USER=C##FPL
DB_PASSWORD=password
DB_CONNECTION_STRING=localhost/orcl
PORT=8080
JWT_SECRET_KEY=i-do-not-care-what-the-key-is
```

## Running

### Backend

Open Terminal at `./backend` and run `npm start`

### Frontend

Open Terminal at `./frontend` and run `npm start`
