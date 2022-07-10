import 'package:get/get.dart';

import 'package:smash/app/modules/cities/bindings/cities_binding.dart';
import 'package:smash/app/modules/cities/views/cities_view.dart';
import 'package:smash/app/modules/countries/bindings/countries_binding.dart';
import 'package:smash/app/modules/countries/views/countries_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.COUNTRIES;

  static final routes = [
    GetPage(
      name: _Paths.CITIES,
      page: () => CitiesView(),
      binding: CitiesBinding(),
    ),
    GetPage(
      name: _Paths.COUNTRIES,
      page: () => CountriesView(),
      binding: CountriesBinding(),
    ),
  ];
}
