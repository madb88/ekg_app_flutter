import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final imageName;
  
  ImageWidget(this.imageName);

  @override
  Widget build(BuildContext context) {
    Container imageWidget = Container(
      constraints: BoxConstraints.expand(width: 250.0, height: 250.0),
      padding: const EdgeInsets.all(5.0),
      margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset(
          "images/ekg_images/" + imageName + ".jpg",
        ),
      ),
    );
    return imageWidget;
  }
}
