import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Row(
        children: [
          const Expanded(
            flex: 2,
            child: const SideBar()
                ),
          Expanded(
            flex: 15,
            child: Column(
              children: [
                header(),
              Expanded(
                child: Container(
                padding: const EdgeInsets.all(70),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  ),
              ))
            ]),
          )
        ],
      )
    );
  }
}

