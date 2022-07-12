import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text('Upcoming Task', 
                          style: TextStyle(
            color: AppColors.primaryText, 
            fontSize: 30),
            ),
            SizedBox(
            height: 20,
            ),
                                    
             SizedBox(
                              height: 400,
                              child: ListView(
                                clipBehavior: Clip.antiAlias,
                                scrollDirection: Axis.vertical, 
                                shrinkWrap: true,
                                children: [
        Container(
          height: 200,
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
          height: 200,
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
    );
  }
}

