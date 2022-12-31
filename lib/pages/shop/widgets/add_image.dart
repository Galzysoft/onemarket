import 'package:get/get.dart';
import 'package:one_market/pages/shop/createshop/logic.dart';
import 'package:flutter/material.dart'as mate;
import '../../../constants/constants_and_imports.dart';

class AddImageShopTenancy extends StatelessWidget {
  final String avatarTitle;

  AddImageShopTenancy({
    Key? key,
    this.avatarTitle = "",
  }) : super(key: key);
  final logic = Get.put(CreateShopLogic());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(() {
      return SizedBox(height: 200,width: 200,
        child: Card(
            backgroundColor: FluentTheme.of(context).inactiveColor,
            padding: EdgeInsets.all(10),
            child: mate.InkWell(
                onTap: () {
                  logic.pickImage();
                },
                child: mate.Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            child: (logic.image.value != null)
                                ? Image.file(
                              height: double.infinity,width: double.infinity,

                              logic.image!.value!,
                              fit: BoxFit.fill,
                            )
                                : Image.asset(
                              height: double.infinity,width: double.infinity,
                              assets.insertDoc,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(radius: 15,
                              backgroundColor: Colors.green,
                              child:Icon( FluentIcons.add,color: Colors.white,size: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                     avatarTitle,
                      style: FluentTheme.of(context)
                          .typography
                          .caption!.copyWith(fontSize: 11),
                    )
                  ],
                ))),
      );
    });
  }
}
class AddRegDoc extends StatelessWidget {
  final String avatarTitle;

  AddRegDoc({
    Key? key,
    this.avatarTitle = "",
  }) : super(key: key);
  final logic = Get.put(CreateShopLogic());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(() {
      return SizedBox(height: 200,width: 200,
        child: Card(
            backgroundColor: FluentTheme.of(context).inactiveColor,
            padding: EdgeInsets.all(10),
            child: mate.InkWell(
                onTap: () {
                  logic.pickDoc();
                },
                child: mate.Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            child: (logic.doc.value != null)
                                ? Image.file(
                              height: double.infinity,width: double.infinity,

                              logic.doc!.value!,
                              fit: BoxFit.fill,
                            )
                                : Image.asset(
                              height: double.infinity,width: double.infinity,
                              assets.insertDoc,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(radius: 15,
                              backgroundColor: Colors.green,
                              child:Icon( FluentIcons.add,color: Colors.white,size: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                     avatarTitle,
                      style: FluentTheme.of(context)
                          .typography
                          .caption!.copyWith(fontSize: 11),
                    )
                  ],
                ))),
      );
    });
  }
}
class AddCertDoc extends StatelessWidget {
  final String avatarTitle;

  AddCertDoc({
    Key? key,
    this.avatarTitle = "",
  }) : super(key: key);
  final logic = Get.put(CreateShopLogic());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(() {
      return SizedBox(height: 200,width: 200,
        child: Card(
            backgroundColor: FluentTheme.of(context).inactiveColor,
            padding: EdgeInsets.all(10),
            child: mate.InkWell(
                onTap: () {
                  logic.pickCertDoc();
                },
                child: mate.Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            child: (logic.certDoc.value != null)
                                ? Image.file(
                              height: double.infinity,width: double.infinity,

                              logic.certDoc!.value!,
                              fit: BoxFit.fill,
                            )
                                : Image.asset(
                              height: double.infinity,width: double.infinity,
                              assets.insertDoc,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(radius: 15,
                              backgroundColor: Colors.green,
                              child:Icon( FluentIcons.add,color: Colors.white,size: 12),
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                     avatarTitle,
                      style: FluentTheme.of(context)
                          .typography
                          .caption!.copyWith(fontSize: 11),
                    )
                  ],
                ))),
      );
    });
  }
}