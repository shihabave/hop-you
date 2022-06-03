import 'package:flutter/material.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 21,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
                'যেভাবে মোবাইল দিয়ে গ্রাফিক ডিজাইন করবেন 💁‍♂️: Digital Marketing Masterclass - Episode 01'),
            leading: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTix52_K_tmZo7_Pu3wn7C7klWr7RvQQvHnj5ewJ6r6gGpX32tlyezXaSj3SAWQ9BCmVHU&usqp=CAU'))),
            ),
          );
        });
  }
}
