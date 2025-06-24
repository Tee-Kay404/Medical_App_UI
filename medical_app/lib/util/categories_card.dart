import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String image;
  final String title;
  const CategoriesCard({
    super.key, 
    required this.image, 
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
         color: Colors.deepPurple[100],
         shape: BoxShape.rectangle,
         borderRadius: BorderRadius.circular(12),
       ),
       child: Row(
         children: [
           Image.asset(
             image
            ),
            const SizedBox(width: 10,),
           Text(
             title,
             style: const TextStyle(
               fontSize: 17,
               fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}