class AllMembers {
  String? status;
  String? message;
  List<DataMember>? data;

  AllMembers({this.status, this.message, this.data});

  AllMembers.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <DataMember>[];
      json['data'].forEach((v) {
        data!.add(new DataMember.fromJson(v));
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

class DataMember {
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
  List<MembersCategories>? categories;
  Owner? owner;
  Attachee? attachee;
  Worker? worker;
  Worker? apprentice;
  Taskforce? taskforce;

  DataMember(
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
        this.deletedAt,
        this.categories,
        this.owner,
        this.attachee,
        this.worker,
        this.apprentice,
        this.taskforce});

  DataMember.fromJson(Map<String, dynamic> json) {
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
    if (json['categories'] != null) {
      categories = <MembersCategories>[];
      json['categories'].forEach((v) {
        categories!.add(new MembersCategories.fromJson(v));
      });
    }
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    attachee = json['attachee'] != null
        ? new Attachee.fromJson(json['attachee'])
        : null;
    worker =
    json['worker'] != null ? new Worker.fromJson(json['worker']) : null;
    apprentice = json['apprentice'] != null
        ? new Worker.fromJson(json['apprentice'])
        : null;
    taskforce = json['taskforce'] != null
        ? new Taskforce.fromJson(json['taskforce'])
        : null;
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
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.owner != null) {
      data['owner'] = this.owner!.toJson();
    }
    if (this.attachee != null) {
      data['attachee'] = this.attachee!.toJson();
    }
    if (this.worker != null) {
      data['worker'] = this.worker!.toJson();
    }
    if (this.apprentice != null) {
      data['apprentice'] = this.apprentice!.toJson();
    }
    if (this.taskforce != null) {
      data['taskforce'] = this.taskforce!.toJson();
    }
    return data;
  }
}

class MembersCategories {
  int? id;
  String? userType;
  String? createdAt;
  String? updatedAt;
  Pivot? pivot;

  MembersCategories(
      {this.id, this.userType, this.createdAt, this.updatedAt, this.pivot});

  MembersCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userType = json['user_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_type'] = this.userType;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  String? userId;
  String? userCategoryId;

  Pivot({this.userId, this.userCategoryId});

  Pivot.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userCategoryId = json['UserCategory_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['UserCategory_id'] = this.userCategoryId;
    return data;
  }
}

class Owner {
  int? id;
  String? userId;
  var ownerServed;
  String? previousJob;
  String? regReceipt;
  String? cert;
  String? active;
  String? approved;
  String? createdAt;
  String? updatedAt;
  var deletedAt;
  List<ShopMember>? shopsMembers;

  Owner(
      {this.id,
        this.userId,
        this.ownerServed,
        this.previousJob,
        this.regReceipt,
        this.cert,
        this.active,
        this.approved,
        this.createdAt,
        this.updatedAt,
        this.deletedAt,
        this.shopsMembers});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    ownerServed = json['owner_served'];
    previousJob = json['previous_job'];
    regReceipt = json['reg_receipt'];
    cert = json['cert'];
    active = json['active'];
    approved = json['approved'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    if (json['shops'] != null) {
      shopsMembers = <ShopMember>[];
      json['shops'].forEach((v) {
        shopsMembers!.add(new ShopMember.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['owner_served'] = this.ownerServed;
    data['previous_job'] = this.previousJob;
    data['reg_receipt'] = this.regReceipt;
    data['cert'] = this.cert;
    data['active'] = this.active;
    data['approved'] = this.approved;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    if (this.shopsMembers != null) {
      data['shops'] = this.shopsMembers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ShopMember {
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

  ShopMember(
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

  ShopMember.fromJson(Map<String, dynamic> json) {
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

class Attachee {
  int? id;
  String? userId;
  String? shopId;
  String? attacheeLetter;
  String? approved;
  String? createdAt;
  String? updatedAt;
  ShopMember? shop;

  Attachee(
      {this.id,
        this.userId,
        this.shopId,
        this.attacheeLetter,
        this.approved,
        this.createdAt,
        this.updatedAt,
        this.shop});

  Attachee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    shopId = json['shop_id'];
    attacheeLetter = json['attachee_letter'];
    approved = json['approved'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    shop = json['shop'] != null ? new ShopMember.fromJson(json['shop']) : null;
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
    if (this.shop != null) {
      data['shop'] = this.shop!.toJson();
    }
    return data;
  }
}

class Worker {
  int? id;
  String? userId;
  String? shopId;
  String? approved;
  String? createdAt;
  String? updatedAt;
  ShopMember? shop;

  Worker(
      {this.id,
        this.userId,
        this.shopId,
        this.approved,
        this.createdAt,
        this.updatedAt,
        this.shop});

  Worker.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    shopId = json['shop_id'];
    approved = json['approved'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    shop = json['shop'] != null ? new ShopMember.fromJson(json['shop']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['shop_id'] = this.shopId;
    data['approved'] = this.approved;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.shop != null) {
      data['shop'] = this.shop!.toJson();
    }
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
  var guranteed;
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

class Taskforce {
  int? id;
  String? userId;
  String? taskforceType;
  String? approved;
  String? createdAt;
  String? updatedAt;

  Taskforce(
      {this.id,
        this.userId,
        this.taskforceType,
        this.approved,
        this.createdAt,
        this.updatedAt});

  Taskforce.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    taskforceType = json['taskforce_type'];
    approved = json['approved'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['taskforce_type'] = this.taskforceType;
    data['approved'] = this.approved;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
