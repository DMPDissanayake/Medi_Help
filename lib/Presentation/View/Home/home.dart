import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/doctorcrad.dart';
import 'package:project_medihelp/Presentation/Common/search_bar.dart';
import 'package:project_medihelp/Presentation/View/DoctetInfor/doctor_infor_page.dart';
import 'package:project_medihelp/Presentation/View/Home/doctor_fav_page.dart';
import 'package:project_medihelp/Presentation/View/Home/doctor_page.dart';
import 'package:project_medihelp/Presentation/View/News.dart/news_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: BoxDecoration(
                  color: kBacground.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: kWhirt,
                                  border: Border.all(
                                    color: kMainColor,
                                    width: 3,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(
                                      "assets/img/Profile.png",
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, WelcomeBack",
                                    style: TextStyle(
                                      color: kSubTitleColor,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Kaushalya",
                                    style: TextStyle(
                                      color: kBlack,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NewsPage()));
                            },
                            icon: Icon(
                              Icons.notification_add,
                              color: kMainColor,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DoctorPage()));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/img/doctor_icon.png",
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Doctors",
                                style: TextStyle(
                                  color: kMainColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DoctorFavPage()));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "assets/img/doctor_fav_icon.png",
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                "Favorite",
                                style: TextStyle(
                                  color: kMainColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //serach
                    SearchWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //Doctors crad
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorInforPage()));
                  },
                  child: DoctorCart(
                    docName: 'Dr. Rajesh Malhotra',
                    positionName: 'Cardiologist',
                    imgUrl: 'assets/docImg/r-men_doc.jpg',
                    favAmount: 5,
                    commAmount: 60,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
