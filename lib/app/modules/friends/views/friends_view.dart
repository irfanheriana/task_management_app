import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myfriends.dart';
import 'package:task_management_app/app/utils/widget/sidebar.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {

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
                  padding: !context.isPhone ? const EdgeInsets.all(50) : const EdgeInsets.all(20),
                  margin: !context.isPhone ? const EdgeInsets.all(10) : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: !context.isPhone ? BorderRadius.circular(50) : BorderRadius.circular(30),
                    ),

                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'People You May Know',
                       style: 
                       TextStyle(
                         fontSize: 30,
                         color: AppColors.primaryText
                       ),
                      ),

                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          clipBehavior: Clip.antiAlias,
                          itemCount: 10,
                          itemBuilder: (context, index){
                            return Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Stack(
                                children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: const Image(
                                  image:
                                NetworkImage('assets/images/person2.jpg'),
                                   ),
                                 ),
                                 Positioned(
                                   bottom: 10,
                                   left: 50,
                                   child: Text(
                                     'Irfan Heriana',
                                     style: 
                                     TextStyle(
                                      color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: 
                                    SizedBox(
                                      height: 36,
                                      width: 36,
                                      child: ElevatedButton(
                                        onPressed: (){},
                                        style: 
                                        ElevatedButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                          shape: 
                                          RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50),
                                          ),
                                        ),
                                        child: Icon(
                                          Ionicons.add_circle_outline,
                                        ),
                                        ),
                                    ),
                                    ),
                               ],
                              ),
                            );
                          }, 
                        ),
                      ),
                      MyFriends(),
                   ],
                 ),   
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
