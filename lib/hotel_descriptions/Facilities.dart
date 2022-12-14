import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'descriptions.dart';


GestureDetector MyArticles(String hotelname, String hotellocation) {
  return GestureDetector(
    child: Container(
      width: double.infinity,
      child: Card(
        child: Wrap(
          children: <Widget>[
            ListTile(
              title: Text(hotelname,style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(hotellocation),
            ),
          ],
        ),
      ),
    ),
  );
}

GestureDetector description() {
  return GestureDetector(
    child: Container(
      width: double.infinity,
      child: Card(
        child: Wrap(
          children: <Widget>[
            ListTile(
              title: Text('Hotel Description',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Container(
                margin : EdgeInsets.symmetric(horizontal: 15),
                child: Text(description_hotel_sea_crown))
          ],
        ),
      ),
    ),
  );
}

GestureDetector Popular_facilities() {
  return GestureDetector(
    child: Container(
      width: double.infinity,
      child: Card(
        child: Wrap(
          children: <Widget>[
            ListTile(
              title: Row(
                children: [
                  Text('Popular Facilities',style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              )),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  wifi,
                  parking,
                  beachfront,
                  airport_shuttle,
                  room_service,
                  restaurant,
                  bar,

                ],
              ),
            )

          ],
        ),
      ),
    ),
  );
}
Widget airport_shuttle = Row(
  children: [
    Icon(
      Icons.airport_shuttle,
      size: 20,
      color: Colors.green,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      'Airport shuttle',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
  ],
);
Widget bar = Row(
  children: [
    Icon(
      Icons.coffee,
      size: 20,
      color: Colors.green,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      'Bar',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
  ],
);
Widget restaurant = Row(
  children: [
    Icon(
      Icons.restaurant,
      size: 20,
      color: Colors.green,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      'Restaurant',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
  ],
);
Widget room_service = Row(
  children: [
    Icon(
      Icons.room_service,
      size: 20,
      color: Colors.green,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      'Room service',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
  ],
);
Widget beachfront = Row(
  children: [
    Icon(
      Icons.beach_access_sharp,
      size: 20,
      color: Colors.green,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      'Beachfront',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
  ],
);
Widget parking = Row(
  children: [
    Icon(
      Icons.local_parking_rounded,
      size: 20,
      color: Colors.green,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      'Free Parking',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
  ],
);
Widget wifi = Row(
  children: [
    Icon(
      Icons.wifi,
      size: 20,
      color: Colors.green,
    ),
    SizedBox(
      width: 10,
    ),
    Text(
      'Free Wifi',
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold),
    ),
  ],
);

Widget titleSection = Container(
  padding: EdgeInsets.only(right: 32, left: 32, top: 0, bottom: 0),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              //padding:  EdgeInsets.only(bottom: 8),
              child: Text(
                'Hotel Sea Crown',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.green,
                ),
                Text(
                  'Coxs Bazaar, Chittagong',
                  style: TextStyle(
                      color: Colors.grey[500], fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      FavoriteButton(
        isFavorite: false,
        // iconDisabledColor: Colors.white,
        valueChanged: (_isFavorite) {
          print('Is Favorite : $_isFavorite');
        },
      ),
    ],
  ),
);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    IconButton(
      icon: Icon(
        color: Colors.blue,
        Icons.call,
      ),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(
        color: Colors.blue,
        Icons.near_me,
      ),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(
        color: Colors.blue,
        Icons.share,
      ),
      onPressed: () {},
    ),
  ],
);

Future<void> _launchURL(String url) async {
  final Uri uri = Uri(scheme: "http", host: url);
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'failed to open URL';
  }
  ;
}

// ListView(
//   children: const [
//     Text(
//       "Facilities",
//       style: TextStyle(
//         color: Colors.red,
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   ],
// )

// Container(
//   padding: const EdgeInsets.all(32),
//   //margin: EdgeInsets.all(22),
//   width: MediaQuery.of(context).size.width,
//
//   //height: 200,
//   decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(30),
//         topRight: Radius.circular(30),
//       )),
//   child: SingleChildScrollView(
//      child:Column(
//        children: [
//          SizedBox(
//            child: Text(
//              "Facilities",
//              style: TextStyle(
//                color: Colors.red,
//                fontSize: 20,
//                fontWeight: FontWeight.bold,
//              ),
//          )
//          ),
//     ]
//     //
//     //
//     //
//     // Column(
//     //   children: [
//     //     Text(
//     //       "Facilities",
//     //       style: TextStyle(
//     //         color: Colors.red,
//     //         fontSize: 20,
//     //         fontWeight: FontWeight.bold,
//     //       ),
//     //     ),
//     //     Text(
//     //       widget.description,
//     //       style: TextStyle(color: Colors.cyan),
//     //     ),
//     //   ],
//     // ),
//   ),
// ),
// ),