import 'package:get/get.dart';
import 'package:smash/app/controllers/firebase_controller.dart';

class CitiesController extends GetxController {
  FirebaseController fbController = Get.find();

  Future<List<Cities>>? dataCities;

  @override
  void onInit() {
    var param = Get.parameters;
    dataCities = fbController.getAllCitiesFromId(param["id"]!);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
