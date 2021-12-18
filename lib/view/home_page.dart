import 'package:code_with_patel/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

//Create instance of Provider
  @override
  Widget build(BuildContext context) {
    // 1st Way
    AppState provider = Provider.of<AppState>(context);
    //Now 2nd Way
    return Scaffold(
      appBar: AppBar(
        title: Text("Code With Patel-Provider"),
      ),
      body: Center(
        child: Consumer<AppState>(
          builder: (context, providerValue, child) {
            return Text(
              "Provider Value ${providerValue.temp}",
              style: TextStyle(fontSize: 25),
            );
          },
        ),
      ),
    );
  }
}
