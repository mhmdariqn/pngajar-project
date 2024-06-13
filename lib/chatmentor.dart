import 'package:flutter/material.dart';

class ChatMentor extends StatelessWidget {
  final String mentorName;
  final String mentorImage;

  ChatMentor({required this.mentorName, required this.mentorImage});

  final List<Map<String, String>> messages = [
    {
      'sender': 'User',
      'message': 'Selamat pagi, kak\nSaya ingin bertanya mengenai topik User Interface (UI) dan User Experience (UX) untuk tugas saya. Apakah Bapak memiliki waktu luang untuk diskusi?',
      'time': '14:58',
      'isMe': 'true',
    },
    {
      'sender': 'Jane Cooper',
      'message': 'Selamat pagi. Tentu, saya ada sedikit waktu luang sekarang. Apa yang ingin Anda tanyakan?',
      'time': '14:56',
      'isMe': 'false',
    },
    {
      'sender': 'User',
      'message': 'Terima kasih, Kak. Saya ingin memahami lebih dalam tentang perbedaan antara UI dan UX. Apakah Bapak memiliki materi atau referensi yang bisa saya pelajari?',
      'time': '14:58',
      'isMe': 'true',
    },
    {
      'sender': 'Jane Cooper',
      'message': 'Ya, saya punya beberapa materi yang bisa membantu Anda. Saya akan mengirimkan file PDF yang berisi penjelasan dasar tentang UI dan UX.',
      'time': '14:56',
      'isMe': 'false',
    },
    {
      'sender': 'Jane Cooper',
      'message': 'assets/images/ui_ux_design.png', // Ini adalah path ke gambar
      'time': '14:56',
      'isMe': 'false',
      'isImage': 'true',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Navigasi ke profil
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(mentorImage),
              ),
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(mentorName),
                Text('Mengetik...', style: TextStyle(fontSize: 12.0)),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                if (message.containsKey('isImage')) {
                  return ImageMessageBubble(
                    sender: message['sender']!,
                    imagePath: message['message']!,
                    time: message['time']!,
                    isMe: message['isMe'] == 'true',
                  );
                } else {
                  return MessageBubble(
                    sender: message['sender']!,
                    message: message['message']!,
                    time: message['time']!,
                    isMe: message['isMe'] == 'true',
                  );
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Tulis pesan...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Implementasi fungsi kirim pesan
                  },
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
  final String message;
  final String time;
  final bool isMe;

  MessageBubble({
    required this.sender,
    required this.message,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
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
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageMessageBubble extends StatelessWidget {
  final String sender;
  final String imagePath;
  final String time;
  final bool isMe;

  ImageMessageBubble({
    required this.sender,
    required this.imagePath,
    required this.time,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
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
                      Image.asset(imagePath),
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
        ],
      ),
    );
  }
}
