import 'package:first_app_flutter/shared/app_images.dart';
import 'package:flutter/material.dart';

class ImageAssetsPage extends StatelessWidget {
  const ImageAssetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.user1,
          height: 50,
        ),
        Image.asset(
          AppImages.user2,
          height: 50,
        ),
        Image.asset(
          AppImages.user3,
          height: 50,
        ),
        Image.asset(
          AppImages.landscape1,
          height: 50,
        ),
        Image.asset(
          AppImages.landscape2,
          height: 50,
        ),
        Image.asset(
          AppImages.landscape3,
          height: 50,
        ),
      ],
    );
  }
}
