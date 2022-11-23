import 'package:flutter/material.dart';
import 'package:getxapp/controllers/my_controller.dart';
import 'package:get/get.dart';
import 'package:getxapp/total_page.dart';

class MyCart extends StatelessWidget {
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "Books",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => c.increment(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 25,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Obx(
                  () {
                    return Text(
                      "${c.books.toString()}",
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => c.decrement(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 25,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  "Pens",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => c.incrementPen(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 25,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Obx(
                  () {
                    return Text(
                      "${c.pens.toString()}",
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () => c.decrementPen(),
                  child: const CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 25,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Spacer(),
                Container(
                  width: 150,
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
                    onPressed: () => Get.to(() => TotalPage()),
                    child: const Text(
                      'Total',
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
