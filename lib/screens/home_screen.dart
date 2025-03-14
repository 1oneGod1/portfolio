import 'package:flutter/material.dart';
import '../screens/profile_screen.dart';
import '../screens/resume_screen.dart';
import '../screens/portfolio_screen.dart';
import '../screens/contact_screen.dart';
import '../widgets/menu_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool isMenuOpen = false;
  bool isLoading = false;
  Widget currentScreen = const ProfileScreen();

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  void changeScreen(Widget screen) {
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      if (!mounted) return; //  Cegah error context async

      setState(() {
        currentScreen = screen;
        isMenuOpen = false;
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //  Header (App Bar)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: toggleMenu,
                ),
              ],
            ),
          ),

          //  Menu Dropdown dengan Animasi
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: isMenuOpen ? 200 : 0,
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  MenuButton(
                    label: "My Profile",
                    icon: Icons.person,
                    onTap: () => changeScreen(const ProfileScreen()),
                  ),
                  MenuButton(
                    label: "Resume",
                    icon: Icons.description,
                    onTap: () => changeScreen(const ResumeScreen()),
                  ),
                  MenuButton(
                    label: "Portfolio",
                    icon: Icons.work,
                    onTap: () => changeScreen(const PortfolioScreen()),
                  ),
                  MenuButton(
                    label: "Contact Me",
                    icon: Icons.email,
                    onTap: () => changeScreen(const ContactScreen()),
                  ),
                ],
              ),
            ),
          ),

          //  Halaman Konten dengan Efek Loading
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child:
                  isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : currentScreen,
            ),
          ),
        ],
      ),
    );
  }
}
