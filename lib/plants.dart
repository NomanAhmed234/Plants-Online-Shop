import 'package:flutter/material.dart';
import 'package:product/data.dart';

import 'package:product/product_screen.dart';

class PlantsScreen extends StatelessWidget {
  const PlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Noman"),
      ),
      body: ListView.builder(
          itemCount: plantsData.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen(
                                    data: plantsData[index],
                                  )));
                    },
                    leading: Hero(
                      tag: 'hero',
                      child: Image.network(
                        plantsData[index]['image'],
                        width: 100,
                        height: 100,
                      ),
                    ),
                    tileColor: Colors.white,
                    subtitle: Text(plantsData[index]['description'],
                        style: TextStyle(color: Colors.grey.shade600)),
                    title: Text(plantsData[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green))),
                Divider(color: Colors.green.shade100)
              ],
            );
          }),
    );
  }
}
