import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:miniature_palm_tree/.env.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:miniature_palm_tree/google-maps/directions_model.dart';

class DirectionsRepository {
  static const String _baseUrl =
      'https://maps.googleapis.com/maps/api/directions/json?';
  String googleAPIKey = 'AIzaSyC_Rr1xvMSGgO2yrYWS0KbcR0yyss43Mb8';
  final Dio _dio;

  DirectionsRepository({Dio dio}) : _dio = dio ?? Dio();

  Future<Directions> getDirections({
    @required LatLng origin,
    @required LatLng destination,
  }) async {
    final response = await _dio.get(_baseUrl, queryParameters: {
      'origin': '${origin.latitude},${origin.longitude}',
      'key': googleAPIKey,
    });

    //Check if response is successful
    if (response.statusCode == 200) {
      return Directions.fromMap(response.data);
    }
    return null;
  }
}
