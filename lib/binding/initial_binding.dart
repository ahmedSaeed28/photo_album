import 'package:get/get.dart';
import 'package:photo_album/data/api/api_service.dart';
import 'package:photo_album/data/api/api_service_handler.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(APiServiceHandler() as APiService);
  }
}
