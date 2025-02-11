import 'package:flutter/material.dart';
import 'package:project_medihelp/Models/doctor.dart';
import 'package:project_medihelp/Services/doctor_services.dart';

class DoctorProvider with ChangeNotifier {
  final DoctorServices _doctorServices = DoctorServices();
  List<Doctor> _allDoctors = [];
  List<Doctor> _favoriteDoctors = [];

  DoctorProvider() {
    _allDoctors = _doctorServices.allDoctorsList;
    _favoriteDoctors = _allDoctors.where((doctor) => doctor.isFavorit).toList();
  }

  List<Doctor> get allDoctors => _allDoctors;
  List<Doctor> get favoriteDoctors => _favoriteDoctors;

  get filteredDoctors => null;

  // ✅ Toggle favorite status
  void toggleFavorite(String doctorId) {
    int index = _allDoctors.indexWhere((doctor) => doctor.doctorId == doctorId);
    if (index != -1) {
      _allDoctors[index].isFavorit = !_allDoctors[index].isFavorit;
      _favoriteDoctors = _allDoctors.where((doc) => doc.isFavorit).toList();
      notifyListeners();
    }
  }
}
