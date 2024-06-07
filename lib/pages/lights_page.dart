import 'package:domotik_app/widgets/grid_element.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LightsPage extends StatefulWidget {
  const LightsPage({super.key});

  @override
  State<LightsPage> createState() => _LightsPageState();
}

class _LightsPageState extends State<LightsPage> {
  List<String>? lights;

  @override
  void initState() {
    super.initState();
    getLights();
  }

  void getLights() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    lights = prefs.getStringList('lights');
    lights ??= ["0", "0", "0", "0"];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text("Lights"),
      ),
      body: Center(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            itemCount: lights != null ? lights!.length : 0,
            itemBuilder: (context, index) {
              return GridElement(
                  index: index,
                  onPressed: (index) async {
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    bool light = int.parse(lights![index]) == 1;
                    setState(() {
                      lights![index] = "${!light ? 1 : 0}";
                      prefs.setStringList("lights", lights!);
                    });
                  },
                  iconData: int.parse(lights![index]) == 1 ? Icons.light_mode : Icons.lightbulb
              );
            },
          ),
        ),
      ),
    );
  }
}