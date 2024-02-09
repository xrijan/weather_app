class JockModel {
  final int id;
  final String lang;
  final bool error;
  final String category;
  final String type;
  final String joke;
  final String setup;
  final String delivery;
  final Flags flag;

  JockModel({
    required this.id,
    required this.lang,
    required this.error,
    required this.category,
    required this.type,
    required this.joke,
    required this.setup,
    required this.delivery,
    required this.flag,
  });

  factory JockModel.fromJson(Map<String, dynamic> json) {
    return JockModel(
      id: json['id'] ?? 0,
      lang: json['lang'] ?? 'NA',
      error: json['error'] ?? false,
      category: json['category'] ?? 'NA',
      type: json['type'] ?? 'NA',
      joke: json['joke'] ?? 'NA',
      delivery: json['delivery'] ?? 'NA',
      setup: json['setup'] ?? 'NA', // Fix typo: 'setup' instead of 'delivery'
      flag: Flags.fromJson(json['flag'] ?? {}),
    );
  }
}

class Flags {
  final bool nsfw;
  final bool religious;
  final bool political;
  final bool racist;
  final bool sexist;
  final bool explicit;

  Flags({
    required this.nsfw,
    required this.religious,
    required this.political,
    required this.racist,
    required this.sexist,
    required this.explicit,
  });

  factory Flags.fromJson(Map<String, dynamic> json) {
    return Flags(
      nsfw: json['nsfw'] ?? false,
      religious: json['religious'] ?? false,
      political: json['political'] ?? false,
      racist: json['racist'] ?? false,
      sexist: json['sexist'] ?? false,
      explicit: json['explicit'] ?? false,
    );
  }
}
