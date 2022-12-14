import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/hotel_descriptions/hotel_description.dart';

import 'Details_page.dart';

class Mybody extends StatefulWidget {
  const Mybody({Key? key}) : super(key: key);

  @override
  State<Mybody> createState() => _MybodyState();
}

class _MybodyState extends State<Mybody> {

  GestureDetector MyArticles(String imageVal, String hotelname, String hotellocation) {
    return GestureDetector(

      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => hotel_description()));

      },

      child: Container(


        width: 160.0,
        child: Card(
          child: Wrap(
            children: <Widget>[
              Image.network(imageVal),
              ListTile(
                title: Text(hotelname),
                subtitle: Text(hotellocation),
              ),
            ],
          ),
        ),

         /* child: InkWell(
            onTap: () {}, // Handle your callback
            child: Ink(height: 100, width: 100, color: Colors.blue),
          ),

          child: GestureDetector(
            onTap: () {
              print("Click event on Container");
            },
            child: Container(.......),*/
         // )

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.black,
//floating: true,
// pinned: true,
// snap: false,
          centerTitle: true,
          title: const Text('Hotel Booking'),
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
          bottom: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.black,
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for something',
                    prefixIcon: Icon(Icons.search),
// suffixIcon: Icon(Icons.favorite)
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 900,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    MyArticles(
                        "https://hotelseacrownbd.com/wp-content/uploads/2017/07/Presidential-Suite_Hotel-Sea-Crown_Cox-Bazar-14-570x400.jpg",
                        "Hotel Sea Crown",
                        "Coxs Bazaar, Bangladesh"),
                    MyArticles(
                        "https://media.istockphoto.com/photos/luxury-resort-picture-id104731717?k=20&m=104731717&s=612x612&w=0&h=40INtJRzhmU1O4Rj24zdY8vj4aGsWpPaEfojaVQ8xBo=",
                        "Hotel Grand Mahal",
                        "Srinagar,India"),
                    MyArticles(
                        "https://d36tnp772eyphs.cloudfront.net/blogs/1/2018/07/1hotelsouthbeach.png",
                        "Skylight Homez",
                        "Singapore"),
                    MyArticles(
                        "https://img1.10bestmedia.com/Images/Photos/379999/Main-Pool-1_54_990x660.jpg",
                        "The Royal Mount",
                        "Dubai"),
                    MyArticles(
                        "https://imageio.forbes.com/specials-images/imageserve/5ec567daf2098c0006c6036e/Kimpton-Shanghai-Hotel/960x0.jpg?format=jpg&width=960",
                        "Hotel Niharika",
                        "Bangladesh"),
                    MyArticles(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTjGpks3M8iiSaW-NvwJll2LTZQEkyfAj8OUV5_Jjs32LlQHCC2HbBfGBntZgMcfRRzDc&usqp=CAU",
                        "Hotel Radisson",
                        "Bangladesh"),
                    SizedBox(height: 95,)
                  ],
                ),

              ),
            ],
          ),
        ),
      ],
    );
  }
}
