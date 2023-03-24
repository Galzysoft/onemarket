class AllTaskForce {
  String? status;
  String? message;
  List<Data>? data;

  AllTaskForce({this.status, this.message, this.data});

  AllTaskForce.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? taskforceType;
  User? user;

  Data({this.id, this.taskforceType, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    taskforceType = json['taskforce_type'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['taskforce_type'] = this.taskforceType;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? firstname;
  String? lastname;
  var middlename;
  String? nationality;
  String? sex;
  String? maritalStatus;
  String? dob;
  String? username;
  String? email;
  String? phoneNumber;
  String? avatar;
  int? userType;
  int? approved;

  User(
      {this.id,
        this.firstname,
        this.lastname,
        this.middlename,
        this.nationality,
        this.sex,
        this.maritalStatus,
        this.dob,
        this.username,
        this.email,
        this.phoneNumber,
        this.avatar,
        this.userType,
        this.approved});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    dob = json['dob'];

    avatar = json['avatar'];


    firstname = json['firstname']==null?"":json['firstname'];
    middlename = json['middlename']==null?"":json['middlename'];
    lastname = json['lastname']==null?"":json['lastname'];
    username = json['username']==null?"":json['username'];
    email = json['email']==null?"":json['email'];
    phoneNumber = json['phone_number']==null?"":json['phone_number'];
    nationality = json['nationality']==null?"":json['nationality'];
    sex = json['sex']==null?"":json['sex'];
    maritalStatus = json['marital_status']==null?"":json['marital_status'];

    userType = json['user_type'];
    approved = json['approved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['middlename'] = this.middlename;
    data['nationality'] = this.nationality;
    data['sex'] = this.sex;
    data['marital_status'] = this.maritalStatus;
    data['dob'] = this.dob;
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['avatar'] = this.avatar;
    data['user_type'] = this.userType;
    data['approved'] = this.approved;
    return data;
  }
}
