import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_album/controllers/albums_controllers.dart';
import 'package:photo_album/routes/routes.dart';
import 'package:photo_album/view/widgets/albums_grid.dart';

class AlbumsScreen extends GetView<AlbumsController> {

  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Photo Album')
      ),
      backgroundColor: Colors.white70,
      body: controller.obx((state) =>
        AlbumsGrid(
          albums: state!,
          onPress: (album) {
            Get.toNamed(Routes.photos, arguments: album);
          }
        )
      ),
    );
  }
}
