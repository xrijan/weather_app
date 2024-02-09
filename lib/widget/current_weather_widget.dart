import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:weather_app/providers/api_provider.dart";
import "package:weather_app/utils/constant.dart";

class CurrentWeatherWidget extends StatelessWidget {
  const CurrentWeatherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);
    final int temp = Constant.kelvinToCelsius(apiProvider.currenWeatherModel!.main.temp); // Default value or handle null case accordingly
    final int tempMax = Constant.kelvinToCelsius(apiProvider.currenWeatherModel!.main.tempMax);
    final int tempMin = Constant.kelvinToCelsius(apiProvider.currenWeatherModel!.main.tempMin);

    return AspectRatio(
      aspectRatio: 16 / 12,
      child: Container(
        color: Constant.mistyMorning,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '$temp°',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            apiProvider.currenWeatherModel!.name,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                  color: Constant.solarFlare,
                  border: Border.all(color: Colors.white)),
              child: Text(
                apiProvider.currenWeatherModel!.weather.first.main,
                style: Theme.of(context).textTheme.labelSmall,
              )),
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Text(
            'H: $tempMax°  L:$tempMin°',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ]),
      ),
    );
  }
}
