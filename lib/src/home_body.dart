import 'package:flutter/material.dart';
import './speciality.dart';
import './data.dart';
import './home.dart';
import 'doctor_tile.dart';

class HomeBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<String> categories = ["Adults", "Childrens", "Womens", "Mens"];

  List<DoctorModel> doctors;

  List<SpecialityModel> specialities;

  @override
  void initState() {
    super.initState();
    doctors = getdoctor();
    specialities = getSpeciality();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        //Home page container
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          //Home page child
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Home page child children Widget
            SizedBox(
              height: 19,
            ), //Space
            Container(
              //Search bar container
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 38,
              decoration: BoxDecoration(
                  //Search bar box decoration
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Color(0xff707171), width: 1)),
              child: Row(
                //Search bar container child
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Color(0xff707171),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ), //Space
            Text(
              "Categories",
              style: TextStyle(
                  //Title Categories
                  color: Color(0xff707171),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 19,
            ), //Space
            Container(
              //Categories horizontal scrolling list container
              height: 25,
              child: ListView.builder(
                  //Categories horizontal scrolling list
                  itemCount: categories.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    //Contructeur de list
                    return CategorieTile(
                      //Function return categories on home page
                      categorie: categories[index],
                      isSelected: selectedCategorie == categories[index],
                      context: this,
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ), //Space
            Container(
              //Specialities horizontal scrolling list container
              height: 250,
              child: ListView.builder(
                  //Specialities horizontal scrolling list
                  itemCount: specialities.length,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    //Constructor list
                    return SpecialistTile(
                      //Function return specialities in home page
                      speciality: specialities[index].speciality,
                      noOfDoctors: specialities[index].noOfDoctors,
                      backColor: specialities[index].backgroundColor,
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ), //Space
            Text(
              "Doctors near you",
              style: TextStyle(
                  //Title Doctors list
                  color: Color(0xff707171),
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(

              itemBuilder: (context, index) {
              return DoctorsTile(
                //Doctors list
                speciality: doctors[index].speciality,
                nameOfDoctors: doctors[index].nameOfDoctors,
                backColor: doctors[index].backgroundColor,
              );
            })
          ],
        ),
      ),
    );
  }
}

class CategorieTile extends StatefulWidget {
  final String categorie;
  final bool isSelected;
  final _HomeBodyState context;
  CategorieTile({this.categorie, this.isSelected, this.context});

  @override
  _CategorieTileState createState() => _CategorieTileState();
}

class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Action when categorie is tap
        widget.context.setState(() {
          selectedCategorie = widget.categorie;
          print('you tap on ${widget.categorie}');
        });
      },
      child: Container(
        //container categoriTile
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
            //decoration categoriTile
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: widget.isSelected ? Colors.black : Colors.white,
                width: 2)),
        child: Text(
          widget.categorie,
          style: TextStyle(
              color: widget.isSelected ? Colors.black : Color(0xff707171)),
        ),
      ),
    );
  }
}
