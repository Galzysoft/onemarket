class AllAttachees {
  String? status;
  String? message;
  List<Data>? data;

  AllAttachees({this.status, this.message, this.data});

  AllAttachees.fromJson(Map<String, dynamic> json) {
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
  String? userId;
  String? shopId;
  String? attacheeLetter;
  String? approved;
  String? createdAt;
  String? updatedAt;
  User? user;
  Shop? shop;

  Data(
      {this.id,
        this.userId,
        this.shopId,
        this.attacheeLetter,
        this.approved,
        this.createdAt,
        this.updatedAt,
        this.user,
        this.shop});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    shopId = json['shop_id'];
    attacheeLetter = json['attachee_letter'];
    approved = json['approved'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    shop = json['shop'] != null ? new Shop.fromJson(json['shop']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['shop_id'] = this.shopId;
    data['attachee_letter'] = this.attacheeLetter;
    data['approved'] = this.approved;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.shop != null) {
      data['shop'] = this.shop!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? firstname;
  var middlename;
  String? lastname;
  String? username;
  String? email;
  String? phoneNumber;
  String? nationality;
  String? sex;
  String? maritalStatus;
  String? dateOfBirth;
  String? profilePic;
  String? userCategoriesId;
  String? approved;
  var emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  var deletedAt;

  User(
      {this.id,
        this.firstname,
        this.middlename,
        this.lastname,
        this.username,
        this.email,
        this.phoneNumber,
        this.nationality,
        this.sex,
        this.maritalStatus,
        this.dateOfBirth,
        this.profilePic,
        this.userCategoriesId,
        this.approved,
        this.emailVerifiedAt,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname']==null?"":json['firstname'];
    middlename = json['middlename']==null?"":json['middlename'];
    lastname = json['lastname']==null?"":json['lastname'];
    username = json['username']==null?"":json['username'];
    email = json['email']==null?"":json['email'];
    phoneNumber = json['phone_number']==null?"":json['phone_number'];
    nationality = json['nationality']==null?"":json['nationality'];
    sex = json['sex']==null?"":json['sex'];
    maritalStatus = json['marital_status']==null?"":json['marital_status'];
    dateOfBirth = json['date_of_birth']==null?"":json['date_of_birth'];
    profilePic = json['profile_pic'];

    userCategoriesId = json['user_categories_id'];
    approved = json['approved'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstname'] = this.firstname;
    data['middlename'] = this.middlename;
    data['lastname'] = this.lastname;
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone_number'] = this.phoneNumber;
    data['nationality'] = this.nationality;
    data['sex'] = this.sex;
    data['marital_status'] = this.maritalStatus;
    data['date_of_birth'] = this.dateOfBirth;
    data['profile_pic'] = this.profilePic;
    data['user_categories_id'] = this.userCategoriesId;
    data['approved'] = this.approved;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class Shop {
  int? id;
  String? shopNumber;
  String? plazaName;
  String? shopAddress;
  var tenancyReceipt;
  String? ownerId;
  String? gottenVia;
  String? guarantor;
  String? knownFor;
  String? companyName;
  String? guranteed;
  String? approved;
  String? createdAt;
  String? updatedAt;
  var deletedAt;

  Shop(
      {this.id,
        this.shopNumber,
        this.plazaName,
        this.shopAddress,
        this.tenancyReceipt,
        this.ownerId,
        this.gottenVia,
        this.guarantor,
        this.knownFor,
        this.companyName,
        this.guranteed,
        this.approved,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  Shop.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    shopNumber = json['shop_number'];
    plazaName = json['plaza_name'];
    shopAddress = json['shop_address'];
    tenancyReceipt = json['tenancy_receipt'];
    ownerId = json['owner_id'];
    gottenVia = json['gotten_via'];
    guarantor = json['guarantor'];
    knownFor = json['known_for'];
    companyName = json['company_name'];
    guranteed = json['guranteed'];
    approved = json['approved'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['shop_number'] = this.shopNumber;
    data['plaza_name'] = this.plazaName;
    data['shop_address'] = this.shopAddress;
    data['tenancy_receipt'] = this.tenancyReceipt;
    data['owner_id'] = this.ownerId;
    data['gotten_via'] = this.gottenVia;
    data['guarantor'] = this.guarantor;
    data['known_for'] = this.knownFor;
    data['company_name'] = this.companyName;
    data['guranteed'] = this.guranteed;
    data['approved'] = this.approved;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
