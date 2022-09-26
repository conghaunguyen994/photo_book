import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/controller.dart';

class ProfileScreen extends GetView<Homecontroller> {
  ProfileScreen({Key? key}) : super(key: key);
  String dropdownValue = 'Tỉnh thành phố';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Thông Tin'),
        actions: [
          ElevatedButton(
            child: const Text('Xong'),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                hintText: 'Họ tên',
              ),
              textCapitalization: TextCapitalization.words,
            ),
            const SizedBox(
              height: 12.0,
            ),
            const TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Số điện thoại',
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
              textCapitalization: TextCapitalization.words,
            ),
            DropdownButtonFormField(
              value: dropdownValue,
              onChanged: (String? newValue) {},
              items: <String>[
                'Tỉnh thành phố',
                'Hà nội',
                'Thanh Hóa',
                'Đà nẵng'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
            ),
            DropdownButtonFormField(
              value: dropdownValue,
              onChanged: (String? newValue) {},
              items: <String>[
                'Tỉnh thành phố',
                'Hà nội',
                'Thanh Hóa',
                'Đà nẵng'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
            ),
            DropdownButtonFormField(
              value: dropdownValue,
              onChanged: (String? newValue) {},
              items: <String>[
                'Tỉnh thành phố',
                'Hà nội',
                'Thanh Hóa',
                'Đà nẵng'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Địa chỉ nhận hàng',
              ),
            ),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Ghi chú',
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  child: const Text('Hủy Bỏ'),
                  onPressed: () {
                    Get.back();
                  },
                ),
                const SizedBox(
                  width: 150,
                ),
                ElevatedButton(
                  child: const Text('Hoàn Tất'),
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text(
                            'Thời gian in ảnh và vận chuyển sẽ mất khoảng 3 ngày đến 1 tuần tùy thuộc vào khu vực giao hàng'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: ElevatedButton(
                              child: const Text(
                                ' OK',
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
