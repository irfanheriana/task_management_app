import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../../../utils/widget/upcomingtask.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  final GlobalKey<ScaffoldState> _drawerkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerkey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
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
                  padding: !context.isPhone ? const EdgeInsets.all(50) : const EdgeInsets.all(20),
                  margin: !context.isPhone ? const EdgeInsets.all(10) : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: !context.isPhone ? BorderRadius.circular(50) : BorderRadius.circular(30),
                    ),
      
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.38,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('My Task', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 30,
                                ),
                              ),
                              SizedBox(
                          height: 20,
                        ),
                        // my task
                        SizedBox(
                          height: 200,
                          child: ListView(
                            clipBehavior: Clip.antiAlias,
                            scrollDirection: Axis.horizontal, 
                            shrinkWrap: true,
                            children: [
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.secondaryBg
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Row(
                                      children: [
                                        ClipRRect(borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                          backgroundColor: Colors.amber, 
                                          radius: 25, 
                                         foregroundImage: NetworkImage('assets/images/person2.jpg'),
                                        ),
                                   ),
      
                                   ClipRRect(borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, 
                                      radius: 25, 
                                     foregroundImage: NetworkImage('assets/images/person2.jpg'),
                                    ),
                                   ),
                                   const Spacer(),
                                   Container(
                                     height: 25,
                                     width: 80,
                                     color: AppColors.primaryBg,
                                     child: Center(
                                       child: Text(
                                         '100%',
                                         style: TextStyle(
                                         color: AppColors.primaryText, 
                                         ),
                                     ),
                                    ),
                                   ),
                                      ],
                                    ),
                                    const Spacer(),
                                  Container(
                                     height: 25,
                                     width: 80,
                                     color: AppColors.primaryBg,
                                     child: Center(
                                       child: Text(
                                         '10/10 Task',
                                         style: TextStyle(
                                         color: AppColors.primaryText, 
                                          ),
                                        ),
                                      ),
                                   ),
                                   Text(
                                   'Mobile Programming', 
                                   style: TextStyle(
                                     color: AppColors.primaryText, 
                                     fontSize: 20),
                                     ),
                                     Text(
                                   'Deadline 2 hari lagi', 
                                   style: TextStyle(
                                     color: AppColors.primaryText, 
                                     fontSize: 15),
                                     ),
                                  ],),
                              ),
      
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.secondaryBg
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Row(
                                      children: [
                                        ClipRRect(borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                          backgroundColor: Colors.amber, 
                                          radius: 25, 
                                         foregroundImage: NetworkImage('assets/images/person2.jpg'),
                                        ),
                                   ),
      
                                   ClipRRect(borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, 
                                      radius: 25, 
                                     foregroundImage: NetworkImage('assets/images/person2.jpg'),
                                    ),
                                   ),
                                   const Spacer(),
                                   Container(
                                     height: 25,
                                     width: 80,
                                     color: AppColors.primaryBg,
                                     child: Center(
                                       child: Text(
                                         '100%',
                                         style: TextStyle(
                                         color: AppColors.primaryText, 
                                         ),
                                     ),
                                    ),
                                   ),
                                      ],
                                    ),
                                    const Spacer(),
                                  Container(
                                     height: 25,
                                     width: 80,
                                     color: AppColors.primaryBg,
                                     child: Center(
                                       child: Text(
                                         '10/10 Task',
                                         style: TextStyle(
                                         color: AppColors.primaryText, 
                                          ),
                                        ),
                                      ),
                                   ),
                                   Text(
                                   'Mobile Programming', 
                                   style: TextStyle(
                                     color: AppColors.primaryText, 
                                     fontSize: 20),
                                     ),
                                     Text(
                                   'Deadline 2 hari lagi', 
                                   style: TextStyle(
                                     color: AppColors.primaryText, 
                                     fontSize: 15),
                                     ),
                                  ],),
                              ),
      
                              Container(
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.secondaryBg
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    Row(
                                      children: [
                                        ClipRRect(borderRadius: BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                          backgroundColor: Colors.amber, 
                                          radius: 25, 
                                         foregroundImage: NetworkImage('assets/images/person2.jpg'),
                                        ),
                                   ),
      
                                   ClipRRect(borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                      backgroundColor: Colors.amber, 
                                      radius: 25, 
                                     foregroundImage: NetworkImage('assets/images/person2.jpg'),
                                    ),
                                   ),
                                   const Spacer(),
                                   Container(
                                     height: 25,
                                     width: 80,
                                     color: AppColors.primaryBg,
                                     child: Center(
                                       child: Text(
                                         '100%',
                                         style: TextStyle(
                                         color: AppColors.primaryText, 
                                         ),
                                     ),
                                    ),
                                   ),
                                      ],
                                    ),
                                    const Spacer(),
                                  Container(
                                     height: 25,
                                     width: 80,
                                     color: AppColors.primaryBg,
                                     child: Center(
                                       child: Text(
                                         '10/10 Task',
                                         style: TextStyle(
                                         color: AppColors.primaryText, 
                                          ),
                                        ),
                                      ),
                                   ),
                                   Text(
                                   'Mobile Programming', 
                                   style: TextStyle(
                                     color: AppColors.primaryText, 
                                     fontSize: 20),
                                     ),
                                     Text(
                                   'Deadline 2 hari lagi', 
                                   style: TextStyle(
                                     color: AppColors.primaryText, 
                                     fontSize: 15),
                                     ),
                                  ],),
                              ),
                            ],
                            ),
                          ),
                        
                          ],
                        ),
                      ),
                        Expanded(
                          child: Row(
                            children: [
                              const UpcomingTask(),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Text('My Friends', 
                                        style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 30),
                                        ),
                                        const Text('More', 
                                        style: TextStyle(
                                        color: AppColors.primaryText, 
                                        fontSize: 30),
                                        ),
                                        Icon(
                                          Ionicons.arrow_forward, 
                                          color: AppColors.primaryText,
                                          ),
                                      ],
                                    ),
                                    SizedBox(
                                    height: 20,
                                    ),
                                  ],
                                ),
                              ),
                              
                            ],
                          ),
                        ),
                        
                        ],
                      ),
      
                ))
              ]),
            )
          ],
        ),
      ),
    );
  }
}

