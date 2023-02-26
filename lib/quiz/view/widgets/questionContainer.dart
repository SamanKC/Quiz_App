import 'package:flutter/material.dart';

Widget questionContainer() {
  return Container(
    height: 200,
    width: 400,
   
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text("07"),
                      Container(
                        height: 10,
                        width: 30,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10),
                                right: Radius.circular(10))),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text("07"),
                      Container(
                        height: 10,
                        width: 30,
                        decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10),
                                right: Radius.circular(10))),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
