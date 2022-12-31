class MembersModel {
  final String name;
  final String phone;
  final String email;
  final String nationality;
  final String sex;
  final List<int>? role;
  final String marital;
  final String dateOfBirth;
  final String imageurl;
  final bool owing;

  MembersModel( {
    required this.name,
     this.role,
    required this.phone,
    required this.email,
    required this.nationality,
    required this.sex,
    required this.marital,
    required this.dateOfBirth,
    required this.imageurl,
    required this.owing,
  });
}
