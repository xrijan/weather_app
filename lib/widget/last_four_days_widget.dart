import 'package:flutter/material.dart';
import 'package:weather_app/utils/constant.dart';

class LastFourDayWidget extends StatelessWidget {
  const LastFourDayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Constant.duskFire,
              border: Border.all(color: Colors.white),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('now',style: Theme.of(context).textTheme.labelSmall,),
                const Icon(Icons.cloud_outlined,size: 40,),
                Text('12°',style: Theme.of(context).textTheme.labelMedium,),
              ],
            ),
          ),
        ),

                Expanded(
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Constant.duskFire,
              border: Border.all(color: Colors.white),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('now',style: Theme.of(context).textTheme.labelSmall,),
                const Icon(Icons.cloud_outlined,size: 40,),
                Text('12°',style: Theme.of(context).textTheme.labelMedium,),
              ],
            ),
          ),
        ),
                Expanded(
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Constant.duskFire,
              border: Border.all(color: Colors.white),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('now',style: Theme.of(context).textTheme.labelSmall,),
                const Icon(Icons.cloud_outlined,size: 40,),
                Text('12°',style: Theme.of(context).textTheme.labelMedium,),
              ],
            ),
          ),
        ),
                Expanded(
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Constant.duskFire,
              border: Border.all(color: Colors.white),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('now',style: Theme.of(context).textTheme.labelSmall,),
                const Icon(Icons.cloud_outlined,size: 40,),
                Text('12°',style: Theme.of(context).textTheme.labelMedium,),
              ],
            ),
          ),
        ),
                Expanded(
          child: Container(
            height: 140,
            decoration: BoxDecoration(
              color: Constant.duskFire,
              border: Border.all(color: Colors.white),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('now',style: Theme.of(context).textTheme.labelSmall,),
                const Icon(Icons.cloud_outlined,size: 40,),
                Text('12°',style: Theme.of(context).textTheme.labelMedium,),
              ],
            ),
          ),
        ),
      
      ],
    );
  }
}

