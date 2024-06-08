
import 'package:intl/intl.dart';

class AppConstant{

  static const fontFamilyAlmarai="Almarai";
  static const fontFamilyArial="arial";

  static bool checkArabic() {
    return Intl.getCurrentLocale() == 'ar';
  }
}