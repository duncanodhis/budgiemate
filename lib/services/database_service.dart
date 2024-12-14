import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Send a message
  Future<void> sendMessage(Chat chat) async {
    await _db.collection('chats').doc(chat.chatId).set(chat.toMap());
  }

  // Fetch chat messages
  Stream<List<Chat>> getMessages(String chatId) {
    return _db
        .collection('chats')
        .where('chatId', isEqualTo: chatId)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Chat.fromMap(doc.data() as Map<String, dynamic>))
            .toList());
  }
}
