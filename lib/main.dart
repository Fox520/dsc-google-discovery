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
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.network(
                        "https://lh3.googleusercontent.com/ogw/ADGmqu-ijN9VLn7Snra_1eyaSQ72PdrBqjJUwpliZr8YbA",
                        height: 70,
                        width: 70,
                      ),
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
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return MyCard();
                },
                itemCount: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            spreadRadius: 1.0,
            blurRadius: 5.0,
            color: Colors.grey[300],
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                  "https://i.ytimg.com/vi/qIUb3bjh42Y/hq720.jpg")),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  "Pringles Update: Last Week Tonight with John Oliver (Web Exclusive)",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.network(
                      "https://www.youtube.com/s/desktop/0f786ae6/img/favicon_32.png",
                      width: 20,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: Text(
                        "YouTube • Last Week Tonight with John Oliver",
                        maxLines: 1,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(fontWeight: FontWeight.w400),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "• 5 hours ago",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.favorite_outline),
                          Icon(Icons.share),
                          Icon(Icons.share),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
