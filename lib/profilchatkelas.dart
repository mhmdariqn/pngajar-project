import 'package:flutter/material.dart';
import 'chatmentor.dart';

class ProfilChatKelas extends StatelessWidget {
  final List<Map<String, String>> members = [
    {'name': 'Jane Cooper', 'avatar': 'assets/images/jane_cooper.png', 'role': 'Mentor'},
    {'name': 'Jerome Bell', 'avatar': 'assets/images/jerome_bell.png'},
    {'name': 'Cody Fisher', 'avatar': 'assets/images/cody_fisher.png'},
    {'name': 'Yovita Miles', 'avatar': 'assets/images/yovita_miles.png'},
    {'name': 'Eleanor Pena', 'avatar': 'assets/images/eleanor_pena.png'},
    {'name': 'Esther Howard', 'avatar': 'assets/images/esther_howard.png'},
    {'name': 'Theresa Webb', 'avatar': 'assets/images/theresa_webb.png'},
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
        title: Text('Info Grup'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            ListTile(
              title: Text(
                'Materi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Handle tap
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  MaterialCard(title: 'User Flow & Wireframing.pdf', imageUrl: 'assets/images/user_flow.png'),
                  MaterialCard(title: 'UX Design, Research & Writing.pdf', imageUrl: 'assets/images/ux_design.png'),
                  MaterialCard(title: 'Prototyping.docx', imageUrl: 'assets/images/figma.png'),
                ],
              ),
            ),
            ListTile(
              title: Text(
                '19 Orang',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
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
                  subtitle: member['role'] != null ? Text(member['role']!) : null,
                  trailing: member['role'] != null ? Icon(Icons.arrow_forward_ios) : null,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatMentor(
                          mentorName: member['name']!,
                          mentorImage: member['avatar']!,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MaterialCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  MaterialCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(imageUrl, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
