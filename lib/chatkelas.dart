import 'package:flutter/material.dart';
import 'package:pngajar/profilchatkelas.dart'; // Ensure this import is correct

class ChatKelas extends StatefulWidget {
  final String groupName;

  ChatKelas({required this.groupName});

  @override
  _ChatKelasState createState() => _ChatKelasState();
}

class _ChatKelasState extends State<ChatKelas> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [
    {
      'sender': 'Ana',
      'message': 'Hey guys! Aku lagi pusing nih sama tugas UI-UX. Ada yang bisa jelasin bedanya UI sama UX ga?',
      'time': '16.04',
      'isMe': 'false',
      'avatar': 'assets/ana.png',
    },
    {
      'sender': 'Budi',
      'message': 'Yo, Ana! Jadi gini, UI itu lebih ke tampilan visual, kayak warna, tombol, layout, gitu deh. Yang bikin aplikasi kelihatan kece.',
      'time': '16.04',
      'isMe': 'false',
      'avatar': 'assets/budi.png',
    },
    {
      'sender': 'Kamu',
      'message': 'Bener banget, Budi. UX itu lebih ke gimana user ngerasa pas pake aplikasi itu. Misalnya, gampang ga digunain, bikin happy atau malah nyebelin.',
      'time': '16.04',
      'isMe': 'true',
      'avatar': 'assets/kamu.png',
    },
    {
      'sender': 'Ana',
      'message': 'Ohh, gitu. Jadi UI tuh tampilan, UX tuh pengalaman keseluruhan, ya. Ada referensi atau bahan bacaan yang bagus ga?',
      'time': '17.49',
      'isMe': 'false',
      'avatar': 'assets/ana.png',
    },
    {
      'sender': 'Kamu',
      'message': 'Adaaa, sebentar yaa',
      'time': '16.04',
      'isMe': 'true',
      'avatar': 'assets/kamu.png',
    },
  ];

  void navigateToGroupInfo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilChatKelas()), // Ensure the class name is correct
    );
  }

  void sendMessage() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      _messages.add({
        'sender': 'Kamu',
        'message': _controller.text,
        'time': TimeOfDay.now().format(context),
        'isMe': 'true',
      });
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            navigateToGroupInfo(context);
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/uiux_group.png'),
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.groupName,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    '7 Aktif, dari 12 orang',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ],
              ),
            ],
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ChatBubble(
                  sender: message['sender']!,
                  message: message['message']!,
                  time: message['time']!,
                  isMe: message['isMe'] == 'true',
                  avatar: message['avatar'] ?? 'assets/kamu.png',
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.add_circle),
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Ketik pesan...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String sender;
  final String message;
  final String time;
  final bool isMe;
  final String avatar;

  ChatBubble({
    required this.sender,
    required this.message,
    required this.time,
    required this.isMe,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isMe)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(avatar),
            ),
          ),
        Expanded(
          child: Column(
            crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                sender,
                style: TextStyle(
                  color: isMe ? Colors.blue : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7,
                ),
                margin: EdgeInsets.symmetric(vertical: 4.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: isMe ? Colors.blue : Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomLeft: isMe ? Radius.circular(15.0) : Radius.circular(0.0),
                    bottomRight: isMe ? Radius.circular(0.0) : Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      message,
                      style: TextStyle(
                        color: isMe ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      time,
                      style: TextStyle(
                        color: isMe ? Colors.white60 : Colors.grey,
                        fontSize: 12.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (isMe)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(avatar),
            ),
          ),
      ],
    );
  }
}
