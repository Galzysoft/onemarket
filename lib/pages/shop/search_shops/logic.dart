import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'state.dart';

class SearchShopsLogic extends GetxController {
  final SearchShopsState state = SearchShopsState();
  TextEditingController controller = TextEditingController();
  var selected = "".obs;

  set changeindex(int index) {
    selectedidex.value = index;
  }

  var selectedidex = 0.obs;
  List<ShopsModel> listShops = [];

  @override
  void onInit() {
    // TODO: implement onInit
    listShops = [
      ShopsModel(
          shopId: "202",
          userId: "!ux@12",
          companyName: "Emma Tech Doves Drones",
          tenancyReciept: "assets/image/R.jpg",
          regReciept: "assets/image/R.jpg",
          via: "Local Goverment",
          hasOwner: true,
          guarantor: "120",
          knownFor: "2",
          cert: "assets/image/R.jpg",
          guaranteed: 1),
      ShopsModel(
          shopId: "902",
          userId: "!ret2",
          companyName: "Obinna Marine Dolphin Bots",
          tenancyReciept: "assets/image/R.jpg",
          regReciept: "assets/image/R.jpg",
          via: "LandLord",
          guarantor: "120",
          hasOwner: true,
          knownFor: "2",
          cert: "assets/image/R.jpg",
          guaranteed: 1),
      ShopsModel(
          shopId: "100",
          userId: "!ret2",
          hasOwner: true,
          companyName: "Galzy Zed Bots",
          tenancyReciept: "assets/image/R.jpg",
          regReciept: "assets/image/R.jpg",
          via: "Bank",
          guarantor: "120",
          knownFor: "2",
          cert: "assets/image/R.jpg",
          guaranteed: 1),
      ShopsModel(
          shopId: "102",
          userId: "",
          companyName: "",
          tenancyReciept: "",
          regReciept: "",
          via: "",
          hasOwner: false,
          guarantor: "",
          knownFor: "",
          cert: "",
          guaranteed: 0),
      ShopsModel(
          shopId: "109",
          userId: "",
          companyName: "",
          tenancyReciept: "",
          regReciept: "",
          via: "",
          hasOwner: false,
          guarantor: "",
          knownFor: "",
          cert: "",
          guaranteed: 0),
      ShopsModel(
          shopId: "902",
          userId: "!ret2",
          companyName: "Obinna Marine Dolphin Bots",
          tenancyReciept: "assets/image/R.jpg",
          regReciept: "assets/image/R.jpg",
          via: "LandLord",
          guarantor: "120",
          hasOwner: true,
          knownFor: "2",
          cert: "assets/image/R.jpg",
          guaranteed: 1),
      ShopsModel(
          shopId: "109",
          userId: "!ret2",
          hasOwner: true,
          companyName: "Galzy Zed Bots",
          tenancyReciept: "assets/image/R.jpg",
          regReciept: "assets/image/R.jpg",
          via: "Bank",
          guarantor: "120",
          knownFor: "2",
          cert: "assets/image/R.jpg",
          guaranteed: 1),
    ];
    super.onInit();
  }
}

class ShopsModel {
  final String shopId;
  final String userId;
  final String companyName;
  final String tenancyReciept;
  final String regReciept;
  final String via;
  final String guarantor;
  final String knownFor;
  final String cert;
  final int guaranteed;
  final bool hasOwner;

  ShopsModel( {
    required this.hasOwner,
    required this.shopId,
    required this.userId,
    required this.companyName,
    required this.tenancyReciept,
    required this.regReciept,
    required this.via,
    required this.guarantor,
    required this.knownFor,
    required this.cert,
    required this.guaranteed,
  });
}
