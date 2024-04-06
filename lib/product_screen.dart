import 'package:flutter/material.dart';
import 'package:product/home_screen.dart';
import 'package:product/order_screen.dart';

class ProductScreen extends StatefulWidget {
  final Map data;
  const ProductScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int counter = 1;
  late double newprice;

  @override
  void initState() {
    super.initState();
    newprice = widget.data['price'] * counter; // Initialize newprice
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Expanded(
              flex: 1,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(),
                    Center(
                      child: Hero(
                        tag: 'hero',
                        child: CircleAvatar(
                          radius: 123,
                          backgroundColor: Colors.green,
                          child: CircleAvatar(
                            radius: 120,
                            backgroundImage:
                                NetworkImage('${widget.data['image']}'),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white70,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.data['name']}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            Text(
                              '${widget.data['description']}',
                              style: TextStyle(fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade700),
                                    ),
                                    Text(
                                      'Rs.${newprice.toStringAsFixed(2)}', // Use newprice here
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          counter++;
                                          newprice =
                                              widget.data['price'] * counter;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Text(
                                      "$counter",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade700),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (counter > 1) {
                                            // Prevent counter from going below 1
                                            counter--;
                                            newprice =
                                                widget.data['price'] * counter;
                                          }
                                        });
                                      },
                                      icon: Icon(
                                        Icons.minimize,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                minimumSize: const Size.fromHeight(40), // NEW
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Confirm Your Order',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      content: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                              'Product Name: ${widget.data['name']}'),
                                          Text('Product Quantity: ${counter}'),
                                          Text(
                                              'Product Price: ${widget.data['price']}'),
                                          Text(
                                              'Total Price: ${widget.data['price'] * counter}'),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            // Close the alert dialog
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            'Cancel',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text(
                                                    'Congratulation!',
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  content: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        "Your order has been Placed.",
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade800,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        "Thanks for using our Application.",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      onPressed: () {
                                                        //  goto the homescreen
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        OrderScreen(
                                                                          orderData:
                                                                              widget.data,
                                                                          counter:
                                                                              counter,
                                                                        )));
                                                      },
                                                      child: Text(
                                                        'Ok',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.green),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Text(
                                            'Confirm',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                'Buy Now',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
