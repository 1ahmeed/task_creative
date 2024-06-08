// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Tanta,Stad Area`
  String get tantaStadArea {
    return Intl.message(
      'Tanta,Stad Area',
      name: 'tantaStadArea',
      desc: '',
      args: [],
    );
  }

  /// `change`
  String get change {
    return Intl.message(
      'change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `search for Meal Or Restaurant`
  String get searchMealOrRestaurant {
    return Intl.message(
      'search for Meal Or Restaurant',
      name: 'searchMealOrRestaurant',
      desc: '',
      args: [],
    );
  }

  /// `300 EGP`
  String get p300 {
    return Intl.message(
      '300 EGP',
      name: 'p300',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Quick Order`
  String get quickOrder {
    return Intl.message(
      'Quick Order',
      name: 'quickOrder',
      desc: '',
      args: [],
    );
  }

  /// `Restaurants`
  String get restaurants {
    return Intl.message(
      'Restaurants',
      name: 'restaurants',
      desc: '',
      args: [],
    );
  }

  /// `Grocery`
  String get grocery {
    return Intl.message(
      'Grocery',
      name: 'grocery',
      desc: '',
      args: [],
    );
  }

  /// `ReOrder`
  String get reOrder {
    return Intl.message(
      'ReOrder',
      name: 'reOrder',
      desc: '',
      args: [],
    );
  }

  /// `Hendy Restaurant`
  String get hendyRestaurant {
    return Intl.message(
      'Hendy Restaurant',
      name: 'hendyRestaurant',
      desc: '',
      args: [],
    );
  }

  /// `Family Meal`
  String get familyMeal {
    return Intl.message(
      'Family Meal',
      name: 'familyMeal',
      desc: '',
      args: [],
    );
  }

  /// `Salam Shop`
  String get salamShop {
    return Intl.message(
      'Salam Shop',
      name: 'salamShop',
      desc: '',
      args: [],
    );
  }

  /// `Most Request`
  String get mostRequest {
    return Intl.message(
      'Most Request',
      name: 'mostRequest',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Cook Door`
  String get cookDoor {
    return Intl.message(
      'Cook Door',
      name: 'cookDoor',
      desc: '',
      args: [],
    );
  }

  /// `Sceptra Cafe`
  String get sceptraCafe {
    return Intl.message(
      'Sceptra Cafe',
      name: 'sceptraCafe',
      desc: '',
      args: [],
    );
  }

  /// `Burger`
  String get burger {
    return Intl.message(
      'Burger',
      name: 'burger',
      desc: '',
      args: [],
    );
  }

  /// `Fried Chicken`
  String get friedChicken {
    return Intl.message(
      'Fried Chicken',
      name: 'friedChicken',
      desc: '',
      args: [],
    );
  }

  /// `45 minutes`
  String get p45 {
    return Intl.message(
      '45 minutes',
      name: 'p45',
      desc: '',
      args: [],
    );
  }

  /// `15 EGP`
  String get p15 {
    return Intl.message(
      '15 EGP',
      name: 'p15',
      desc: '',
      args: [],
    );
  }

  /// `May Like`
  String get mayLike {
    return Intl.message(
      'May Like',
      name: 'mayLike',
      desc: '',
      args: [],
    );
  }

  /// `Akeela Meal`
  String get akeelaMeal {
    return Intl.message(
      'Akeela Meal',
      name: 'akeelaMeal',
      desc: '',
      args: [],
    );
  }

  /// `30 EGP`
  String get p30 {
    return Intl.message(
      '30 EGP',
      name: 'p30',
      desc: '',
      args: [],
    );
  }

  /// `60 EGP`
  String get p60 {
    return Intl.message(
      '60 EGP',
      name: 'p60',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
