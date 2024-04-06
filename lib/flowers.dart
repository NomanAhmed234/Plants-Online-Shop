import 'package:flutter/material.dart';
import 'package:product/product_screen.dart';

class FlowersScreen extends StatelessWidget {
  const FlowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> flowersData = [
      {
        'name': 'Rose',
        'price': 29.99,
        'description':
            'Roses are classic symbols of love and beauty. They come in a variety of colors and are perfect for expressing emotions on special occasions.',
        'image':
            'https://i.pinimg.com/474x/9d/bc/0b/9dbc0b11607672bf741798274cc9a944.jpg',
      },
      {
        'name': 'Tulip',
        'price': 19.99,
        'description':
            'Tulips are spring-blooming flowers known for their bright colors and distinct shape. They are commonly associated with love and happiness.',
        'image':
            'https://i.pinimg.com/474x/e7/30/29/e73029e052ec90e5b8cf2f4c416718d2.jpg',
      },
      {
        'name': 'Sunflower',
        'price': 24.99,
        'description':
            'Sunflowers are cheerful flowers known for their large, yellow blooms and bright appearance. They symbolize adoration, loyalty, and longevity.',
        'image':
            'https://i.pinimg.com/736x/97/74/f1/9774f1b776645861dfcdc75f2e5c4a31.jpg',
      },
      {
        'name': 'Lily',
        'price': 34.99,
        'description':
            'Lilies are elegant flowers with large, showy blooms and a pleasant fragrance. They come in various colors and are often used in bouquets and floral arrangements.',
        'image':
            'https://i.pinimg.com/474x/37/86/b5/3786b5545767b793de6edd0a0fcda8b8.jpg',
      },
      {
        'name': 'Daisy',
        'price': 14.99,
        'description':
            'Daisies are cheerful flowers with white petals and a yellow center. They symbolize innocence, purity, and new beginnings, making them popular choices for weddings and celebrations.',
        'image':
            'https://i.pinimg.com/474x/ef/52/e0/ef52e0768b7bf86974824e5c456127b6.jpg',
      },
      {
        'name': 'Orchid',
        'price': 39.99,
        'description':
            'Orchids are exotic flowers known for their intricate blooms and elegant appearance. They symbolize love, beauty, and luxury, making them popular gifts for special occasions.',
        'image':
            'https://i.pinimg.com/474x/7c/82/32/7c8232241405c60a5400bb72efba97d8.jpg',
      },
      {
        'name': 'Carnation',
        'price': 19.99,
        'description':
            'Carnations are versatile flowers with ruffled petals and a spicy fragrance. They come in various colors and are often used in bouquets, corsages, and floral arrangements.',
        'image':
            'https://i.pinimg.com/474x/71/f6/2a/71f62a452df4c98176dd284662a7fba1.jpg',
      },
      {
        'name': 'Peony',
        'price': 49.99,
        'description':
            'Peonies are fragrant flowers with large, fluffy blooms and a variety of colors. They symbolize prosperity, romance, and good fortune, making them popular choices for weddings and celebrations.',
        'image':
            'https://i.pinimg.com/474x/22/b8/64/22b86457e421fe776c142bdce36cc486.jpg',
      },
      {
        'name': 'Hydrangea',
        'price': 29.99,
        'description':
            'Hydrangeas are lush flowers known for their large clusters of blooms and vibrant colors. They symbolize gratitude, abundance, and heartfelt emotions, making them popular choices for gifts and decorations.',
        'image':
            'https://i.pinimg.com/474x/54/c2/dd/54c2ddd13f2ed919ac4dc7f61fcffeea.jpg',
      },
      {
        'name': 'Iris',
        'price': 24.99,
        'description':
            'Irises are elegant flowers known for their unique shape and striking colors. They symbolize faith, hope, and wisdom, making them popular choices for gardens and floral arrangements.',
        'image':
            'https://i.pinimg.com/474x/d1/5c/4e/d15c4e5d222766d8e7a2a6fbc19b84a8.jpg',
      },
      {
        'name': 'Chrysanthemum',
        'price': 19.99,
        'description':
            'Chrysanthemums are colorful flowers known for their longevity and versatility. They come in a variety of shapes and sizes and symbolize joy, optimism, and friendship.',
        'image':
            'https://i.pinimg.com/474x/95/bb/cc/95bbcca1c4e67801cf51b9ec0c1f7cb0.jpg',
      },
      {
        'name': 'Dahlia',
        'price': 34.99,
        'description':
            'Dahlias are vibrant flowers known for their bold colors and intricate petal formations. They symbolize elegance, dignity, and inner strength, making them popular choices for bouquets and garden decorations.',
        'image':
            'https://i.pinimg.com/474x/ee/af/af/eeafafe43e9bf353f1e8c168d2b2afb4.jpg',
      },
      {
        'name': 'Anemone',
        'price': 29.99,
        'description':
            'Anemones are delicate flowers known for their vibrant colors and dainty petals. They symbolize anticipation, protection, and relaxation, making them popular choices for weddings and special occasions.',
        'image':
            'https://i.pinimg.com/474x/05/c9/72/05c9722d949903225cb75b7daccd7b91.jpg',
      },
      {
        'name': 'Gardenia',
        'price': 39.99,
        'description':
            'Gardenias are fragrant flowers known for their creamy white blooms and glossy green leaves. They symbolize purity, love, and grace, making them popular choices for bridal bouquets and corsages.',
        'image':
            'https://i.pinimg.com/474x/72/6a/f2/726af26fef2be6c83432c07423de77ea.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Noman"),
      ),
      body: ListView.builder(
          itemCount: flowersData.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen(
                                    data: flowersData[index],
                                  )));
                    },
                    leading: Image.network(
                      flowersData[index]['image'],
                      width: 100,
                      height: 100,
                    ),
                    tileColor: Colors.white,
                    subtitle: Text(flowersData[index]['description'],
                        style: TextStyle(color: Colors.grey.shade600)),
                    title: Text(flowersData[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green))),
                Divider(color: Colors.green.shade100)
              ],
            );
          }),
    );
  }
}
