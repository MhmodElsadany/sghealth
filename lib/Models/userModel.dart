class User {
  String _username;
  String _email;


  User();

  User.name(this._username, this._email); // P
  // roperties
String get username => _username;
set username(String username) => _username = username;
String get email => _email;
set email(String email) => _email = email;

// create the user object from json input
User.fromJson(Map<String, dynamic> json) {
_username = json['username'];
_email = json['email'];
}

// exports to json
Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['username'] = this._username;
  data['email'] = this._email;
  return data;
}
}