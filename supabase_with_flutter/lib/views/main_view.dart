import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:supabase_with_flutter/notifier/email_notifier.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<EmailNotifier>(
          builder: (context, mail, _) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(mail.email ?? "Anda belum login"),
            ],
          ),
        ),
      ),
    );
  }
}
