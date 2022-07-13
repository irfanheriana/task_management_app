import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/app/utils/style/AppColors.dart';

class profile extends StatelessWidget {
  const profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: !context.isPhone ? Row(
          children: [
            const Expanded(
              flex: 1,
              child: ClipRRect(
              child: CircleAvatar(
              backgroundColor: Colors.amber, 
              radius: 130, 
              foregroundImage: NetworkImage('assets/images/person2.jpg'),
              ),
                                  ),
            ),
      // SizedBox(
      //   width: 20,
      // ), 
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                  'Irfan Heriana', 
                    style: const TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 40,
                      ),
                    ),
        
                    const Text(
                  'irfanheriana17@gmail.com', 
                    style: const TextStyle(
                    color: AppColors.primaryText, 
                    fontSize: 16,
                      ),
                    ),
            ],
          ),
        ),
          ],
        ) : Center(
          child: Column(
            children: const [
              SizedBox(
                height: 20,
              ),
              ClipRRect(
              child: CircleAvatar(
              backgroundColor: Colors.amber, 
              radius: 100, 
              foregroundImage: NetworkImage('assets/images/person2.jpg'),
              ),
                                  ),
      SizedBox(
          height: 20,
      ), 
          Text(
              'Irfan Heriana', 
                style: TextStyle(
                color: AppColors.primaryText, 
                fontSize: 25,
                  ),
                ),
          
                Text(
              'irfanheriana17@gmail.com', 
                style: TextStyle(
                color: AppColors.primaryText, 
                fontSize: 16,
                  ),
                ),
            ],
          ),
        ),
    );
  }
}
