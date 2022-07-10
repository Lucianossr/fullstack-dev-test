import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:smash/app/controllers/firebase_controller.dart';

import '../controllers/countries_controller.dart';

class CountriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CountriesController>(
      () => CountriesController(),
    );
    Get.lazyPut<FirebaseController>(
      () => FirebaseController(),
    );
  }
}
