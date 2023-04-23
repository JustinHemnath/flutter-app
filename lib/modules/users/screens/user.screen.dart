import "package:flutter/material.dart";
import "package:flutter_app/modules/users/controller/users.controller.dart";
import "package:flutter_app/widgets/Common_Drawer.dart";
import "package:flutter_app/widgets/Custom_Appbar.dart";
import "package:get/get.dart";

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    UsersController usercontroller = Get.put(UsersController());
    usercontroller.fetchUsers();

    return Scaffold(
        appBar: CustomAppbar(appbarTitle: "Users List"),
        drawer: CommonDrawer(),
        body: Column(
          children: [
            Container(
              height: 130.0,
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              margin: const EdgeInsets.only(bottom: 30, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextField(
                    controller: nameController,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[900]),
                    ),
                    onPressed: () {
                      usercontroller.sendUser(enteredName: nameController.text);
                      nameController.clear();
                    },
                    child: const Text("SEND"),
                  )
                ],
              ),
            ),
            Obx(
              () => usercontroller.usersData.isEmpty
                  ? const Text("User list empty")
                  : Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: usercontroller.usersData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              child: Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(1, 0),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      color: Color.fromRGBO(203, 203, 203, 1),
                                    )
                                  ],
                                  color: Colors.grey[200],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Spacer(),
                                    Text(
                                      usercontroller.usersData[index]["name"],
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 20, 59, 82),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      onPressed: () {
                                        usercontroller.deleteUser(
                                            name: usercontroller
                                                .usersData[index]["name"]);
                                      },
                                      icon: const Icon(
                                        Icons.delete_rounded,
                                        size: 30,
                                      ),
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
            ),
          ],
        ));
  }
}
