import 'package:flutter/material.dart';
import 'chatkelas.dart'; // Import UI/UX group chat screen
import 'chatkelbelajar.dart'; // Import UI-UX RESEARCH AND S... chat screen

class ChatUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.chat,
                  size: 40,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Room Chat',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            top: 57,
            left: 20,
            right: 20,
            child: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Pesan',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Add desired action when search button is pressed
                  },
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            bottom: 0,
            child: MessagesScreen(),
          ),
        ],
      ),
    );
  }
}

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> messages = [
    {
      'name': 'Darlene Steward',
      'message': 'Pls take a look at the images.',
      'time': '18.31',
      'unreadCount': '5'
    },
    {
      'name': 'Jonas Wolfhard',
      'message': 'Typing...',
      'time': '19.35',
      'unreadCount': '0'
    },
    {
      'name': 'UI-UX RESEARCH AND S...',
      'message': 'Fateh: Desainnya keren banget, ya!',
      'time': '20.00',
      'unreadCount': '0'
    },
    {
      'name': 'UI/UX group',
      'message': 'Fateh: Desainnya keren banget, ya!',
      'time': '20.00',
      'unreadCount': '0'
    },
    {
      'name': 'Jane Cooper',
      'message': 'UI/UX Basics.pdf',
      'time': 'yesterday',
      'unreadCount': '0'
    },
  ];
  late List<Map<String, String>> filteredMessages;
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    filteredMessages = messages;
    _searchController.addListener(() {
      filterMessages();
    });
  }

  void filterMessages() {
    List<Map<String, String>> tempMessages = [];
    tempMessages.addAll(messages);
    if (_searchController.text.isNotEmpty) {
      tempMessages.retainWhere((message) {
        String searchTerm = _searchController.text.toLowerCase();
        String messageName = message['name']!.toLowerCase();
        return messageName.contains(searchTerm);
      });
    }
    setState(() {
      filteredMessages = tempMessages;
    });
  }

  void toggleSearch() {
    setState(() {
      isSearching = !isSearching;
      if (!isSearching) {
        _searchController.clear();
      }
    });
  }

  void navigateToChatScreen(BuildContext context, String groupName) {
    if (groupName == 'UI/UX group') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatKelBelajar(groupName: groupName),
        ),
      );
    } else if (groupName == 'UI-UX RESEARCH AND S...') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatKelas(groupName: groupName),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Cari pesan...',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
              ),
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: filteredMessages.length,
              itemBuilder: (context, index) {
                var message = filteredMessages[index];
                return GestureDetector(
                  onTap: () {
                    if (message['name'] == 'UI/UX group' ||
                        message['name'] == 'UI-UX RESEARCH AND S...') {
                      navigateToChatScreen(context, message['name']!);
                    }
                  },
                  child: buildMessageTile(
                    message['name']!,
                    message['message']!,
                    message['time']!,
                    int.parse(message['unreadCount']!),
                    isTyping: message['message'] == 'Typing...',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMessageTile(
      String name, String message, String time, int unreadCount,
      {bool isTyping = false}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Text(name[0]),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(isTyping ? 'Typing...' : message),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(time, style: TextStyle(fontSize: 12, color: Colors.grey)),
          if (unreadCount > 0)
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.blue,
              child: Text(
                unreadCount.toString(),
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
        ],
      ),
    );
  }
}
