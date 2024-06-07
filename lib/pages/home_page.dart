import 'package:domotik_app/pages/lights_page.dart';
import 'package:domotik_app/pages/messaging_page.dart';
import 'package:domotik_app/widgets/grid_element.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<IconData> icons = [
    Icons.video_camera_back_rounded,
    Icons.lightbulb,
    Icons.device_hub_outlined,
    Icons.light_mode
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text("Home"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
              child: SizedBox(
                height: 160,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
                ),
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return GridElement(
                    index: index,
                    onPressed: (index) {
                      switch(index) {
                        case 1:
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => const LightsPage())
                          );
                          break;
                      }
                    },
                    iconData: icons[index]
                  );
                },
              ),
            )
          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message"
          )
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          switch(value){
            case 0:
              print("Apri pagina profilo");
              break;
            case 1:
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const MessagingPage())
              );
              break;
          }
        },
      ),
    );
  }
}