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
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ask Meta AI or Search",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
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
