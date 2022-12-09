import 'package:flutter/material.dart';
// Image

// class ImageWidget extends StatefulWidget {
//   const ImageWidget({super.key});

//   @override
//   State<ImageWidget> createState() => _ImageWidgetState();
// }

// class _ImageWidgetState extends State<ImageWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Image"),
//         ),
//         body: Container(
//           height: 300.0,
//           color: Colors.blue,
//           child: Image(
//             image: AssetImage('assets/images/zipImage.png'), // restart the server for local images to come
//             // fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

// Network Image

class NetworkImageWidget extends StatefulWidget {
  const NetworkImageWidget({super.key});

  @override
  State<NetworkImageWidget> createState() => _NetworkImageWidgetState();
}

class _NetworkImageWidgetState extends State<NetworkImageWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Network Image"),
        ),
        body: Center(
          child: Container(
            height: 200.0,
            width: 200.0,
            // color: Colors.black,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0),
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.goodreturns.in/img/2015/07/03-1435900173-online-600.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            // child: Image.network(
            //   ('https://www.goodreturns.in/img/2015/07/03-1435900173-online-600.jpg'),
            //   fit: BoxFit.cover,
            // ),
            child: Center(
              child: Text(
                'Roses',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
