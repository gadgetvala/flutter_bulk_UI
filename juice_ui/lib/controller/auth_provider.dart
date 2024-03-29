import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:juice/api/core/api_exporter.dart';
import 'package:juice/api/core/custom_response.dart';
import 'package:juice/controller/core/default_change_notifier.dart';
import 'package:juice/locator/locator.dart';

final authProvider = ChangeNotifierProvider((ref) => AuthProvider());

class AuthProvider extends DefaultChangeNotifier {
  final api = locator<ApiExporter>();

  // Future<CommonResponse> signUpUser({required SignUpInput input}) async {
  //   toggleLoadingOn(true);
  //   final res = await api.signUpUser(input: input);
  //   if (res.status == Status.ERROR) {
  //     Fluttertoast.showToast(msg: res.message);
  //   }
  //   toggleLoadingOn(false);
  //   return res.data;
  // }
}
