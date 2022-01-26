import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_album/binding/initial_binding.dart';
import 'package:photo_album/routes/pages.dart';
import 'package:photo_album/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialBinding: InitialBinding(),
      initialRoute: Routes.albums,
      getPages: Pages.routes
    );
  }
}
