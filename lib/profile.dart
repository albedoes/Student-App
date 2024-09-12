import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent, // Blue color for AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bagian atas (Gambar profil dan nama)
            Container(
              color: Colors.blueAccent, // Blue color for the profile header
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'Dika1aseli.jpg'), // Ganti dengan path gambar profil kamu
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dika Hadi Permana',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Informasi detail pengguna
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ProfileDetailRow(
                    icon: Icons.email,
                    label: 'Email',
                    value: 'dika.hadi@example.com',
                  ),
                  ProfileDetailRow(
                    icon: Icons.phone,
                    label: 'Phone',
                    value: '+62 812-3456-7890',
                  ),
                  ProfileDetailRow(
                    icon: Icons.location_on,
                    label: 'Location',
                    value: 'Jakarta, Indonesia',
                  ),
                ],
              ),
            ),

            // Tombol Pengaturan dan Logout
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Aksi untuk tombol Edit Profile
                    },
                    icon: Icon(Icons.edit),
                    label: Text('Edit Profile', style: TextStyle(color: Colors.white)), // White color for text
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.blueAccent, // Blue color for button
                      minimumSize: Size(double.infinity, 50),
                    ),
                  ),
                  SizedBox(height: 10),
                  OutlinedButton.icon(
                    onPressed: () {
                      // Aksi untuk tombol Logout
                    },
                    icon: Icon(Icons.logout, color: Colors.red),
                    label: Text('Logout', style: TextStyle(color: Colors.red)),
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  ProfileDetailRow(
      {required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon,
              color: Colors.blueAccent, size: 30), // Blue color for icons
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(137, 255, 255, 255),
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
