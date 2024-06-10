import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "ລາຍການສິນຄ້າ",
            style: TextStyle(fontFamily: 'Tiktok', fontStyle: FontStyle.italic),
          ),
          actions: [
            IconButton(
              icon: const Icon(FontAwesomeIcons.facebookMessenger),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(FontAwesomeIcons.search),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Card(
            // Define the shape of the card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            // Define how the card's content should be clipped
            clipBehavior: Clip.antiAliasWithSaveLayer,
            // Define the child widget of the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Add padding around the row widget
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Add an image widget to display an image
                      // Image.network(
                      //   ("https://www.google.com/url?sa=i&url=https%3A%2F%2Frunthejewels.com%2Fblogs%2Fnews%2Fnike-sb-x-rtj&psig=AOvVaw14gSVrOvkno6s4qb6FMExt&ust=1695802909238000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCNCo3LXsx4EDFQAAAAAdAAAAABAJ"),
                      //   height: 100,
                      //   width: 100,
                      //   fit: BoxFit.cover,
                      // ),
                      // Add some spacing between the image and the text
                      Container(width: 20),
                      // Add an expanded widget to take up the remaining horizontal space
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Add some spacing between the top of the card and the title
                            Container(height: 5),
                            // Add a title widget
                            const Text(
                              "Apple",
                              style: TextStyle(fontSize: 20),
                            ),
                            Container(height: 5),
                            // Add a subtitle widget
                            const Text(
                              "Macbook Pro M2",
                            ),
                            // Add some spacing between the subtitle and the text
                            Container(height: 10),
                            // Add a text widget to display some text
                            const Text(
                              'ລາຄາ :' "42,490 Bath",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(FontAwesomeIcons.add),
                                  color: Colors.white,
                                  style: IconButton.styleFrom(
                                      backgroundColor: Colors.blueAccent),
                                  onPressed: () {},
                                ),
                                const Text(
                                  'ຊື້ສິນຄ້າ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
