import 'package:flutter/material.dart';
import 'package:quick_tech_project/category_module/category_screen.dart';
import 'package:quick_tech_project/home_module/home_screen.dart';
import 'package:quick_tech_project/message_module/message_screen.dart';
import 'package:quick_tech_project/nilam_ad_module/nilam_ad_screen.dart';
import 'package:quick_tech_project/package_module/packages_screen.dart';
import 'package:quick_tech_project/post_ad_module/post_ad_screen.dart';
import 'package:quick_tech_project/profile_module/user_profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const NilamAdScreen(),
    const CategoryScreen(),
    const PackageScreen(),
    const MessageScreen(),
    const UserProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "Post Ad",
        backgroundColor: Colors.blue,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PostAdScreen(),
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildNavItem(Icons.home, 'Home', 0),
            _buildNavItem(Icons.sell_outlined, 'Add Nilam', 1),
            _buildNavItem(Icons.category_outlined, 'Category', 2),
            //const SizedBox(width: 30),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Post Ad",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ),
            _buildNavItem(Icons.card_giftcard_outlined, 'Packages', 3),
            _buildNavItem(Icons.chat, 'Message', 4),
            _buildNavItem(Icons.person, 'Profile', 5),
          ],
        ),
      ),
      body: _pages[_currentIndex],
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () {
        _onTabTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _currentIndex == index ? Colors.blue : Colors.black,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: _currentIndex == index ? Colors.blue : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
