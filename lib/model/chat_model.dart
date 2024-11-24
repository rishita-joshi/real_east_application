class ChatModel {
  String? name;
  String? profile;

  ChatModel({
    this.name,
    this.profile,
  });

  ChatModel copyWith({
    String? name,
    String? profile,
  }) =>
      ChatModel(
        name: name ?? this.name,
        profile: profile ?? this.profile,
      );
}
