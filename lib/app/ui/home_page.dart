import 'package:flutter/material.dart';
import 'package:pets_own_life/app/ui/widgets/customCircleButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, String> categories = {
    'assets/images/dog.png': 'Dog',
    'assets/images/cat.png': 'Cat',
    'assets/images/bird.png': 'Bird',
    'assets/images/fish.png': 'Fish',
    'assets/images/easter-bunny.png': 'Small Animal'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 195, 255),
        title: const Text('Pets Own Life'),
        elevation: 0,
      ),
      body: SafeArea(child: buildMain()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'My Pet'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        fixedColor: Color.fromARGB(255, 64, 195, 255),
      ),
    );
  }

  void _selectedItem(MapEntry<String, String> selectedItem) {
    print(selectedItem.key);
    print(selectedItem.value);
  }

  Widget buildMain() {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: categories.entries.map<Widget>((entry) {
              return CustomCircleButton(
                iconUrl: entry.key,
                selectedSocialMedia: entry,
                callBackFunction: _selectedItem,
              );
            }).toList()));
  }
}
