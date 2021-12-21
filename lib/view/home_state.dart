import 'package:code_with_patel/state/app_state.dart';
import 'package:code_with_patel/widget/first_page.dart';
import 'package:code_with_patel/widget/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeState extends StatelessWidget {
  const HomeState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appProvider=Provider.of<AppState>(context,listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:const Icon(CupertinoIcons.arrow_up_arrow_down_circle),
        onPressed: (){
        appProvider.updateWidget();
        },
        backgroundColor: Colors.blueGrey,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("CodeWithPatel-Provider Pt-3"),
      ),
      body: Consumer<AppState>(
        builder: (context, provider, child) {
          return provider.change ? SecondPage() : FirstPage();
        },
      ),
    );
  }
}
