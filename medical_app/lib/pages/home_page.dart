import 'package:flutter/material.dart';
import 'package:medical_app/util/Doctor_info.dart';
import 'package:medical_app/util/Doctor_tile.dart';
import 'package:medical_app/util/categories_card.dart';
import 'package:medical_app/util/category_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

   final border = OutlineInputBorder(
     borderSide: const BorderSide(
       color: Colors.transparent,
       width: 1.0 ,
       style: BorderStyle.solid
     ),
     borderRadius: BorderRadius.circular(15),
   );

    return  Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0,
       backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined
            ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inbox_outlined
            ),
            label: ''
          ),
        ]
      ),
      body: SafeArea(
        child: Column(
          children: [
            // appBar
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                       SizedBox(height: 5),
                      
                      Text(
                        'Tony King',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // profile pic
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      shape: BoxShape.circle
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person,
                        size: 28 ,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            const SizedBox( height: 10),
        
            // Card -> how do you feel
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Container(
               height: 180,
               decoration: BoxDecoration(
                 color: Colors.pink[100],
                 borderRadius: BorderRadius.circular(25),
               ),
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                  children: [
                    // animation or cute pic
                    Container(
                      height: 150,
                      width: 130,
                      color: Colors.deepPurple[200],
                    ),
                    const SizedBox(width: 37),
                     Column(
                      children: [
                        const SizedBox(height: 8),
                        // how do you feel
                        const Text(
                          'How do you feel?',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 5),
                        //  fill out..
                        const Text(
                          'Fill out your medical \ncard right now',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(height: 15),
                        // get Started button
                        Container(
                          height: 40,
                          width: 170,
                          decoration:  BoxDecoration(
                            color: Colors.deepPurple[400],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child:  Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                             ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ]
                 ),
               ) ,
              ),
           ),
            const SizedBox(height: 20),                          
        
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
              decoration: InputDecoration(
                 hintText: 'How can we help you?',
                 hintStyle: TextStyle(
                   fontSize: 16,
                   color: Colors.grey[700]
                 ),
                 prefixIcon: const Icon(
                   Icons.search_rounded,
                   size: 24,
                 ),
                 prefixIconColor: Colors.grey[700],
                 border: border,
                 enabledBorder: border,
                 focusedBorder: border,
                 fillColor: Colors.deepPurple[100],
                 filled: true, 
                ),
                keyboardType: TextInputType.text,
              ),
            ),
        
            const SizedBox(height: 20),
        
            // horizontal listview -> categories, dentist 
            SizedBox(
              height: 80,
              // width: 100,
             child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryInfo.length,
              itemBuilder: (context, index) {
                final categoryInfos = categoryInfo[index];
                 return  CategoriesCard(
                   title: categoryInfos.title, 
                   image: categoryInfos.image,
                  ); 
                }
              ), 
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              // color: Colors.black,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: doctorInfo.length,
                itemBuilder: (context, index) {
                  final doctorInfos = doctorInfo[index];
                  return DoctorTile(
                    image: doctorInfos.image, 
                    name: doctorInfos.name, 
                    yrsOfExperience: doctorInfos.yrsOfExperience,
                    icon: doctorInfos.icon,
                    rating: doctorInfos.rating,
                  );
                }
              ),
            ),
          ],
        )
      ),
    );
  }
}