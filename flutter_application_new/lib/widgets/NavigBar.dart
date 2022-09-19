import 'package:flutter/material.dart';

class NavigBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 35),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              // Navigate to Home Page
              Navigator.pushNamed(context, "/");

            },
            child: Icon(
              Icons.home_filled,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "MovieListsPage");
            },
            child: Icon(
              Icons.movie_filter_rounded,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "FavoriteListPage");
            },
            child: Icon(
              Icons.favorite_sharp,
              size: 35,
              color: Colors.white,
            )
          ),
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}