import 'package:flutter/material.dart';
import 'package:product/home_screen.dart';

class OrderScreen extends StatelessWidget {
  final Map orderData;
  final int counter;
  const OrderScreen(
      {super.key, required this.orderData, required this.counter});

  @override
  Widget build(BuildContext context) {
    List orders = [];
    orders.add(orderData);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.back_hand),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
        ),
        title: Text("Order Page"),
      ),
      body: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, int index) {
            return Card(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 64,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(orders[index]['image']),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              orders[index]['name'].toString(),
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              orders[index]['description'].toString(),
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Product Price",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "${orders[index]['price']}".toString(),
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Product Quantity",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "${counter}".toString(),
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Price",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "${orders[index]['price'] * counter}"
                                      .toString(),
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            // Text(orders[index]['price'].toString()),
                            // Text("${orders[index]['price'] * counter}"
                            //     .toString()),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
