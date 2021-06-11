import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class TrustedCompany {
  final int id;
  final String title, imagePath;

  TrustedCompany({this.id, this.title, this.imagePath});
}

// For demo list of companies
class TrustedCompanyController extends GetxController {
  List<TrustedCompany> get trustedCompanies => [
        TrustedCompany(
          id: 1,
          title: "Southwest Company",
          imagePath: "assets/images/company_1.png",
        ),
        TrustedCompany(
          id: 2,
          title: "Anubis",
          imagePath: "assets/images/company_2.png",
        ),
        TrustedCompany(
          id: 3,
          title: "Alonzo Casseta",
          imagePath: "assets/images/company_3.png",
        ),
        TrustedCompany(
          id: 4,
          title: "Premium Express",
          imagePath: "assets/images/company_4.png",
        ),
        TrustedCompany(
          id: 5,
          title: "Maniac",
          imagePath: "assets/images/company_5.png",
        ),
      ];
}
