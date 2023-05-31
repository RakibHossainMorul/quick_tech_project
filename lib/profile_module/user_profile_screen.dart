import 'package:flutter/material.dart';
import 'package:quick_tech_project/home_module/home_screen.dart';
import 'package:quick_tech_project/profile_module/dashboard_screen.dart';
import 'buyer_chat_screen.dart';
import 'edit_profile_screen.dart';
import 'manage_ads_screen.dart';
import 'manage_bidding_ads_screen.dart';
import 'saved_ads_screen.dart';
import 'saved_nilam_ads_screen.dart';
import 'seller_chat_screen.dart';
import 'shop_open_schedule_screen.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('User Profile'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  ))),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Column(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://picsum.photos/seed/picsum/200/300'),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Quick Tech IT',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView(
                children: [
                  _buildListTile(
                    context,
                    Icons.home,
                    'My DashBoard',
                    Colors.blue,
                    const DashBoard(),
                  ),
                  _buildListTile(context, Icons.person, 'Edit Profile',
                      Colors.blue, const EditProfileScreen()),
                  _buildListTile(context, Icons.manage_accounts, 'Manage Ads',
                      Colors.blue, const ManageAdsScreen()),
                  _buildListTile(context, Icons.feed_outlined, 'Saved Ads',
                      Colors.blue, const SavedAdsScreen()),
                  _buildListTile(
                      context,
                      Icons.feed_outlined,
                      'Saved Nilam Ads',
                      Colors.blue,
                      const SavedNilamAdsScreen()),
                  _buildListTile(
                      context,
                      Icons.feed_outlined,
                      'Manage Bidding Ads',
                      Colors.blue,
                      const ManageBiddingAdsScreen()),
                  _buildListTile(
                      context,
                      Icons.chat_bubble_outline,
                      'Chat With Seller',
                      Colors.blue,
                      const SellerChatScreen()),
                  _buildListTile(context, Icons.chat_bubble_outline,
                      'Chat with Buyer', Colors.blue, const BuyerChatScreen()),
                  _buildListTile(context, Icons.timelapse, 'Shop Open Schedule',
                      Colors.blue, const ShopOpenScheduleScreen()),
                  Card(
                    elevation: 2,
                    child: ListTile(
                        leading: const Icon(Icons.logout_outlined),
                        title: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, IconData icon, String title,
      Color textColor, Widget onTap) {
    return Card(
      elevation: 2,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(color: textColor),
        ),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => onTap),
        ),
      ),
    );
  }
}
