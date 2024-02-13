import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_event_app/event_details/event_detail_background.dart';
import 'package:local_event_app/event_details/event_details_content.dart';
import 'package:local_event_app/model/event.dart';
import 'package:provider/provider.dart';

class EvenetDetailPage extends StatelessWidget {
  final Event event;

  const EvenetDetailPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: Stack(
          children: <Widget>[
            EventDetailBackground(),
            EventDetailContent(),

          ],
        ),
      ),
    );
  }
}
