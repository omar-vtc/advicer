import 'package:advicer/app/core/services/theme_service.dart';
import 'package:advicer/app/pages/advice/widgets/advice_field.dart';
import 'package:advicer/app/pages/advice/widgets/custom_button.dart';
import 'package:advicer/app/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Advice", style: Theme.of(context).textTheme.headlineLarge),
        centerTitle: true,
        actions: [
          Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).toggleTheme();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: ErrorMessage(message: "sorry! something went wrong!"),

                /* AdviceField(
                  advice: "example advice -  your day is good everyday",
                ),*/

                /*CircularProgressIndicator(
                  color: themeData.colorScheme.secondary,
                ),*/
                /* Text(
                  "Your Advice is waiting!",
                  style: themeData.textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),*/
              ),
            ),
            SizedBox(height: 200, child: Center(child: CustomButton())),
          ],
        ),
      ),
    );
  }
}
