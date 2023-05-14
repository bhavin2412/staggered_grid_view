import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import '../provider/grid_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GridProvider? gridProviderFalse;
  GridProvider? gridProviderTrue;

  @override
  Widget build(BuildContext context) {
    gridProviderFalse = Provider.of<GridProvider>(context, listen: false);
    gridProviderTrue = Provider.of<GridProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Staggered Grid View",
                style: TextStyle(letterSpacing: 1, fontSize: 20),
              ),
            ),
            body: MasonryGridView.builder(
              itemCount: gridProviderFalse!.image.length,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(1),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child:
                      Image.asset("${gridProviderFalse!.image[index]}"))),
            )));
  }
}
