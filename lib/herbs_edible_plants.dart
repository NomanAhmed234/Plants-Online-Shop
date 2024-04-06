import 'package:flutter/material.dart';
import 'package:product/data.dart';
import 'package:product/product_screen.dart';

class HerbsEdibleplantsScreen extends StatelessWidget {
  const HerbsEdibleplantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        title: const Text("Noman"),
      ),
      body: ListView.builder(
          itemCount: herbsAndEdiblePlantsData.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen(
                                    data: herbsAndEdiblePlantsData[index],
                                  )));
                    },
                    leading: Image.network(
                      herbsAndEdiblePlantsData[index]['image'],
                      width: 100,
                      height: 100,
                    ),
                    tileColor: Colors.white,
                    subtitle: Text(
                        herbsAndEdiblePlantsData[index]['description'],
                        style: TextStyle(color: Colors.grey.shade600)),
                    title: Text(herbsAndEdiblePlantsData[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green))),
                Divider(color: Colors.green.shade100)
              ],
            );
          }),
    );
  }
}
