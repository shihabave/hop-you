import 'package:flutter/material.dart';
import 'package:hop_you/pages/homes.dart';
import 'package:hop_you/pages/live.dart';
import 'package:hop_you/pages/shows.dart';

class Bodypart extends StatefulWidget {
  const Bodypart({Key? key}) : super(key: key);

  @override
  State<Bodypart> createState() => _BodypartState();
}

class _BodypartState extends State<Bodypart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomesPage()));
                },
                child: Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Color(0xFF2365E0),
                      borderRadius: BorderRadius.circular(11)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 20, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.video_stable,
                          size: 45,
                          color: Colors.white,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Livepage()));
                },
                child: Container(
                  height: 100,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Color(0xFF77BCA5),
                      borderRadius: BorderRadius.circular(11)),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 20, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.live_tv,
                          size: 45,
                          color: Colors.white,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ShowsPage()));
            },
            child: Container(
              height: 100,
              width: 170,
              decoration: BoxDecoration(
                  color: Color(0xFFFF0852),
                  borderRadius: BorderRadius.circular(11)),
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 20, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.table_view,
                      size: 45,
                      color: Colors.white,
                    ),
                    Text(
                      'Shows',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Videos',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.blue, fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
