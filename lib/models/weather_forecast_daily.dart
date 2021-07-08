class WeatherForecast {
  City? city;
  String? cod;
  double? message;
  int? cnt;
  List<WeatherList>? list;

  WeatherForecast({
    this.city,
    this.cod,
    this.message,
    this.cnt,
    this.list});

  WeatherForecast.fromJson(dynamic json) {
    city = json["city"] != null ? City.fromJson(json["city"]) : null;
    cod = json["cod"];
    message = json["message"];
    cnt = json["cnt"];
    if (json["list"] != null) {
      list = [];
      json["list"].forEach((v) {
        list?.add(WeatherList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (city != null) {
      map["city"] = city?.toJson();
    }
    map["cod"] = cod;
    map["message"] = message;
    map["cnt"] = cnt;
    if (list != null) {
      map["list"] = list?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class WeatherList {
  int? dt;
  int? sunrise;
  int? sunset;
  Temp? temp;
  Feels_like? feelsLike;
  int? pressure;
  int? humidity;
  List<Weather>? weather;
  double? speed;
  int? deg;
  double? gust;
  int? clouds;
  int? pop;

  WeatherList({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.weather,
    this.speed,
    this.deg,
    this.gust,
    this.clouds,
    this.pop});

  WeatherList.fromJson(dynamic json) {
    dt = json["dt"];
    sunrise = json["sunrise"];
    sunset = json["sunset"];
    temp = json["temp"] != null ? Temp.fromJson(json["temp"]) : null;
    feelsLike = json["feels_like"] != null ? Feels_like.fromJson(json["feelsLike"]) : null;
    pressure = json["pressure"];
    humidity = json["humidity"];
    if (json["weather"] != null) {
      weather = [];
      json["weather"].forEach((v) {
        weather?.add(Weather.fromJson(v));
      });
    }
    speed = json["speed"];
    deg = json["deg"];
    gust = json["gust"];
    clouds = json["clouds"];
    pop = json["pop"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["dt"] = dt;
    map["sunrise"] = sunrise;
    map["sunset"] = sunset;
    if (temp != null) {
      map["temp"] = temp?.toJson();
    }
    if (feelsLike != null) {
      map["feels_like"] = feelsLike?.toJson();
    }
    map["pressure"] = pressure;
    map["humidity"] = humidity;
    if (weather != null) {
      map["weather"] = weather?.map((v) => v.toJson()).toList();
    }
    map["speed"] = speed;
    map["deg"] = deg;
    map["gust"] = gust;
    map["clouds"] = clouds;
    map["pop"] = pop;
    return map;
  }

}

class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({
    this.id,
    this.main,
    this.description,
    this.icon});

  Weather.fromJson(dynamic json) {
    id = json["id"].toDouble();
    main = json["main"].toDouble();
    description = json["description"].toDouble();
    icon = json["icon"].toDouble();
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["main"] = main;
    map["description"] = description;
    map["icon"] = icon;
    return map;
  }

}

class Feels_like {
  double? day;
  double? night;
  double? eve;
  int? morn;

  Feels_like({
    this.day,
    this.night,
    this.eve,
    this.morn});

  Feels_like.fromJson(dynamic json) {
    day = json["day"].toDouble();
    night = json["night"].toDouble();
    eve = json["eve"].toDouble();
    morn = json["morn"].toDouble();
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["day"] = day;
    map["night"] = night;
    map["eve"] = eve;
    map["morn"] = morn;
    return map;
  }

}

class Temp {
  double? day;
  double? min;
  double? max;
  double? night;
  double? eve;
  double? morn;

  Temp({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn});

  Temp.fromJson(dynamic json) {
    day = json["day"];
    min = json["min"];
    max = json["max"];
    night = json["night"];
    eve = json["eve"];
    morn = json["morn"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["day"] = day;
    map["min"] = min;
    map["max"] = max;
    map["night"] = night;
    map["eve"] = eve;
    map["morn"] = morn;
    return map;
  }

}

class City {
  int? id;
  String? name;
  Coord? coord;
  String? country;
  int? population;
  int? timezone;

  City({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone});

  City.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    coord = json["coord"] != null ? Coord.fromJson(json["coord"]) : null;
    country = json["country"];
    population = json["population"];
    timezone = json["timezone"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    if (coord != null) {
      map["coord"] = coord?.toJson();
    }
    map["country"] = country;
    map["population"] = population;
    map["timezone"] = timezone;
    return map;
  }

}

class Coord {
  double? lon;
  double? lat;

  Coord({
    this.lon,
    this.lat});

  Coord.fromJson(dynamic json) {
    lon = json["lon"];
    lat = json["lat"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["lon"] = lon;
    map["lat"] = lat;
    return map;
  }

}
