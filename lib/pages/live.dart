import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Livepage extends StatefulWidget {
  const Livepage({Key? key}) : super(key: key);

  @override
  State<Livepage> createState() => _LivepageState();
}

class _LivepageState extends State<Livepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 25),
          child: Container(
            height: 60,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(0)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Container(
            height: 100,
            child: ListView.builder(
                itemCount: 23,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                    ),
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 110, left: 20),
          child: Column(
            children: [
              Text(
                'Recent Live',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                child: Expanded(
                    child: Container(
                  child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Container(
                            height: 200,
                            color: Colors.amber,
                          ),
                        );
                      }),
                )),
              )
            ],
          ),
        )
      ],
    ));
  }
}
