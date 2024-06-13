import 'package:flutter/material.dart';

class ProfileKelBelajar extends StatelessWidget {
  final List<Map<String, String>> members = [
    {'name': 'Jane Cooper', 'avatar': 'assets/images/jane_cooper.png'},
    {'name': 'Jerome Bell', 'avatar': 'assets/images/jerome_bell.png'},
    {'name': 'Cody Fisher', 'avatar': 'assets/images/cody_fisher.png'},
    {'name': 'Yovita Miles', 'avatar': 'assets/images/yovita_miles.png'},
    {'name': 'Eleanor Pena', 'avatar': 'assets/images/eleanor_pena.png'},
    {'name': 'Esther Howard', 'avatar': 'assets/images/esther_howard.png'},
    {'name': 'Theresa Webb', 'avatar': 'assets/images/theresa_web.png'},
    {'name': 'Robert Fox', 'avatar': 'assets/images/robert_fox.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Group Info'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/images/uiux_group.png'),
                ),
                SizedBox(height: 16.0),
                Text(
                  'UI/UX Group\'s',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '19 Orang',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Foto dan Video',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Handle tap
            },
          ),
          Divider(),
          ListTile(
            title: Text(
              '19 Orang',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                var member = members[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(member['avatar']!),
                  ),
                  title: Text(
                    member['name']!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
