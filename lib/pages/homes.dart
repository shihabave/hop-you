import 'package:flutter/material.dart';

class HomesPage extends StatefulWidget {
  const HomesPage({Key? key}) : super(key: key);

  @override
  State<HomesPage> createState() => _HomesPageState();
}

class _HomesPageState extends State<HomesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 120,
                color: Colors.green,
                child: Column(
                  children: [
                    Text('New Videos for You'),
                    SizedBox(
                      height: 11,
                    ),
                    Container(
                      height: 110,
                      color: Colors.red,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 100,
                              color: Colors.pinkAccent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.teal,
                                ),
                                title: Text('ajdgah'),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
