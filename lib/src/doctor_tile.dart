import 'package:flutter/material.dart';
import 'doctor_info.dart';

class DoctorModel {
  String speciality;
  String nameOfDoctors;
  Color backgroundColor;
  DoctorModel({this.speciality, this.nameOfDoctors, this.backgroundColor});
}

class DoctorsTile extends StatelessWidget {
  final String speciality;
  final String nameOfDoctors;
  final Color backColor;

  DoctorsTile(
      {@required this.speciality,
      @required this.nameOfDoctors,
      @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DoctorsInfo()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                ),
                child: Text(
                  "$nameOfDoctors",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 60,
                ),
                child: Text(
                  "$speciality",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 123, vertical: 14),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                child: Text(
                  "Contact",
                  style: TextStyle(
                      color: Color(0xff707171),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
