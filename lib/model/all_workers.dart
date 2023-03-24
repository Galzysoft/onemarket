class AllWorkers {
  String? status;
  String? message;
  List<Data>? data;

  AllWorkers({this.status, this.message, this.data});

  AllWorkers.fromJson(Map<String, dynamic> json) {
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
  String? approved;
  Shop? shop;
  User? user;

  Data({this.id, this.approved, this.shop, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    approved = json['approved'];
    shop = json['shop'] != null ? new Shop.fromJson(json['shop']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['approved'] = this.approved;
    if (this.shop != null) {
      data['shop'] = this.shop!.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class Shop {
  int? shopId;
  String? shopNo;
  String? plazaName;
  String? shopAddress;
  String? owner;
  String? gottenVia;
  String? guarantor;
  String? knownFor;
  String? companyName;
  int? guaranteed;
  String? approved;

  Shop(
      {this.shopId,
        this.shopNo,
        this.plazaName,
        this.shopAddress,
        this.owner,
        this.gottenVia,
        this.guarantor,
        this.knownFor,
        this.companyName,
        this.guaranteed,
        this.approved});

  Shop.fromJson(Map<String, dynamic> json) {
    shopId = json['shop_id'];
    shopNo = json['shop_no'];
    plazaName = json['plaza_name'];
    shopAddress = json['shop_address'];
    owner = json['owner'];
    gottenVia = json['gotten_via'];
    guarantor = json['guarantor'];
    knownFor = json['known_for'];
    companyName = json['company_name'];
    guaranteed = json['guaranteed'];
    approved = json['approved'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['shop_id'] = this.shopId;
    data['shop_no'] = this.shopNo;
    data['plaza_name'] = this.plazaName;
    data['shop_address'] = this.shopAddress;
    data['owner'] = this.owner;
    data['gotten_via'] = this.gottenVia;
    data['guarantor'] = this.guarantor;
    data['known_for'] = this.knownFor;
    data['company_name'] = this.companyName;
    data['guaranteed'] = this.guaranteed;
    data['approved'] = this.approved;
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
