import 'package:flutter/material.dart';

class ProfileSheet extends StatelessWidget {
  const ProfileSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Column(
        children: [
          SizedBox(height: 10),
          ListTile(
            leading: CircleAvatar(radius: 30),
            title: Text("User Name"),
            subtitle: Text("User Email"),
            trailing: Icon(Icons.navigate_next),
          ),
          SizedBox(height: 10),
          Divider(height: 20),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(height: 20),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(height: 20),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text("Settings"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(height: 20),
        ],
      ),
    );
  }
}
