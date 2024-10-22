-- Active: 1729588853546@@127.0.0.1@3306@app
CREATE DATABASE IF NOT EXISTS app;

USE app;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID tự động tăng
    username VARCHAR(50) NOT NULL UNIQUE, -- Tên đăng nhập, không được trùng lặp
    password VARCHAR(255) NOT NULL, -- Mật khẩu, có thể mã hóa
    email VARCHAR(100) NOT NULL UNIQUE, -- Địa chỉ email, không được trùng lặp
    first_name VARCHAR(50), -- Tên
    last_name VARCHAR(50), -- Họ
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Thời gian tạo tài khoản
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP -- Thời gian cập nhật tài khoản
);

INSERT INTO
    user (
        username,
        password,
        email,
        first_name,
        last_name
    )
VALUES (
        'user17',
        'password1',
        'user17@example.com',
        'John',
        'Doe'
    )