class CurrenWeatherModel {
  final Coord coord;
  final List<Weather> weather;
  final String base;
  final Main main;
  final String visibility;
  final Wind wind;
  final Clouds clouds;
  final int dt;
  final Sys sys;
  final int timezone;
  final int id;
  final String name;
  final int cod;

  CurrenWeatherModel({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

factory CurrenWeatherModel.fromJson(Map<String, dynamic> json) {
  return CurrenWeatherModel(
    coord: Coord.fromJson(json['coord'] ?? {}),
    weather: (json['weather'] as List<dynamic>? ?? [])
        .map((weatherJson) => Weather.fromJson(weatherJson ?? {}))
        .toList(),
    base: json['base'] ?? '',
    main: Main.fromJson(json['main'] ?? {}),
    visibility: json['visibility'].toString(),
    wind: Wind.fromJson(json['wind'] ?? {}),
    clouds: Clouds.fromJson(json['clouds'] ?? {}),
    dt: json['dt'] as int? ?? 0,
    sys: Sys.fromJson(json['sys'] ?? {}),
    timezone: json['timezone'] as int? ?? 0,
    id: json['id'] as int? ?? 0,
    name: json['name'] ?? '',
    cod: json['cod'] as int? ?? 0,
  );
}



}

class Coord {
  final double lon;
  final double lat;
  Coord({
    required this.lon,
    required this.lat,
  });

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(lon: json['lon'], lat: json['lat']);
  }
}

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather(
      {required this.main,
      required this.description,
      required this.icon,
      required this.id});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        description: json['description'] ?? 'NA',
        main: json['main'] ?? 'NA',
        icon: json['icon'] ?? 'NA',
        id: json['id'] ?? 0,
        );
  }
}

class Main {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final int seaLevel;
  final int groundLevel;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.groundLevel,
  });

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: json['temp'] ?? 0.0,
      feelsLike: json['feels_like'] ?? 0.0,
      tempMin: json['temp_min'] ?? 0.0,
      tempMax: json['temp_max'] ?? 0.0,
      pressure: json['pressure'] ?? 0,
      humidity: json['humidity'] ?? 0,
      seaLevel: json['sea_level'] ?? 0,
      groundLevel: json['grnd_level'] ?? 0,
    );
  }
}

class Wind {
  final double speed;
  final int deg;

  Wind({required this.speed, required this.deg});

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: json['speed'] ?? 0.0,
      deg: json['deg'] ?? 0,
    );
  }
}

class Clouds {
  final int all;

  Clouds({required this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json['all'],
    );
  }
}

class Sys {
  final int type;
  final int id;
  final String country;
  final int sunrise;
  final int sunset;

  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      type: json['type'] ?? 0,
      id: json['id'] ?? 0,
      country: json['country'] ,
      sunrise: json['sunrise'] ?? 0,
      sunset: json['sunset'] ?? 0,
    );
  }
}
