import 'package:flutter/material.dart';
import 'package:flutter_application_new/APIFolders/PopularMovieAPI.dart';
import 'package:flutter_application_new/widgets/NavigBar.dart';
import 'package:flutter_application_new/widgets/PopularMoviesWidget.dart';
import 'package:flutter_application_new/widgets/RecommendedMoviesWidgets.dart';
import 'package:flutter_application_new/widgets/TopRatedMoviesWidget.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PopularMovieAPI? popularMovieAPI;
  bool isLoadedApi = false;

  // void getAllListMovie() async {
  //   final resPopular = await http.get(Uri.parse(
  //       "https://api.themoviedb.org/3/movie/popular?api_key=57ca7b15d5117ce1e2f3ca7e317f1e80&language=en-US&page=1"));
  //   popularMovieAPI =
  //       PopularMovieAPI.fromJson(json.decode(resPopular.body.toString()));
  //   setState(() {
  //     isLoadedApi = true;
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                        "Mov-E",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Chill with Mov-E",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/white1.jpg",
                    height: 60,
                    width: 60,
                    ),
                  ),
                ],
              ),
            ),
              Container(
                height: 60,
                padding:EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search A Movie",
                        hintStyle: TextStyle(color: Colors.white54)
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 30),
              UpcomingWidget(),
              SizedBox(height: 40),
              PopularWidget(),
              SizedBox(height: 40),
              TopRatedMoviesWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigBar(),
    );
  }
}