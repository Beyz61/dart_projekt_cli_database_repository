class User {
  String name;
  String password;
  String email;

  User({required this.name, required this.password, required this.email});
  void showUserInfo() {
    print("${name} ${email} ${password}");
  }
}

// User user = User(email: "beyz.61@", password: "6161", name: "beyz");
