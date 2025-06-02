import 'dart:convert';
import 'dart:io';

import 'package:advicer/data/models/advice_dto.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDatasource {
  /// request random advice from api,
  /// return [AdviceModel] on success.
  ///throws [serverError] exception if status code is not 200 (ok)
  Future<AdviceDto> getRandomAdviceFromAPI();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDatasource {
  final client = http.Client();
  @override
  Future<AdviceDto> getRandomAdviceFromAPI() async {
    final response = await client.get(
      Uri.parse('https://api.flutter-community.de/api/v1/advice'),
      headers: {'content-type': 'application/json'},
    );

    /// got the body in a [JSON] formate and  it not a [DTO] yet
    final responseBody = json.decode(response.body);

    /// calling the [AviceDto] function [fromJson]
    /// passing to it the [responseBody]
    return AdviceDto.fromJson(responseBody);
  }
}
