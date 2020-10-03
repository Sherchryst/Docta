import './speciality.dart';
import 'package:flutter/cupertino.dart';

import 'doctor_tile.dart';

List<SpecialityModel> getSpeciality(){
  //fill here to had more specialities
  List<SpecialityModel> specialities = new List<SpecialityModel>();
  SpecialityModel specialityModel = new SpecialityModel();

  //1
  specialityModel.noOfDoctors = 10;
  specialityModel.speciality = "Cough & Cold";
  specialityModel.backgroundColor = Color(0xff3cc6f1);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //2
  specialityModel.noOfDoctors = 17;
  specialityModel.speciality = "Heart Specialist";
  specialityModel.backgroundColor = Color(0xff56c4c4);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //3
  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Diabetes Care";
  specialityModel.backgroundColor = Color(0xfff5bcba);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  return specialities;
}

List<DoctorModel> getdoctor(){
  //fill here to had more specialities
  List<DoctorModel> doctors = new List<DoctorModel>();
  DoctorModel doctorModel = new DoctorModel();

  //1
  doctorModel.nameOfDoctors = 'Dr. Stefani Albert';
  doctorModel.speciality = "Cough & Cold";
  doctorModel.backgroundColor = Color(0xff3cc6f1);
  doctors.add(doctorModel);

  doctorModel = new DoctorModel();

  //2
  doctorModel.nameOfDoctors = 'Dr. Audrey Cavallac';
  doctorModel.speciality = "Heart Specialist";
  doctorModel.backgroundColor = Color(0xff56c4c4);
  doctors.add(doctorModel);

  doctorModel = new DoctorModel();

  //3
  doctorModel.nameOfDoctors = 'Dr. Chamie Abdelgami';
  doctorModel.speciality = "Diabetes Care";
  doctorModel.backgroundColor = Color(0xfff5bcba);
  doctors.add(doctorModel);

  doctorModel = new DoctorModel();

  return doctors;
}
