class ChatModel {
  final String chatId;
  final String senderId;
  final String receiverId;
  final String message;
  final DateTime timestamp;
  final bool isRead;

  ChatModel({
    required this.chatId,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.timestamp,
    required this.isRead,
  });

  factory ChatModel.fromMap(Map<String, dynamic> data) {
    return ChatModel(
      chatId: data['chatId'],
      senderId: data['senderId'],
      receiverId: data['receiverId'],
      message: data['message'],
      timestamp: DateTime.parse(data['timestamp']),
      isRead: data['isRead'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'chatId': chatId,
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
      'timestamp': timestamp.toIso8601String(),
      'isRead': isRead,
    };
  }
}
