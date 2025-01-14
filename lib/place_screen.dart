import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key});

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {

  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: height * 0.57,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "images/bg.jpg",
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.30),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35)
                        ),
                      ),
                    ),
                    Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: height * 0.1,
                            width: width * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: height * 0.051,
                                    width: width * 0.1,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                      color: Colors.white
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_back_ios_new,
                                        color: Colors.blue,
                                        size: width * 0.05,
                                        ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: height * 0.051,
                                  width: width * 0.1,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: width * 0.06,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: height * 0.23,
                        width: width * 0.9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The MontCalm At",
                              style: GoogleFonts.lexend(
                                fontSize: width * 0.066,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Brewery Yaounde City",
                              style: GoogleFonts.lexend(
                                fontSize: width * 0.066,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                Icon(
                                  Icons.location_on,
                                  color: Colors.blue,
                                  size: width * 0.07,
                                ),
                                Text(
                                  "Yaoundé",
                                  style: GoogleFonts.lexend(
                                  fontSize: width * 0.038,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  ),
                                ),
                              ],
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
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.bookmark_border, 
                          color: Colors.white,
                          size: width * 0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Expanded(child: SizedBox(
                width: width * 0.9,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,",
                  style: GoogleFonts.lexend(
                    fontSize: width * 0.038,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.justify,
                ), 
              )),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Image.asset(
                      "images/clock.png",
                      height: height * 0.032,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "8AM - 9PM",
                      style: GoogleFonts.lexend(
                        fontSize: width * 0.038,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Image.asset(
                      "images/calendar.png",
                      height: height * 0.032,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "Monday - Sunday",
                      style: GoogleFonts.lexend(
                        fontSize: width * 0.038,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01, 
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Image.asset(
                      "images/flight (1).png",
                      height: height * 0.032,
                    ),
                    SizedBox(
                      width: width * 0.02,
                    ),
                    Text(
                      "Tickets for leave",
                      style: GoogleFonts.lexend(
                        fontSize: width * 0.038,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.01, 
              ),
              SizedBox(
                height: height * 0.15, 
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height * 0.07,
                      width: width * 0.35,
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "25 000Fcfa",
                          style: GoogleFonts.lexend(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.07,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Itinerary",
                            style: GoogleFonts.lexend(
                              fontSize: width * 0.05,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset(
                            "images/send.png",
                            height: height * 0.03,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}