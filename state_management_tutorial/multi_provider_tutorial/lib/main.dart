import 'package:flutter/material.dart';
import 'package:multi_provider_tutorial/provider/cart.dart';
import 'package:multi_provider_tutorial/provider/money.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<Cart>(create: (context) => Cart()),
            ChangeNotifierProvider<Money>(create: (context) => Money()),
          ],
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: const Text("MultiProvider Learning"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Balance:"),
                      Container(
                        height: 30,
                        width: 150,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Consumer<Money>(
                            builder: (context, money, _) => SelectableText(
                              money.balance.toString(),
                              style: const TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 30,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Consumer<Cart>(
                              builder: (context, cart, _) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SelectableText(
                                    "Apple (50) x ${cart.quantitiy.toString()}",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SelectableText(
                                    (500 * cart.quantitiy).toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Consumer<Cart>(
                    builder: (context, cart, _) => Consumer<Money>(
                      builder: (context, money, _) => ElevatedButton.icon(
                        onPressed: () {
                          cart.quantitiy = 0;
                          money.balance = 10000;
                        },
                        label: const Text("Reset"),
                        icon: const Icon(Icons.refresh),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: Consumer<Cart>(
              builder: (context, cart, _) => Consumer<Money>(
                builder: (context, money, _) => FloatingActionButton(
                  onPressed: () {
                    if (money.balance >= 500) {
                      money.balance -= 500;
                      cart.quantitiy += 1;
                    }
                  },
                  backgroundColor: Colors.purple,
                  child: const Icon(
                    Icons.add_shopping_cart,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
