import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {'icon': Icons.home, 'title': 'Home', 'description': 'Go to Home'},
      {'icon': Icons.person, 'title': 'Profile', 'description': 'View Profile'},
      {
        'icon': Icons.settings,
        'title': 'Settings',
        'description': 'Adjust Settings'
      },
      {
        'icon': Icons.message,
        'title': 'Messages',
        'description': 'Read Messages'
      },
      {
        'icon': Icons.notifications,
        'title': 'Notifications',
        'description': 'Check Notifications'
      },
      {'icon': Icons.camera, 'title': 'Camera', 'description': 'Open Camera'},
      {'icon': Icons.map, 'title': 'Map', 'description': 'View Map'},
      {
        'icon': Icons.shopping_cart,
        'title': 'Cart',
        'description': 'View Cart'
      },
      {'icon': Icons.help, 'title': 'Help', 'description': 'Get Help'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade100, Colors.blue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Aksi saat menu ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text('${menuItems[index]['title']} tapped')),
                );
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.grey.shade200],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        menuItems[index]['icon'],
                        size: 50,
                        color: Colors.lightBlueAccent,
                      ),
                      SizedBox(height: 5),
                      Text(
                        menuItems[index]['title'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromARGB(255, 2, 2, 2),
                          fontFamily:
                              'Roboto', // Change to your preferred modern font
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        menuItems[index]['description'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
