class User {
  static int _idCounter = 0; // Static variable to keep track of the last used ID
  int id;
  String name;
  String password;
  String email;
  String avatarURL;

  User({
    required this.name,
    required this.password,
    required this.email,
    required this.avatarURL,
  }) : id = ++_idCounter; // Increment the counter and assign it to the id

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, avatarURL: $avatarURL}';
  }
}