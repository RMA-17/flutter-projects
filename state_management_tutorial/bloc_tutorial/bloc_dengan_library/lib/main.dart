import 'package:bloc_dengan_library/bloc/color_bloc.dart';
import 'package:flutter/material.dart';
//Kita importnya flutter_bloc, bukan bloc biasa.
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBloc>(
        //bloc ini auto dispose, jadi ga usah dispose lagi.
        create: (context) => ColorBloc(Colors.amber),
        child: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Variable untuk mengambil value bloc yang ada di root nya.
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bloc dengan Library"),
      ),
      body: Center(
        //BlocBuilder <ClassBlocNya, Typedata>
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, /* aslinya state */ currentColour) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 300,
              height: 300,
              color: currentColour,
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.isLightBlue);
            },
            backgroundColor: Colors.lightBlue,
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.isAmber);
            },
            backgroundColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}

/*
bloc.state.listen -> bloc.listen
bloc.currentState -> bloc.state
bloc.dispatch -> bloc.add
bloc.dispose -> bloc.close

Check out https://link.medium.com/qnfMcEcW00 for more details.
*/