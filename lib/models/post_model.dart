class PostModel {
  final int id;
  final String profilePicture;
  final String username;
  final String? location;
  final String postUrl;

  PostModel({
    required this.id,
    required this.profilePicture,
    required this.username,
    this.location,
    required this.postUrl,
  });
}
