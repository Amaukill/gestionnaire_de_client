class Client {
  String firstName;
  String lastName;
  String tel;
  String telPro;
  String fax;
  String societe;
  String poste;
  String email;
  Client(
      {required this.firstName,
      required this.lastName,
      this.tel = "",
      this.telPro = "",
      this.fax = "",
      this.poste = "",
      required this.email,
      required this.societe});
}
