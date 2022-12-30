import 'package:get_it/get_it.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/code_service.dart';
import 'package:sample/src/code/mock_code_service.dart';
import 'package:sample/src/home/home_controller.dart';

var locator = GetIt.instance;

void init() {
  /// Register code controller
  locator.registerFactory(() => CodeController(codeService: locator()));

  /// Home page controller
  locator.registerFactory(() => HomeController());

  /// Register code service
  locator.registerFactory<CodeService>(() => MockCodeService());
}
