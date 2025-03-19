import 'package:json_annotation/json_annotation.dart';

part 'specializations_response_model.g.dart';

@JsonSerializable()
class SpecializationsResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationsData?>? specializationsList;

  SpecializationsResponseModel({
    this.specializationsList,
  });

  factory SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationsData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<DoctorsModel?>? doctorsList;

  SpecializationsData({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationsData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsDataFromJson(json);
}

@JsonSerializable()
class DoctorsModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? degree;
  String? gender;
  @JsonKey(name: 'appoint_price')
  int? price;
  @JsonKey(name: 'start_time')
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;
  CityModel? city;

  DoctorsModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.price,
    this.gender,
    required this.degree,
    this.startTime,
    this.endTime,
    this.city,
  });

  factory DoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsModelFromJson(json);
}

@JsonSerializable()
class CityModel {
  int? id;
  String? name;

  CityModel({this.id, this.name});

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
