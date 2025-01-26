import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';

class DoctorCart extends StatefulWidget {
  final String docName;
  final String positionName;
  final String imgUrl;
  final int favAmount;
  final int commAmount;

  const DoctorCart({
    super.key,
    required this.docName,
    required this.positionName,
    required this.imgUrl,
    required this.favAmount,
    required this.commAmount,
  });

  @override
  State<DoctorCart> createState() => _DoctorCartState();
}

class _DoctorCartState extends State<DoctorCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kBacground,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              widget.imgUrl,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                width: 250,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kWhirt,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.docName,
                      style: TextStyle(
                        color: kMainColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.positionName,
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhirt),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 20,
                                color: kMainColor,
                              ),
                              Text(
                                widget.favAmount.toString(),
                                style: TextStyle(
                                  color: kMainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 60,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kWhirt),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.message,
                                size: 20,
                                color: kMainColor,
                              ),
                              Text(
                                widget.commAmount.toString(),
                                style: TextStyle(
                                  color: kMainColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: kWhirt),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.question_mark_rounded,
                                size: 20,
                                color: kMainColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: kWhirt),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 20,
                                color: kMainColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
