import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/firebase_controller.dart';
import '../controllers/cities_controller.dart';

class CitiesView extends GetView<CitiesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CitiesView'),
          centerTitle: true,
        ),
        body: FutureBuilder<List<Cities>>(
          future: controller.dataCities,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());

            if (snapshot.hasData) {
              return ListView(children: [
                ...snapshot.data!
                    .map((e) => ListTile(
                          title: Text(e.name),
                        ))
                    .toList()
              ]);
            }

            return Container();
          },
        ));
  }
}
