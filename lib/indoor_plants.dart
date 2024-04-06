import 'package:flutter/material.dart';
import 'package:product/data.dart';
import 'package:product/product_screen.dart';

class IndoorPlantsScreen extends StatelessWidget {
  const IndoorPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: const Text("Noman"),
      ),
      body: ListView.builder(
          itemCount: indoorPlantsData.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen(
                                    data: indoorPlantsData[index],
                                  )));
                    },
                    leading: Image.network(
                      indoorPlantsData[index]['image'],
                      width: 100,
                      height: 100,
                    ),
                    tileColor: Colors.white,
                    subtitle: Text(indoorPlantsData[index]['description'],
                        style: TextStyle(color: Colors.grey.shade600)),
                    title: Text(indoorPlantsData[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green))),
                Divider(color: Colors.green.shade100)
              ],
            );
          }),
    );
  }
}
