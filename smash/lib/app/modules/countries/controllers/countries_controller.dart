import 'package:get/get.dart';

import '../../../controllers/firebase_controller.dart';

class CountriesController extends GetxController {
  //TODO: Implement CountriesController
  FirebaseController fbController = Get.find();

  Future<List<Countries>>? dataCoutries;

  @override
  void onInit() {
    dataCoutries = fbController.getAllContries();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
