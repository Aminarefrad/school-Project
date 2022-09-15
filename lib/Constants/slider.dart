import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sliderphoto extends StatefulWidget {
  const Sliderphoto({super.key});

  @override
  State<Sliderphoto> createState() => _SliderphotoState();
}

class _SliderphotoState extends State<Sliderphoto> {
  List image=[
    // "https://images.unsplash.com/photo-1591123120675-6f7f1aae0e5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
    // "https://images.unsplash.com/photo-1581726707445-75cbe4efc586?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=876&q=80",
    // "https://images.unsplash.com/photo-1495727034151-8fdc73e332a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=865&q=80",
    // "https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    // "https://images.unsplash.com/photo-1580582932707-520aed937b7b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
    "https://fleetroot.com/blog/wp-content/uploads/2020/08/back-to-school.jpg",
    "https://static01.nyt.com/images/2020/07/02/opinion/01Nuzzo/01Nuzzo-superJumbo.jpg",
    "https://assets.publishing.service.gov.uk/government/uploads/system/uploads/image_data/file/111994/s960_EmptyClassroom.jpg",
    "https://www.gse.harvard.edu/sites/default/files//styles/landscape__535x300/public/teaser_image/1500x1000_makelearningvisible.jpg?itok=_lRzr_TO&timestamp=1502150073",
    "https://sloveniatimes.com/wp-content/uploads/2020/11/classroom-2093744_960_720.jpg",
  ];
  int changeindex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(itemCount: image.length, 
              itemBuilder: (context, index, realIndex) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(image[index],fit: BoxFit.fill,
                    width: double.infinity,),
                  ),
                );
              },
              options:CarouselOptions(
                viewportFraction: 0.81,
                enableInfiniteScroll: true,
                autoPlay: true,
                height: 170,
                onPageChanged: (index, reason) {
                  setState(() {
                  changeindex=index;
                  });
                }, 
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 200),
                scrollDirection: Axis.horizontal,
              ),
              ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: List.generate(image.length, (index){
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(110),
                    border: Border.all(color: Color.fromARGB(255, 0, 0, 0),width: 0),
                    color:changeindex==index?Color.fromARGB(255, 26, 175, 175):Colors.transparent
                  ),
                ),
              );
            }),
          ),
      ],
    );
          
  }
}