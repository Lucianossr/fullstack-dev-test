import 'package:get/get.dart';

import '../../../controllers/firebase_controller.dart';
import '../controllers/cities_controller.dart';

class CitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CitiesController>(
      () => CitiesController(),
    );
    Get.lazyPut<FirebaseController>(
      () => FirebaseController(),
    );
  }
}
