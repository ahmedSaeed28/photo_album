import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_album/controllers/photos_controllers.dart';
import 'package:photo_album/data/model/photo.dart';
import 'package:photo_album/routes/routes.dart';
import 'package:photo_album/view/widgets/white_button.dart';
import 'package:photo_album/view/widgets/photos_grid.dart';

class PhotosScreen extends GetView<PhotosController> {

  PhotosScreen({Key? key}) : super(key: key);

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(controller.album.title)
      ),
      backgroundColor: Colors.white,
      body: controller.obx((state) => PhotosGrid(
          photos: state!,
          onPress: (photo) {
            _selectOption().then((value){
              if(value != null){
                _doAction(photo, value);
              }
            });
          }
      )),
    );
  }

  void _doAction(Photo photo, Option option) async {
    switch(option){
      case Option.take:
        await updateFile(ImageSource.camera).then((value){
          if(value != null){
            photo.file = File(value.path);
            Get.toNamed(Routes.preview, arguments: photo);
          }
        });
        break;
      case Option.upload:
        await updateFile(ImageSource.gallery).then((value){
          if(value != null){
            photo.file = File(value.path);
            Get.toNamed(Routes.preview, arguments: photo);
          }
        });
        break;
      case Option.preview:
        Get.toNamed(Routes.preview, arguments: photo);
        break;
    }
  }

  Future<XFile?> updateFile(ImageSource imageSource) async {
    try {
      return await _picker.pickImage(
        source: imageSource
      );
    } catch (e) {
      Get.snackbar('Error', 'Access denied');
      return null;
    }
  }

  Future<Option?> _selectOption() async {
    return await Get.dialog(
      SimpleDialog(
        title: const Text(
          'Select Option',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        children: <Widget>[
          WhiteButton(
              text: 'Preview',
              onPress: () => Get.back(result: Option.preview)
          ),
          WhiteButton(
              text: 'Take Picture',
              onPress: () => Get.back(result: Option.take)
          ),
          WhiteButton(
              text: 'Upload Picture',
              onPress: () => Get.back(result: Option.upload)
          )
        ],
      ),
      barrierColor: Colors.black54,
    );
  }
}

enum Option { preview, take, upload }
