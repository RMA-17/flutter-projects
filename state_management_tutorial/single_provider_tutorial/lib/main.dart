import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/shared_state/application_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => Text(
                  "Flutter Provider",
                  style: TextStyle(color: applicationColor.color),
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) =>
                        AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: applicationColor.color,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) =>
                      FloatingActionButton(
                    onPressed: () {
                      applicationColor.isLightBlue = false;
                    },
                    backgroundColor: Colors.amber,
                  ),
                ),
                const SizedBox(width: 10),
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) =>
                      FloatingActionButton(
                    onPressed: () {
                      applicationColor.isLightBlue = true;
                    },
                    backgroundColor: Colors.blue,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
