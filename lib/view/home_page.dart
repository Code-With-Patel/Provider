import 'package:code_with_patel/state/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

//Create instance of Provider
  @override
  Widget build(BuildContext context) {
    // 1st Way
    // AppState provider = Provider.of<AppState>(context);
    //Now 2nd Way
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Code With Patel-Provider Pt-2"),
      ),
      body: Center(
        child: Consumer<AppState>(
          builder: (context, providerValue, child) {
            return Column(
              children: [
                Text(
                  "Provider Value= ${providerValue.name}",
                  style: const TextStyle(fontSize: 25),
                ),
                SizedBox(height: 100,),
                CupertinoButton(
                  color: Colors.grey,
                    child:const Text("Press Event"),
                    onPressed: () {
                      providerValue.getName("Update After 5 sec");
                    })
              ],
            );
          },
        ),
      ),
    );
  }
}
