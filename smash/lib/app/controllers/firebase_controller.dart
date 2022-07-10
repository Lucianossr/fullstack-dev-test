import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class FirebaseController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<List<Cities>> getAllCitiesFromId(String id) async {
    return await firestore
        .collection("Countries")
        .doc(id)
        .collection("Cities")
        .get()
        .then(
            (value) => value.docs.map((e) => Cities.fromDocument(e)).toList());
  }

  Future<List<Countries>> getAllContries() async {
    return await firestore.collection("Countries").get().then(
        (value) => value.docs.map((e) => Countries.fromDocument(e)).toList());
  }

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

class Countries {
  String name;
  DocumentReference docRef;

  Countries(this.name, this.docRef);

  factory Countries.fromDocument(
      QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return Countries(doc.id, doc.reference);
  }
}

class Cities {
  String name;
  DocumentReference docId;

  Cities(this.name, this.docId);

  factory Cities.fromDocument(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    return Cities(doc.id, doc.reference);
  }
}
