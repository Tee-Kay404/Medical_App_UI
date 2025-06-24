import 'package:flutter/material.dart';
import 'package:medical_app/util/Doctor_tile.dart';

final doctorInfo = [
  const DoctorTile(
   image: 'lib/images/ashkan-forouzani-DPEPYPBZpB8-unsplash.jpg', 
   name: 'Dr. Anthony Udoh', 
   yrsOfExperience: 'Therapist, 7 yrs', 
   icon: Icons.star, 
   rating: 5.0,
  ),
  const DoctorTile(
   image: 'lib/images/alexandr-podvalny-tE7_jvK-_YU-unsplash.jpg', 
   name: 'Dr. Emmanuel Udoh', 
   yrsOfExperience: 'Surgeon, 5 yrs', 
   icon: Icons.star, 
   rating: 4.6,
  ),
  const DoctorTile(
   image: 'lib/images/ahmed-al-munther-qofslQAe5Q4-unsplash.jpg', 
   name: 'Dr. David Udoh', 
   yrsOfExperience: 'Nurse, 6 yrs', 
   icon: Icons.star, 
   rating: 4.8,
  ),
];