import 'package:flutter/material.dart';
import 'package:getxapp/controllers/my_controller.dart';
import 'package:get/get.dart';
import 'package:getxapp/my_cart.dart';

class TotalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyController c = Get.put(MyController());
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total items",
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Obx(
              () => Text(
                "${c.sum.toString()}",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () => Get.back(),
                    child: const Text(
                      'Go back',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
