import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/data/controller/auth_controller.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/mytask.dart';
import 'package:task_management_app/app/utils/widget/profile.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {

  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerkey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(
        children: [
          !context.isPhone ? const Expanded(
            flex: 2,
            child: SideBar(),
            )
               : const SizedBox() ,
          Expanded(
            flex: 15,
            child: Column(
              children: [
              !context.isPhone ? const header() 
              : Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _drawerkey.currentState!.openDrawer();
                    }, 
                    icon: const Icon(
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
            const Text('Task Management', 
            style: TextStyle(
              fontSize: 20, color: AppColors.primaryText),),
            const Text('Manage task made easy with friends',
              style: TextStyle(fontSize: 15, color: AppColors.primaryText),
            ),
            ],
          ),
          const Spacer(),
          GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Sign Out',
                  content: const Text('Are you sure want to sign out?'),
                  cancel: ElevatedButton(onPressed: ()=>Get.back(), child: const Text('Cancel'),),
                  confirm: ElevatedButton(onPressed: ()=> authC.logout(), child: const Text('Sign Out'),)
                ); 
              },
              
              child: Row(
                children: const [
                  Text('Sign Out', style: TextStyle(color: Colors.grey),),
                   SizedBox(
                width: 5,
              ),
               Icon(Ionicons.log_out_outline, color: Colors.grey,), 
             ],
           ),
        ),

                  ],
                ),
              ),

              // content
              Expanded(
                  child: Container(
                  padding: !context.isPhone ? const EdgeInsets.all(50) : const EdgeInsets.all(20),
                  margin: !context.isPhone ? const EdgeInsets.all(10) : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: !context.isPhone ? BorderRadius.circular(50) : BorderRadius.circular(30),
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                    profile(),
                            Text(
                            'My Task', 
                              style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                                ),
                              ),
                              SizedBox(
                             height: 20,
                              ),
                      SizedBox(height: 200, child: MyTask()),
                    ]),
              ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

