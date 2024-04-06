import 'package:flutter/material.dart';
import 'package:product/product_screen.dart';

class OutdoorPlantsScreen extends StatelessWidget {
  const OutdoorPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> outdoorPlantsData = [
      {
        'name': 'Lavender',
        'price': 16.99,
        'description':
            'Lavender is a fragrant herb known for its calming aroma and beautiful purple flowers. It prefers full sunlight and well-drained soil.',
        'image':
            'https://i.pinimg.com/474x/79/4c/be/794cbe424ada70dc31fc886e7f9d8bd8.jpg',
      },
      {
        'name': 'Rosemary',
        'price': 14.99,
        'description':
            'Rosemary is a versatile herb with needle-like leaves and a woody aroma. It thrives in full sunlight and well-drained soil.',
        'image':
            'https://i.pinimg.com/474x/4f/2a/25/4f2a254bf11729dc388835ebc59a5880.jpg',
      },
      {
        'name': 'Hydrangea',
        'price': 21.99,
        'description':
            'Hydrangeas are lush flowers known for their large clusters of blooms and vibrant colors. They symbolize gratitude, abundance, and heartfelt emotions, making them popular choices for gifts and decorations.',
        'image':
            'https://i.pinimg.com/474x/ef/5c/16/ef5c16c06f0a6e4b6224ce803606f06f.jpg',
      },
      {
        'name': 'Sunflower',
        'price': 18.99,
        'description':
            'Sunflowers are cheerful flowers known for their large, yellow blooms and bright appearance. They symbolize adoration, loyalty, and longevity.',
        'image':
            'https://i.pinimg.com/474x/a2/f6/1d/a2f61d1fde4205f439668f5bb467786b.jpg',
      },
      {
        'name': 'Geranium',
        'price': 12.99,
        'description':
            'Geraniums are vibrant flowers with clusters of blooms in various colors. They thrive in full sunlight and well-drained soil, making them popular choices for garden beds and containers.',
        'image':
            'https://i.pinimg.com/474x/9d/24/4c/9d244c82ebfafa3172f85166daa54770.jpg',
      },
      {
        'name': 'Dahlia',
        'price': 23.99,
        'description':
            'Dahlias are vibrant flowers known for their bold colors and intricate petal formations. They symbolize elegance, dignity, and inner strength, making them popular choices for bouquets and garden decorations.',
        'image':
            'https://i.pinimg.com/474x/a2/cd/7b/a2cd7bf2a56679de24c79735dac2174f.jpg',
      },
      {
        'name': 'Peony',
        'price': 26.99,
        'description':
            'Peonies are fragrant flowers with large, fluffy blooms and a variety of colors. They symbolize prosperity, romance, and good fortune, making them popular choices for weddings and celebrations.',
        'image':
            'https://i.pinimg.com/474x/82/d4/66/82d4666949e8eb38924499c222fdcff4.jpg',
      },
      {
        'name': 'Begonia',
        'price': 15.99,
        'description':
            'Begonias are colorful flowers with waxy leaves and blooms in various shades. They prefer partial shade and well-drained soil, making them suitable for garden beds and hanging baskets.',
        'image':
            'https://i.pinimg.com/474x/6f/68/6e/6f686e2b6c17ef4fd1039c29affcd3cd.jpg',
      },
      {
        'name': 'Clematis',
        'price': 19.99,
        'description':
            'Clematis is a climbing vine known for its stunning blooms in various colors. They prefer full sunlight and well-drained soil, making them ideal for trellises and arbors.',
        'image':
            'https://i.pinimg.com/474x/3a/f9/0d/3af90dcfa8f4f1478afbacde96961768.jpg',
      },
      {
        'name': 'Petunia',
        'price': 14.99,
        'description':
            'Petunias are colorful annual flowers with trumpet-shaped blooms. They thrive in full sunlight and well-drained soil, making them popular choices for garden borders and containers.',
        'image':
            'https://i.pinimg.com/474x/3c/93/a0/3c93a0e1cf4405684935dce392b9ff76.jpg',
      },
      {
        'name': 'Marigold',
        'price': 11.99,
        'description':
            'Marigolds are cheerful flowers with bright blooms in shades of yellow and orange. They prefer full sunlight and well-drained soil, making them perfect for garden beds and containers.',
        'image':
            'https://i.pinimg.com/474x/79/c1/98/79c198d3744c1f7fefefc83c8c445394.jpg',
      },
      {
        'name': 'Daisy',
        'price': 13.99,
        'description':
            'Daisies are cheerful flowers with white petals and a yellow center. They symbolize innocence, purity, and new beginnings, making them popular choices for weddings and celebrations.',
        'image':
            'https://i.pinimg.com/474x/30/7b/71/307b713210523a7b53826ee3684b0476.jpg',
      },
      {
        'name': 'Zinnia',
        'price': 17.99,
        'description':
            'Zinnias are vibrant annual flowers with colorful blooms in various shapes. They thrive in full sunlight and well-drained soil, making them ideal for garden borders and cutting gardens.',
        'image':
            'https://i.pinimg.com/474x/9b/b5/e4/9bb5e4a084ff131c316c5732673916d9.jpg',
      },
      {
        'name': 'Snapdragon',
        'price': 16.99,
        'description':
            'Snapdragons are tall flowers with spiky blooms in shades of pink, red, yellow, and white. They prefer full sunlight and well-drained soil, making them popular choices for garden beds and borders.',
        'image':
            'https://i.pinimg.com/474x/af/66/c3/af66c365c0278d449db3383cdd0f48ad.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Noman"),
      ),
      body: ListView.builder(
          itemCount: outdoorPlantsData.length,
          itemBuilder: (context, int index) {
            return Column(
              children: [
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductScreen(
                                    data: outdoorPlantsData[index],
                                  )));
                    },
                    leading: Image.network(
                      outdoorPlantsData[index]['image'],
                      width: 100,
                      height: 100,
                    ),
                    tileColor: Colors.white,
                    subtitle: Text(outdoorPlantsData[index]['description'],
                        style: TextStyle(color: Colors.grey.shade600)),
                    title: Text(outdoorPlantsData[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green))),
                Divider(color: Colors.green.shade100)
              ],
            );
          }),
    );
  }
}
