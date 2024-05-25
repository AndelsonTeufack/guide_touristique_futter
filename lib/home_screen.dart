import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visit_city/place_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var height, width;

  List iconImages = [
   
    "images/tree.png",
    "images/condo.png",
    "images/plate.png",
    "images/front-of-bus.png",
    "images/flight.png",
    "images/condo.png",
    "images/plate.png",
    "images/front-of-bus.png",
    


  ];

  List imgs = [

    "images/palais.jpg",
    "images/aeroplane.jpg",
    "images/lieu1.jpg",
    "images/lieu2.jpg",
    "images/lieu3.jpg",
    "images/lieu4.jpg",
    "images/lieu5.jpg",
    "images/lieu6.jpg",
    "images/lieu7.jpg",
    "images/lieu8.jpg",
    "images/lieu9.jpg",
    "images/lieu10.jpg",
    
    
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.035,
                ),
                SizedBox(
                  height: height * 0.07,
                  width: width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore",
                              style: GoogleFonts.lexend(
                                fontSize: width * 0.059,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                            "Explore Your City Beauty",
                              style: GoogleFonts.lexend(
                                fontSize: width * 0.037,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: height * 0.035,),
                      Container(
                        height: height * 0.048,
                        width: width * 0.11,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/girl.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                Container(
                  height: height * 0.073,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(13)
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                          hintStyle: GoogleFonts.lexend(
                            color: Colors.grey,
                            fontSize: width * 0.04,
                          ),
                          prefixIcon: Icon(Icons.search,
                          color: Colors.black,
                          size: width * 0.08 ,
                          )
                        ),
                      ),
                    ),
                  ),
                ),
          
                SizedBox(
                  height: height * 0.035,
                ),
                SizedBox(
                  height: height * 0.08,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: iconImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: height * 0.068,
                            width: width * 0.14,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Image(
                                height: height * 0.04,
                                color: Colors.white,
                                image: AssetImage(
                                iconImages[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  
                ),
                SizedBox(
                    height: height * 0.035,
                ),
                SizedBox(
                    width: width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text("All",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        Text("New",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                         Text("Tours",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                         Text("Africa",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                         Text("Adventure",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  SizedBox(
                    height: height * 0.44,
                    width: width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: imgs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05,
                            vertical: height * 0.01,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => PlaceScreen(),
                                  )
                              );
                            },
                            child: Container(
                              width: width * 0.6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image.asset(
                                      imgs[index],
                                      fit: BoxFit.cover, 
                                      width: double.infinity, 
                                      height: double.infinity, 
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: width * 0.6,
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(25),
                                          bottomRight: Radius.circular(25),
                                        ),
                                        color: Colors.black54, // Semi-transparent background for better text visibility
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Palais Présidentiel",
                                            style: GoogleFonts.lexend(
                                              fontSize: width * 0.043,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "Etoudi",
                                            style: GoogleFonts.lexend(
                                              fontSize: width * 0.033,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 5,
                                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                            itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 28,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon:  Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon:  Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon:  Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon:  Icon(Icons.settings), label: ""),
            ],
        ),
      ),
    );
  }
}