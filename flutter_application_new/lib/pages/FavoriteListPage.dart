import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_new/widgets/NavigBar.dart';

class FavoriteListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Favorite List",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "MoviePage");
                },
                child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  children: [
                    for(int i = 1; i < 11; i++)
                    Padding(padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "assets/white1.jpg",
                            height: 195,
                            width: 125,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Padding(padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Movie Title",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigBar(),
    );
  }
}