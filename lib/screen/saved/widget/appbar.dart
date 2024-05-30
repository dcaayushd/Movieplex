import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movieplex/controller/saved_controller.dart';

class SavedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final _savedController = Get.find<SavedController>();

  SavedAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: FadeInDown(
        delay: const Duration(milliseconds: 100),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _savedController.listOfSaved.isEmpty
                    ? Get.snackbar("Warning!", "You have nothing to remove",
                        snackPosition: SnackPosition.BOTTOM,
                        duration: const Duration(milliseconds: 2000),
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal)
                    : Get.defaultDialog(
                        barrierDismissible: false,
                        title: "Warning!",
                        content: const Text(
                          "Do you really wanna remove all items from this list?",
                          textAlign: TextAlign.center,
                        ),
                        confirmTextColor: Colors.white,
                        onCancel: () {},
                        onConfirm: () {
                          _savedController.removeAllItems();
                          Get.back();
                        });
              },
              icon: const Icon(
                Icons.delete_outline_outlined,
                color: Colors.red,
              ),
            ),
          ],
          title: const Text(
            "Saved Movies",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
    );
  }
}
