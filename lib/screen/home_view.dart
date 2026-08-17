import 'package:flutter/material.dart';
import 'package:whatsapp/userdata/chats_data.dart';
import 'package:whatsapp/utils/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: AppColors.greenColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: AppColors.whiteColor,
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chats[index]["profilePic"]),
            ),
            title: Text(
              chats[index]["name"],
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              chats[index]["message"],
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
            trailing: Text(
              chats[index]["time"],
              style: TextStyle(
                color: AppColors.greyColor,
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
          );
        },
      ),
    );
  }
}
