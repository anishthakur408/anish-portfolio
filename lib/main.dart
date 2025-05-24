import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anish Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            NavBar(),
            HeroSection(),
          ],
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "  A K  ",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin, color: Colors.white),
                onPressed: () => _launchURL("https://www.linkedin.com/in/anish-kumar-456646318/"),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github, color: Colors.white),
                onPressed: () => _launchURL("https://github.com/anishthakur408"),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                onPressed: () => _launchURL("https://www.instagram.com/anish_.thakur"),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.xTwitter, color: Colors.white),
                onPressed: () => _launchURL("https://www.instagram.com/anish_.thakur"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(42),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "HI I'm ANISH",
                  style: TextStyle(fontSize: 96, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 30),
                const Text(
                  "I am a Flutter & Python Developer",
                  style: TextStyle(fontSize: 64, color: Colors.white70),
                ),
                const SizedBox(height: 16),
                const Text(
                  "I build modern apps using Flutter and Python. Passionate about crafting smooth UI, writing clean code, and solving real-world problems through tech.",
                  style: TextStyle(fontSize: 30, color: Colors.white60),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => _launchURL("https://drive.google.com/file/d/1gpQseJwGA2JODxFnOFhdF410J-UusZ2H/view?usp=drivesdk"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text("Download CV", style: TextStyle(fontSize: 40, color: Colors.black)),
                ),
              ],
            ),
          ),
          const SizedBox(width: 200),
          Expanded(
            child: Image.asset("assets/images/profile.png"), // your image path
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }
}
