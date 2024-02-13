import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_event_app/model/event.dart';
import 'package:local_event_app/styleguide.dart';

class EventWidget extends StatelessWidget {
  final Event event;

  const EventWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
      ),
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                event.imagePath,
                height: 150,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,left: 8.0),
              child: Row(
                children: <Widget>[
                 Expanded(
                   flex: 3, child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       event.title,style: eventTitleTextStyle,
                     ),
                     SizedBox(height: 10,),
                     FittedBox(
                       child: Row(children: [
                         Icon(Icons.location_on),
                         SizedBox(width: 5),
                         Text(event.location,style: eventLocationTextStyle,)
                       ],),
                     )

                   ],
                 ),
                 ),

                  Expanded(flex:1,
                      child: Text(
                        event.duration.toUpperCase(),
                        textAlign: TextAlign.right,
                        style: eventLocationTextStyle.copyWith(fontWeight: FontWeight.w900),
                      ))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
