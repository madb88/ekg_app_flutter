import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final imageName;
//
  ImageWidget(
      this.imageName
      );

  @override
  Widget build(BuildContext context) {
    Container imageWidget = Container(
        padding: const EdgeInsets.all(10.0),
    margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
    child: Image.asset("images/ekg_images/"+imageName+".jpg", width: 220.0
    )
    );
    return imageWidget;

  }
}
