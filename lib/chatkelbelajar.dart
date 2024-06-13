import 'package:flutter/material.dart';

class ChatKelBelajar extends StatelessWidget {
  final String groupName;

  ChatKelBelajar({required this.groupName});

  void navigateToGroupInfo(BuildContext context) {
    // Navigasi ke profil grup
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
                    groupName,
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
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                MessageBubble(
                  sender: 'Mike Mazowski',
                  text: 'Halo gais, aku baru saja menyelesaikan beberapa desain UI-UX menggunakan Figma. Aku ingin tahu pendapatmu tentang desainnya',
                  time: '16.04',
                  isMe: false,
                  isQuote: true,
                ),
                SizedBox(height: 8.0),
                Image.asset('assets/images/design_samples.png'),
                SizedBox(height: 8.0),
                MessageBubble(
                  sender: 'Satoshi',
                  text: 'Wow, desainnya terlihat sangat profesional! Aku suka bagaimana kamu menggunakan warna dan tata letaknya sangat rapi',
                  time: '16.04',
                  isMe: false,
                ),
                MessageBubble(
                  sender: 'Fateh',
                  text: 'Desainnya keren banget, ya!',
                  time: '17.49',
                  isMe: true,
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    Icon(Icons.face, size: 32.0),
                    SizedBox(width: 4.0),
                    Icon(Icons.face, size: 32.0),
                    SizedBox(width: 4.0),
                    CircleAvatar(radius: 16.0, backgroundImage: AssetImage('assets/images/typing_user.png')),
                    SizedBox(width: 4.0),
                    Text('+2 lainnya sedang mengetik', style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                  ],
                ),
              ],
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
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final String time;
  final bool isMe;
  final bool isQuote;

  MessageBubble({required this.sender, required this.text, required this.time, required this.isMe, this.isQuote = false});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            if (isQuote)
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  sender + ": " + text,
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: isMe ? Colors.blue : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: isMe ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    time,
                    style: TextStyle(
                      color: isMe ? Colors.white60 : Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
