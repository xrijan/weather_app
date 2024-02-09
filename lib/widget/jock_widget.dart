
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/api_provider.dart';
import 'package:weather_app/utils/constant.dart';

class JockWidget extends StatelessWidget {
  const JockWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final apiProvider = Provider.of<ApiProvider>(context);

    return apiProvider.jockModel!.joke == 'NA'
        ? Container(
            color: Constant.solarFlare,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('setup'),
                  Text(apiProvider.jockModel!.setup,
                      style: Theme.of(context).textTheme.displayMedium),
                  const Text('delivery'),
                  Text(apiProvider.jockModel!.delivery,
                      style: Theme.of(context).textTheme.displayMedium),
                ],
              ),
            ),
          )
        : Container(
            color: Constant.solarFlare,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(apiProvider.jockModel!.joke,
                  style: Theme.of(context).textTheme.displayMedium),
            ),
          );
  }
}
