// screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            // User Info Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  ),
                  SizedBox(height: 10),
                  Text('t4047398889', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Nickname: AJJKH', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text('৳ 0.36', style: TextStyle(fontSize: 24, color: AppTheme.golden, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Member Center
            Text('Member Center', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.golden)),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                _buildMemberCenterItem(Icons.card_giftcard, 'Reward Center'),
                _buildMemberCenterItem(Icons.history, 'Betting Record'),
                _buildMemberCenterItem(Icons.trending_up, 'Profit/Loss'),
                _buildMemberCenterItem(Icons.file_download, 'Deposit Record'),
                _buildMemberCenterItem(Icons.file_upload, 'Withdrawal Record'),
                _buildMemberCenterItem(Icons.receipt_long, 'Account Record'),
                _buildMemberCenterItem(Icons.account_circle, 'My Account'),
                _buildMemberCenterItem(Icons.security, 'Security Center'),
                _buildMemberCenterItem(Icons.person_add, 'Invite Friends'),
                _buildMemberCenterItem(Icons.message, 'Internal Message'),
                _buildMemberCenterItem(Icons.lightbulb, 'Suggestion'),
                _buildMemberCenterItem(Icons.support_agent, 'Customer Service'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberCenterItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 30, color: AppTheme.golden),
        SizedBox(height: 5),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}```

এই কোডগুলো দিয়ে আপনার অ্যাপ এবং সার্ভারের মূল কাঠামো তৈরি হয়ে যাবে। এরপর আপনাকে API কলিং (`http` প্যাকেজ ব্যবহার করে) এবং অন্যান্য পেজগুলো (যেমন Deposit, Withdraw) তৈরি করতে হবে।
