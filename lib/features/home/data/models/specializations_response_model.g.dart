// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specializations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationsResponseModel _$SpecializationsResponseModelFromJson(
        Map<String, dynamic> json) =>
    SpecializationsResponseModel(
      specializationsList: (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpecializationsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationsResponseModelToJson(
        SpecializationsResponseModel instance) =>
    <String, dynamic>{
      'data': instance.specializationsList,
    };

SpecializationsData _$SpecializationsDataFromJson(Map<String, dynamic> json) =>
    SpecializationsData(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DoctorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationsDataToJson(
        SpecializationsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

DoctorsModel _$DoctorsModelFromJson(Map<String, dynamic> json) => DoctorsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      price: (json['appoint_price'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      degree: json['degree'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DoctorsModelToJson(DoctorsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'degree': instance.degree,
      'gender': instance.gender,
      'appoint_price': instance.price,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'city': instance.city,
    };

CityModel _$CityModelFromJson(Map<String, dynamic> json) => CityModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CityModelToJson(CityModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
