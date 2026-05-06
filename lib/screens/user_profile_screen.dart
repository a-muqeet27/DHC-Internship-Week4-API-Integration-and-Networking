import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';

class UserProfileScreen extends StatefulWidget {
  final int userId;

  UserProfileScreen({required this.userId});

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  late Future<User> user;

  @override
  void initState() {
    super.initState();
    user = ApiService.fetchUser(widget.userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User Profile")),
      body: FutureBuilder<User>(
        future: user,
        builder: (context, snapshot) {

          // Loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          // Error
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          final user = snapshot.data!;

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Text(user.name[0]),
                ),
                SizedBox(height: 20),
                Text(user.name, style: TextStyle(fontSize: 20)),
                Text(user.email),
              ],
            ),
          );
        },
      ),
    );
  }
}