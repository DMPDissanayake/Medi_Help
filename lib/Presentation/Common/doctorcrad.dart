import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Models/doctor.dart';
import 'package:project_medihelp/Presentation/View/DoctetInfor/doctor_infor_page.dart';
import 'package:project_medihelp/Provider/doctor_provider.dart';
import 'package:provider/provider.dart';

class DoctorCart extends StatefulWidget {
  final Doctor doctor;

  const DoctorCart({
    super.key,
    required this.doctor,
  });

  @override
  State<DoctorCart> createState() => _DoctorCartState();
}

class _DoctorCartState extends State<DoctorCart> {
  late bool isFav;

  @override
  void initState() {
    super.initState();
    isFav = widget.doctor.isFavorit;
  }

  void toggleFavorite() {
    setState(() {
      isFav = !isFav;
    });
  }

  @override
  Widget build(BuildContext context) {
    final doctorProvider = Provider.of<DoctorProvider>(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kBacground,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorInforPage(
                    doctor: widget.doctor,
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                widget.doctor.docImg,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DoctorInforPage(
                          doctor: widget.doctor,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kWhirt,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.doctor.docName,
                          style: TextStyle(
                            color: kMainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          widget.doctor.catagory,
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    _infoBox(Icons.star, "5"),
                    const SizedBox(width: 5),
                    _infoBox(Icons.message, widget.doctor.comments.toString()),
                    const Spacer(),
                    _iconButton(Icons.question_mark_rounded, () {}),
                    const SizedBox(width: 5),
                    _iconButton(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      () =>
                          doctorProvider.toggleFavorite(widget.doctor.doctorId),
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

  Widget _infoBox(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhirt,
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: kMainColor),
          const SizedBox(width: 5),
          Text(text, style: TextStyle(color: kMainColor)),
        ],
      ),
    );
  }

  Widget _iconButton(IconData icon, VoidCallback onPressed) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: kWhirt,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 20, color: kMainColor),
      ),
    );
  }
}
