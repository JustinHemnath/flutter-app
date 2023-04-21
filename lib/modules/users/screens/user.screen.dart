import "package:flutter/material.dart";
import "package:flutter_app/modules/users/controller/users.controller.dart";
import "package:flutter_app/widgets/Custom_Appbar.dart";
import "package:get/get.dart";

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    UsersController usercontroller = Get.put(UsersController());
    usercontroller.fetchUsers();

    return Scaffold(
        appBar: CustomAppbar(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: TextField(),
            ),
            Obx(
              () => usercontroller.usersData.isEmpty
                  ? const Text("No users to display")
                  : Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: usercontroller.usersData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 100, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Text(
                                  usercontroller.usersData[index]["name"],
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                            );
                          }),
                    ),
            )
          ],
        ));
  }
}
