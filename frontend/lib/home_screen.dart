// screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/utils/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // Top Banner Carousel
            CarouselSlider(
              options: CarouselOptions(
                height: 180.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage('https://via.placeholder.com/400x200.png/004D40/FFFFFF?text=Bonus+Offer+$i'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 16),

            // Deposit and Withdraw Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Expanded(child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.add_circle), label: Text('Deposit'))),
                  SizedBox(width: 16),
                  Expanded(child: ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.remove_circle), label: Text('Withdraw'))),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Hot Games Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('HOT GAMES', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.golden)),
            ),
            SizedBox(height: 10),
            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GameCard(gameName: 'Game ${index + 1}');
                },
              ),
            ),
             SizedBox(height: 20),

            // Jackpot Display
            Column(
              children: [
                Text('Jackpot', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppTheme.golden, letterSpacing: 5)),
                SizedBox(height: 8),
                Text(
                  '৳ 106,881,750.50',
                  style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  final String gameName;
  const GameCard({super.key, required this.gameName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/150/004D40/FFFFFF?text=${gameName.replaceAll(' ', '+')}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(gameName, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
