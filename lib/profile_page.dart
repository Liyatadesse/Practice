import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //  scrollDirection: Axis.horizontal,
      itemCount: 30,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('item${(index + 1)} '),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.select_all_rounded),
          onTap: () {
            debugPrint('clicked ');
          },
        );
        // ListTile(
        //   title: Text('item${(index + 1)} '),
        // );
      },
    );
  }
}
