import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_album/data/model/photo.dart';

class PreviewScreen extends StatelessWidget {

  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = Get.arguments as Photo;
    return Scaffold(
      appBar: AppBar(
          title: Text(photo.title)
      ),
      backgroundColor: Colors.white,
      body: Center(
          child: photo.file == null ?
            Image.network(photo.url) :
            Image.file((photo.file!)),
      )
    );
  }
}
