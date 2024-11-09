import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:student_automation_system/views/splash_screen/splash_screen.dart';
import 'package:student_automation_system/views/student_home/student_home.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: StudentHomeScreen)
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    Singleton(classType: SnackbarService),
    Singleton(classType: DialogService),
    Singleton(classType: BottomSheetService),
  ],
)
class App {}
