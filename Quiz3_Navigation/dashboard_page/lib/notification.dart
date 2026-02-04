import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  
  final List<Map<String, String>> notifications = [
    {
      "title": "New Sign in to your Universitas Prasetiya Mulya account",
      "icon": "light",
    },
    {
      "title": "Your assignment for AGILE PROJECT MANAGEMENT is due soon",
      "icon": "alarm",
    },
    {"title": "New message from Academic Administrations", "icon": "mail"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: notifications.length, 
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 16.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment
                  .start, 
              children: [
                Icon(Icons.notifications_active, color: Colors.black87),
                SizedBox(width: 15),

                
                Expanded(
                  child: Text(
                    notifications[index]["title"]!,
                    style: TextStyle(fontSize: 14),
                  ),
                ),

                SizedBox(width: 10),
                Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          );
        },
      ),
    );
  }
}
