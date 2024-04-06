import 'package:flutter/material.dart';
import 'package:product/bottom_navbar.dart';
import 'package:product/cart_screen.dart';
import 'package:product/data.dart';
import 'package:product/favorite_screen.dart';
import 'package:product/flowers.dart';
import 'package:product/herbs_edible_plants.dart';

import 'package:product/indoor_plants.dart';
import 'package:product/outdoor_plants.dart';
import 'package:product/plants.dart';
import 'package:product/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), // This creates a new instance of HomeScreen, which is incorrect
    FavoriteScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final List trendingProduct = [];
    trendingProduct.add(flowersData);
    trendingProduct.add(plantsData);
    trendingProduct.add(indoorPlantsData);
    trendingProduct.add(outdoorPlantsData);
    trendingProduct.add(herbsAndEdiblePlantsData);

    bool isChange = false;
    Color myColor = Color(0xFF329c9d);
    List data = [
      {
        'category': "Plants",
        "image":
            "https://t4.ftcdn.net/jpg/02/68/17/95/360_F_268179518_JxhMIr78eZna4MNeI7XJGme4w8kneZon.jpg",
        'screen': PlantsScreen()
      },
      {
        'category': "Flowers",
        "image":
            "https://i.pinimg.com/474x/d1/5c/4e/d15c4e5d222766d8e7a2a6fbc19b84a8.jpg",
        'screen': FlowersScreen()
      },
      {
        'category': "Herbs",
        "image":
            "https://i.pinimg.com/474x/b5/a3/00/b5a300bd972518791894291eeaa29222.jpg",
        'screen': HerbsEdibleplantsScreen()
      },
      {
        'category': "Indoor",
        "image":
            "https://i.pinimg.com/474x/39/bb/d3/39bbd31f8e8946917e552258b246ac8e.jpg",
        'screen': IndoorPlantsScreen()
      },
      {
        'category': "Outdoor",
        "image":
            "https://i.pinimg.com/474x/6f/68/6e/6f686e2b6c17ef4fd1039c29affcd3cd.jpg",
        'screen': OutdoorPlantsScreen()
      },
    ];
    List<Map<String, dynamic>> additionalFeaturesData = [
      {
        'name': 'Plant Care Products',
        'description':
            'Offer a selection of plant care products such as fertilizers, potting soil, planters, watering cans, misters, and gardening tools.',
        'image':
            'https://i.pinimg.com/474x/99/f4/02/99f402d092945e2bd3d213979aaf6f51.jpg',
      },
      {
        'name': 'Plant Identification Service',
        'description':
            'Incorporate a feature where users can upload photos of their plants for identification. Offer this service for free for a limited number of identifications and then charge a fee for additional identifications or advanced features.',
        'image':
            'https://i.pinimg.com/474x/6a/3a/eb/6a3aeb48e69f20b559e3d4e5856af109.jpg',
      },
      {
        'name': 'Plant Accessories',
        'description':
            'Sell decorative accessories for plants such as plant stands, trellises, decorative rocks, and plant-themed artwork.',
        'image':
            'https://i.pinimg.com/474x/57/dc/6e/57dc6e2a6bc90f253246f72ba0b34861.jpg',
      },
      {
        'name': 'Subscription Services',
        'description':
            'Offer subscription boxes or monthly plant kits containing curated plants, plant care products, and gardening tips.',
        'image':
            'https://i.pinimg.com/474x/c8/8b/a4/c88ba43e1e2823959eab0ade7ed340db.jpg',
      },
      {
        'name': 'Plant Workshops or Classes',
        'description':
            'Host virtual workshops or classes on topics such as plant care tips, propagation techniques, or DIY plant projects.',
        'image':
            'https://i.pinimg.com/474x/34/ee/30/34ee30595b3d46633328fbf4beab7bc7.jpg',
      },
      {
        'name': 'Plant Consultation Services',
        'description':
            'Provide personalized plant consultation services where users can schedule virtual appointments with plant experts for advice on plant care, troubleshooting plant problems, or designing indoor or outdoor plant spaces.',
        'image':
            'https://i.pinimg.com/474x/b8/d4/c3/b8d4c356bbe43204962f619d09371ff2.jpg',
      },
      {
        'name': 'Plant-Based Merchandise',
        'description':
            'Create and sell plant-themed merchandise such as t-shirts, mugs, tote bags, or phone cases.',
        'image':
            'https://i.pinimg.com/474x/18/4d/fb/184dfb78c2e4cfe7a5eeb2c2557610a0.jpg',
      },
      {
        'name': 'Plant Rentals',
        'description':
            'Offer a plant rental service for events, photoshoots, or temporary home decor.',
        'image':
            'https://i.pinimg.com/474x/12/d6/e5/12d6e5133a8808da634a1981dd2c72a8.jpg',
      },
      {
        'name': 'Plant-themed Games or Challenges',
        'description':
            'Integrate gamification features into your app by incorporating plant-themed games, challenges, or quizzes.',
        'image':
            'https://i.pinimg.com/474x/77/e2/85/77e285b1774f42a41483a85465698abb.jpg',
      },
      {
        'name': 'Premium Content or Features',
        'description':
            'Offer premium content or features such as exclusive articles, advanced plant care guides, or early access to new features for users who subscribe or pay a one-time fee.',
        'image':
            'https://i.pinimg.com/474x/2b/07/80/2b07803cc9e4966db45c1691c84d9744.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => data[index]['screen']));
                    },
                    child: Card(
                        color: Colors.green,
                        child: Container(
                          height: null,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.white,
                                  backgroundImage: NetworkImage(
                                    data[index]['image'],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      data[index]['category'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.white)),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      data[index]['screen']));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(2),
                                          child: Text(
                                            "Show",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.green),
                                          ),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Trending Products",
              style: TextStyle(color: Colors.green),
            ),
          ),
          Expanded(
              flex: 1,
              child: ListView.builder(
                  itemCount: trendingProduct.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (conext) => ProductScreen(
                                    data: trendingProduct[index][index + 2])));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.green,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                  trendingProduct[index][index + 2]['image'],
                                ),
                              ),
                            ),
                          ),
                          Text(trendingProduct[index][index + 2]['name'])
                        ],
                      ),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Our Upcoming Services",
              style: TextStyle(color: Colors.green),
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: additionalFeaturesData.length,
                itemBuilder: (context, int index) {
                  return Column(
                    children: [
                      ListTile(
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => ProductScreen(
                        //                 data: additionalFeaturesData[index],
                        //               )));
                        // },
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                            additionalFeaturesData[index]['image'],
                          ),
                        ),
                        tileColor: Colors.white,
                        subtitle: Text(
                            additionalFeaturesData[index]['description'],
                            style: TextStyle(color: Colors.grey.shade600)),
                        title: Text(additionalFeaturesData[index]['name'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              isChange = !isChange;
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: isChange ? Colors.green : Colors.grey,
                            size: 20,
                          ),
                        ),
                      ),
                      Divider(color: Colors.grey.shade300),
                    ],
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
