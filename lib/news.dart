import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NewsScreen(),
  ));
}

class NewsScreen extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      'title': 'Breaking News: Major Event Happening Now!',
      'description': 'A detailed description of the breaking news event that is currently unfolding.',
      'image': 'https://via.placeholder.com/150', // Ganti dengan URL gambar yang sesuai
    },
    {
      'title': 'Tech Giants Release New Gadgets',
      'description': 'Tech giants have unveiled their latest gadgets at a grand event, promising innovation and excitement.',
      'image': 'https://via.placeholder.com/150', // Ganti dengan URL gambar yang sesuai
    },
    {
      'title': 'Sports Update: Team Wins Championship',
      'description': 'The local team has won the championship in a thrilling match that kept everyone on the edge of their seats.',
      'image': 'https://via.placeholder.com/150', // Ganti dengan URL gambar yang sesuai
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
        backgroundColor: Colors.blueAccent, // Blue color for AppBar
      ),
      body: ListView.builder(
        itemCount: newsItems.length,
        itemBuilder: (context, index) {
          final news = newsItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    news['image']!,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent, // Blue color for title
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        news['description']!,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
