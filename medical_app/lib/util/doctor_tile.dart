
import 'package:flutter/material.dart';

class DoctorTile extends StatelessWidget {
  final String image;
  final IconData icon;
  final double rating;
  final String name;
  final String yrsOfExperience;
  const DoctorTile({
    super.key, 
   required this.image, 
   required this.name, 
   required this.yrsOfExperience, 
   required this.icon, 
   required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
               ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(image, height: 100,),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Row(
                  children: [
                    Icon(icon, color: Colors.yellow[600],),
                    const SizedBox(width: 5),
                    Text(rating.toString()),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 5),
              Text(
                yrsOfExperience,
                style: const TextStyle(
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
         
      ),
    );
  }
}