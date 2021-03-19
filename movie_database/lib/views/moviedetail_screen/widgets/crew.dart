import 'package:flutter/material.dart';

class Crew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.of(context).size;
    print(mq.width);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Cast & Crew",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            height: 110,
            width: mq.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        child: Image.network(
                          "https://placeimg.com/640/480/prople",
                          fit: BoxFit.cover,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Text(
                        "Suraj Verma",
                        overflow: TextOverflow.clip,
                      ),
                      Text(
                        "Director",
                        overflow: TextOverflow.clip,
                      )
                    ],
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
