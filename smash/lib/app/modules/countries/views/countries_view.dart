import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smash/app/routes/app_pages.dart';

import '../../../controllers/firebase_controller.dart';
import '../controllers/countries_controller.dart';

class CountriesView extends GetView<CountriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CountriesView'),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Countries>>(
          future: controller.dataCoutries,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              CircularProgressIndicator();

            if (snapshot.hasData) {
              return ListView(children: [
                ...snapshot.data!
                    .map((e) => ListTile(
                          title: Text(e.name),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () => Get.toNamed(Routes.CITIES,
                              parameters: {"id": e.name}),
                        ))
                    .toList()
              ]);
            }

            return Container();
          },
        ));
  }
}
