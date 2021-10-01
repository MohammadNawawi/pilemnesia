import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pilemnesia/app/data/services/database.dart';
import '../controllers/users_controller.dart';

class UsersView extends GetView<UsersController> {
  final DbService db = Get.find<DbService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Pilemnesia 2021 SISI ACADEMY'),
        ),
      ),
    );
  }
}
// 