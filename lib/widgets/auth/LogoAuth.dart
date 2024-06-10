
import 'package:flutter/material.dart';

import '../../core/constants/ImageAssets.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAssets.logo, height: 150,);
  }
}
