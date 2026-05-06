# 📱 Flutter API Integration App

## 📌 Overview

This project demonstrates how to integrate RESTful APIs in Flutter. The app fetches user data from a public API, parses JSON, and displays it using a **ListView with ListTile UI**.

---

## 🎯 Learning Objectives

* Understand how to fetch data from RESTful APIs
* Parse JSON data into Dart models
* Display dynamic data using ListView
* Handle loading and error states in UI

---

## 🚀 Features

* ✅ Fetch data from REST API
* ✅ JSON parsing into model class
* ✅ Display users using ListView.builder
* ✅ Clean UI using ListTile
* ✅ Loading indicator (CircularProgressIndicator)
* ✅ Error handling for failed API calls
* ✅ Navigation to user profile screen

---

## 🛠️ Technologies Used

* Flutter
* Dart
* HTTP package

---

## 🌐 API Used

* https://jsonplaceholder.typicode.com/users

---

## 📂 Project Structure

```
lib/
 ├── main.dart
 ├── models/
 │    └── user_model.dart
 ├── services/
 │    └── api_service.dart
 ├── screens/
 │    ├── user_list_screen.dart
 │    └── user_profile_screen.dart
```

---

## 📸 Screens

* User List Screen (ListView)
* User Profile Screen

---

## 📦 Dependencies

```
http: ^1.2.0
```

---

## ❗ Error Handling

* Displays error message if API fails
* Uses try-catch and HTTP status codes
* Shows fallback UI for failures

---

## ⏳ Loading State

* CircularProgressIndicator is shown while data is being fetched
