import 'package:code/controller/TabBar_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class BottomOfAppBar extends StatelessWidget with PreferredSizeWidget {
  final TabBarController controller;

  BottomOfAppBar({Key? key, required this.tabs, required this.controller})
      : super(key: key);
  final List<Widget> tabs;
  final tabbarenable2 = Get.find<RxBool>(tag: 'tabbarenable');

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => PreferredSize(
        preferredSize: tabbarenable2.value
            ? const Size.fromHeight(28.0)
            : const Size.fromHeight(0.0),
        child: ColoredBox(
          color: Colors.white,
          child: Column(
            children: [
              tabbarenable2.value
                  ? TabBar(
                  labelColor: Colors.purple[100],
                  indicatorColor: Colors.purple,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 8.0),
                  tabs: tabs)
                  : const Text('noTabBar')
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      tabbarenable2.value ? Size.fromHeight(28.0) : Size.fromHeight(0.0);
}

