import 'package:dio/dio.dart';
import 'package:juice/api/core/api_core.dart';
import 'package:juice/api/core/api_links.dart';
import 'package:juice/api/core/custom_response.dart';
import 'package:juice/locator/locator.dart';

mixin RandomApi on ApiCore {
  final ApiLinks endpoint = locator<ApiLinks>();
}
