import 'package:get/get.dart';
import 'package:pilemnesia/app/data/controllers/api_repository.dart';
import 'package:pilemnesia/app/data/providers/api_provider.dart';
import 'package:pilemnesia/app/data/services/database.dart';
import 'package:pilemnesia/app/modules/tabs/controllers/tabs_controller.dart';

import '../controllers/detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
      () => DetailController(apiRepository: Get.find()),
    );
    Get.lazyPut<TabsController>(
      () => TabsController(apiRepository: Get.find()),
    );
    Get.lazyPut<ApiRepository>(() => ApiRepository(provider: Get.find()));
    Get.lazyPut<ApiProvider>(() => ApiProvider());
    Get.lazyPut<DbService>(() => DbService());
  }
}
