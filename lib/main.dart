import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.network(
                    "https://lh3.googleusercontent.com/ogw/ADGmqu-ijN9VLn7Snra_1eyaSQ72PdrBqjJUwpliZr8YbA",
                    height: 70,
                    width: 70,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Image.network(
              "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png",
              width: 150,
              height: 125,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search...",
                    suffixIcon: Container(
                      padding: EdgeInsets.only(right: 15),
                      width: 85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print("you tapped the voice icon");
                            },
                            child: Image.network(
                              "https://icon2.cleanpng.com/20180410/kbw/kisspng-microphone-google-voice-google-search-google-logo-microphone-5accc7045909d9.1630438915233697323647.jpg",
                              width: 20,
                              height: 30,
                            ),
                          ),
                          Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Google_Lens_-_new_logo.png/768px-Google_Lens_-_new_logo.png",
                            width: 30,
                            height: 40,
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
