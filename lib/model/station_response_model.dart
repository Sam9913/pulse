class StationResponse {
  bool? success;
  String? message;
  List<Data>? data;

  StationResponse({this.success, this.message, this.data});

  StationResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? routeId;
  String? routeShortName;
  List<Stops>? stops;
  List<String>? categories;
  List<String>? trips;
  String? agencyId;
  String? routeLongName;
  int? routeType;
  String? routeColor;
  String? routeTextColor;
  int? sequence;

  Data(
      {this.routeId,
      this.routeShortName,
      this.stops,
      this.categories,
      this.trips,
      this.agencyId,
      this.routeLongName,
      this.routeType,
      this.routeColor,
      this.routeTextColor,
      this.sequence});

  Data.fromJson(Map<String, dynamic> json) {
    routeId = json['route_id'];
    routeShortName = json['route_short_name'];
    if (json['stops'] != null) {
      stops = <Stops>[];
      json['stops'].forEach((v) {
        stops!.add(Stops.fromJson(v));
      });
    }
    categories = json['categories'] != null ? json['categories'].cast<String>() : null;
    trips = json['trips'] != null ? json['trips'].cast<String>() : null;
    agencyId = json['agency_id'];
    routeLongName = json['route_long_name'];
    routeType = json['route_type'];
    routeColor = json['route_color'];
    routeTextColor = json['route_text_color'];
    sequence = json['sequence'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['route_id'] = routeId;
    data['route_short_name'] = routeShortName;
    if (stops != null) {
      data['stops'] = stops!.map((v) => v.toJson()).toList();
    }
    data['categories'] = categories;
    data['trips'] = trips;
    data['agency_id'] = agencyId;
    data['route_long_name'] = routeLongName;
    data['route_type'] = routeType;
    data['route_color'] = routeColor;
    data['route_text_color'] = routeTextColor;
    data['sequence'] = sequence;
    return data;
  }
}

class Stops {
  List<Kiosks>? kiosks;
  List<Facilities>? facilities;
  String? stopId;
  String? stopName;
  String? routeId;
  Geometry? geometry;
  String? routeColor;
  String? sequence;
  List<String>? categories;

  Stops(
      {this.kiosks,
      this.facilities,
      this.stopId,
      this.stopName,
      this.routeId,
      this.geometry,
      this.routeColor,
      this.sequence,
      this.categories});

  Stops.fromJson(Map<String, dynamic> json) {
    if (json['kiosks'] != null) {
      kiosks = <Kiosks>[];
      json['kiosks'].forEach((v) {
        kiosks!.add(Kiosks.fromJson(v));
      });
    }
    if (json['facilities'] != null) {
      facilities = <Facilities>[];
      json['facilities'].forEach((v) {
        facilities!.add(Facilities.fromJson(v));
      });
    }
    stopId = json['stop_id'];
    stopName = json['stop_name'];
    routeId = json['route_id'];
    geometry = json['geometry'] != null ? Geometry.fromJson(json['geometry']) : null;
    routeColor = json['route_color'];
    sequence = json['sequence'];
    categories = json['categories'] != null ? json['categories'].cast<String>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (kiosks != null) {
      data['kiosks'] = kiosks!.map((v) => v.toJson()).toList();
    }
    if (facilities != null) {
      data['facilities'] = facilities!.map((v) => v.toJson()).toList();
    }
    data['stop_id'] = stopId;
    data['stop_name'] = stopName;
    data['route_id'] = routeId;
    if (geometry != null) {
      data['geometry'] = geometry!.toJson();
    }
    data['route_color'] = routeColor;
    data['sequence'] = sequence;
    data['categories'] = categories;
    return data;
  }
}

class Kiosks {
  String? tenant;
  String? name;
  String? category;
  int? code;

  Kiosks({this.tenant, this.name, this.category, this.code});

  Kiosks.fromJson(Map<String, dynamic> json) {
    tenant = json['tenant'];
    name = json['name'];
    category = json['category'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['tenant'] = tenant;
    data['name'] = name;
    data['category'] = category;
    data['code'] = code;
    return data;
  }
}

class Facilities {
  String? name;
  String? category;
  int? code;

  Facilities({this.name, this.category, this.code});

  Facilities.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    category = json['category'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['category'] = category;
    data['code'] = code;
    return data;
  }
}

class Geometry {
  List<double>? coordinates;
  String? sId;
  String? type;

  Geometry({this.coordinates, this.sId, this.type});

  Geometry.fromJson(Map<String, dynamic> json) {
    coordinates = json['coordinates'].cast<double>();
    sId = json['_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coordinates'] = coordinates;
    data['_id'] = sId;
    data['type'] = type;
    return data;
  }
}
