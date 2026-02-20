// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'My Flutter App';

  @override
  String get welcomeMessage => 'Welcome to my Flutter app!';

  @override
  String get loginButton => 'Log In';

  @override
  String get signupButton => 'Sign Up';

  @override
  String get logoutButton => 'Log Out';

  @override
  String get homeScreenTitle => 'Home';

  @override
  String get settingsScreenTitle => 'Settings';

  @override
  String get profileScreenTitle => 'Profile';

  @override
  String get lg => 'Language';

  @override
  String get ar => 'Arabic';

  @override
  String get en => 'English';

  @override
  String get theme => 'Theme';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get getstarted => 'Get Started';
}
