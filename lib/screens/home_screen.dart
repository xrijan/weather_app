// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/api_provider.dart';
import 'package:weather_app/utils/constant.dart';
import 'package:weather_app/widget/jock_widget.dart';
import 'package:weather_app/widget/last_four_days_widget.dart';

import '../widget/current_weather_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(children: [
        CurrentWeatherWidget(),
        LastFourDayWidget(),
        JockWidget(),
        Row(
          children: [
            GestureDetector(
              onTap: () => apiProvider.fetchJoke(),
              child: Container(
                height: 80,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                  color: Constant.thunderCloud,
                ),
                child: Text(
                  'I need more 🗿',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 80,
                  width: 80,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  decoration: BoxDecoration(
                    color: Constant.thunderCloud,
                    border: Border(left: BorderSide(color: Colors.white)),
                  ),
                  child: Icon(
                    Icons.thumb_down,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        ExpansionTile(
          childrenPadding: EdgeInsets.all(18),
          
          title: Text(
            'Check your laugh counter',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'By the times we make you laugh, we have added to your miserable life:',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 10,),
           RichText(
            text: TextSpan(
              
            children: [
              TextSpan(text: '8 ',style: Theme.of(context).textTheme.displaySmall),
              TextSpan(text: 'hours and ',style: Theme.of(context).textTheme.labelMedium),
              TextSpan(text: '34 ',style: Theme.of(context).textTheme.displaySmall),
              TextSpan(text: 'seconds',style: Theme.of(context).textTheme.labelMedium),

            ]
           )),
                       SizedBox(height: 10,),

                     Text(
              'You are welcome!🖤',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
          iconColor: Colors.black,
        ),
        SizedBox(
          height: 40,
        ),
      ]),
    ));
  }
}
