import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerkey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
          !context.isPhone ? Expanded(
            flex: 2,
            child: const SideBar(),
            )
               : const SizedBox() ,
          Expanded(
            flex: 15,
            child: Column(
              children: [
              !context.isPhone ? const header() : Container(padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _drawerkey.currentState!.openDrawer();
                    }, 
                    icon: Icon(
                      Icons.menu, 
                      color: AppColors.primaryText,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),

                    Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Task Management', 
            style: const TextStyle(
              fontSize: 20, color: AppColors.primaryText),),
            Text('Manage task made easy with friends',
              style: TextStyle(fontSize: 15, color: AppColors.primaryText),
            ),
            ],
          ),
          const Spacer(),
          const Icon(
            Ionicons.notifications, 
            color: Colors.grey,
            ),
            const SizedBox(
              width: 15,
              ),
          ClipRRect(borderRadius: BorderRadius.circular(30),
          child: const CircleAvatar(
            backgroundColor: Colors.amber, 
            radius: 25, 
            foregroundImage: NetworkImage('assets/images/person2.jpg'),
            ),
          ),

                  ],
                ),
              ),

              // content
              Expanded(
                child: Container(
                padding: const EdgeInsets.all(70),
                margin: !context.isPhone ? EdgeInsets.all(10) : EdgeInsets.all(0),
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: !context.isPhone ? BorderRadius.circular(50) : BorderRadius.circular(30),
                  ),
              ))
            ]),
          )
        ],
      ),
    );
  }
}

