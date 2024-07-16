import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:gedebooks/components/color/color.dart';

class DropPoint extends StatelessWidget {
  const DropPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.appBarColor,
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2F4F8),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 70),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Cari lokasi",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                              ),
                              style: TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 300,
                        child: FlutterMap(
                          options: MapOptions(
                            initialCenter: LatLng(-7.5218645, 110.2244956), // Latitude dan Longitude Koordinat Kampus 2 UNIMMA
                            initialZoom: 11,
                          ),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // Template UI Maps dengan OpenStreet
                              userAgentPackageName: 'com.example.app',
                            ),
                            RichAttributionWidget(
                              attributions: [
                                TextSourceAttribution(
                                  'OpenStreetMap contributors',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Menampilkan Widget Card
                      _buildDropPointCard(
                        title: 'DROP POINT MAGELANG 1',
                        subtitle: 'KOST TAMIKA',
                        address:
                            'F6HF+5X5, POJOK LAPANGAN PANDANSARI TIMUR, GLAGAK, SUMBERREJO, MERTOYUDAN, MAGELANG REGENCY, CENTRAL JAVA 56172',
                      ),
                      const SizedBox(height: 10),
                      _buildDropPointCard(
                        title: 'DROP POINT MAGELANG 2',
                        subtitle: 'KAMPUS 2 UNIMMA, SEKRE BEM FT',
                        address:
                            'F20DF+9IA PANDANSARI TIMUR, GLAGAK, SUMBERREJO, MERTOYUDAN, MAGELANG REGENCY, CENTRAL JAVA 56172',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Widegt Card Dibawah map
Widget _buildDropPointCard(
    {required String title,
    required String subtitle,
    required String address}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 5,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.appBarColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            address,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}
