import 'package:batch_g/provider/flower_provider.dart';
import 'package:batch_g/screens/image_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Provider.of<FlowerProvider>(context, listen: false).getFlowerData();
    return Scaffold(
        appBar: AppBar(
          title: Text("Home page"),
          centerTitle: true,
        ),
        body: Consumer<FlowerProvider>(
          builder: (context, fPro, child) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    child: GridView.count(
                      //ListView
                      crossAxisCount: 3,
                      children: fPro.flowerModelList
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ImageView(
                                                item: item,
                                              )));
                                },
                                child: Container(
                                    height: 200,
                                    width: 200,
                                    child: Image.asset(
                                      item.img,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  )
                  //Image.asset("assets/image/weather.gif")
                ],
              ),
            );
          },
        ));
  }
}
