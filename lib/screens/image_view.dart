import 'package:batch_g/model/flower_model.dart';
import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
  FlowerModel item;
  ImageView({Key? key, required this.item}) : super(key: key);

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image View"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 300,
                width: 300,
                child: Image.asset(widget.item.img),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Name:",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    widget.item.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Text(
                widget.item.origin,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                widget.item.color,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                widget.item.details,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
