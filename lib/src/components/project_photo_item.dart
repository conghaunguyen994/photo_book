import 'dart:io';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'package:photo_book/src/components/components.dart';

class ProjectPhotoItem extends StatelessWidget {
  final Future<File?> file;

  const ProjectPhotoItem({
    Key? key,
    required this.file,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1 / 1,
              child: FutureBuilder(
                future: file,
                builder: (
                  BuildContext ctx,
                  AsyncSnapshot<File?> as,
                ) {
                  if (as.hasData) {
                    return GestureDetector(
                      child: Image.file(
                        as.data!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    );
                  }

                  return Container();
                },
              ),
            ),
            Positioned(
              top: 6.0,
              right: 6.0,
              child: GestureDetector(
                child: Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(24.0 / 2),
                  ),
                  child: const Icon(
                    LineIcons.times,
                    color: Colors.white,
                    size: 14.0,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
