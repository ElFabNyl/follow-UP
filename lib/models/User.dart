class User {
  final String name;
  final String email;
  final String convertionDate;
  final String phone;
  final String password;
  final bool isAlreadyRegistered;
  final List convertisEnregistre;

  User(
      {required this.name,
      required this.email,
      required this.password,
      required this.convertisEnregistre,
      required this.isAlreadyRegistered,
      required this.convertionDate,
      required this.phone});
}
