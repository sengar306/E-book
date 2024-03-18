<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Book</title>
</head>
<body>
<div style="width: 50%; margin: 50px auto; background-color: #fff; padding: 20px; border-radius: 5px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);">
  <h2 style="text-align: center;">Add New Book</h2>
  <form action="AddBook" method="post">
    <label style="display: block; margin-bottom: 10px;">Book Name:</label>
    <input type="text" id="bookName" name="bookName" style="width: 100%; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required><br>

    <label style="display: block; margin-bottom: 10px;">Author:</label>
    <input type="text" id="author" name="author" style="width: 100%; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required><br>

    <label style="display: block; margin-bottom: 10px;">Price:</label>
    <input type="number" id="bookPrice" name="bookPrice" style="width: 100%; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required><br>

    <label style="display: block; margin-bottom: 10px;">Image URL:</label>
    <input type="text" id="imageUrl" name="imageUrl" style="width: 100%; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required><br>

    <label style="display: block; margin-bottom: 10px;">Description:</label><br>
    <textarea id="bookDescription" name="bookDescription" style="width: 100%; padding: 10px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px; box-sizing: border-box;" required></textarea><br>

    <input type="submit" value="Add Book" style="width: 100%; padding: 10px; background-color: #007bff; color: #fff; border: none; border-radius: 5px; cursor: pointer; transition: background-color 0.3s ease;">
  </form>
</div>
</body>
</html>
