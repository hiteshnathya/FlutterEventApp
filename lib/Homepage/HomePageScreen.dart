import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_event_app/app_state.dart';
import 'package:local_event_app/event_details/event_detail_page.dart';
import 'package:local_event_app/model/category.dart';
import 'package:local_event_app/model/event.dart';
import 'package:local_event_app/styleguide.dart';
import 'package:provider/provider.dart';

import 'Event_Widget.dart';
import 'Home_page_background.dart';
import 'category_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: <Widget>[
            HomepageBackground(
                screenHeight: MediaQuery.of(context).size.height),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        children: [
                          Text(
                            "LOCAL EVENTS ",
                            style: fadedTextStyle,
                          ),
                          Spacer(),
                          Icon(
                            Icons.person_outline,
                            color: Color(0x99FFFFFF),
                            size: 30,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        "What's Up",
                        style: whiteHeadingTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Consumer<AppState>(
                        builder: (context, appState, _) =>
                            SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (final category in categories)
                                CategoryWidget(category: category)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Consumer<AppState>(
                        builder: (context, appAState, _) => Column(
                          children: [
                            for (final event in events.where((e) => e.categoryIds
                                .contains(appAState.selectedCategoryId)))
                              GestureDetector(
                                onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                     EventDetailsPage(event: event),
                                   ));
                                },
                                child: EventWidget(
                                  event: event,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
