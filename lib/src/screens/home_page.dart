import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'package:photo_book/src/screens/profile_screen.dart';

import '../components/components.dart';
import '../controllers/controller.dart';

class HomePage extends GetView<Homecontroller> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Trang Chủ',
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('Tiếp Theo'),
              onPressed: () {
                Get.to(() => ProfileScreen());
              },
            ),
          ],
        ),
        body: controller.photos.isNotEmpty
            ? AlignedGridView.count(
                padding: const EdgeInsets.all(16.0),
                crossAxisCount: 2,
                mainAxisSpacing: 14.0,
                crossAxisSpacing: 14.0,
                itemCount: controller.photos.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProjectPhotoItem(
                    file: controller.photos[index].file,
                  );
                },
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      const Text(
                        'Chọn ảnh để in đi',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          controller.onPickPhoto();
                        },
                        label: Text('Thêm ảnh'),
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
