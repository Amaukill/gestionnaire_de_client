class Client {
  String firstName;
  String lastName;
  String tel;
  String telPro;
  String fax;
  String societe;
  String email;
  Client(
      {required this.firstName,
      required this.lastName,
      this.tel = "",
      this.telPro = "",
      this.fax = "",
      required this.email,
      required this.societe});
}
