import 'package:get/get.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class Homecontroller extends GetxController {
  final RxList<AssetEntity> photos = RxList.empty();

  void onPickPhoto() async {
    final List<AssetEntity>? results = await AssetPicker.pickAssets(
      Get.context!,
      pickerConfig: AssetPickerConfig(
        maxAssets: 100,
        selectedAssets: photos,
      ),
    );

    if (results != null) {
      photos.assignAll(results);
    }
  }
}
