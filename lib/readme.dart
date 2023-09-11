/// Design Pattern المستخدمة هي MVC
/// الان انشأت 3 ملفات:
/// Core: وهو مسؤول عن الشغلات الاساية اللي حنحتاجها في المشروع باستمرار مثل: function, class, shared, localization, services..
/// Data: مسؤول عن كل حاجه بتتعلق في الداتا، من وين نجيبها وكيف هنهندلها مثل: data source, model
/// View: مسؤول عن كل حاجه بتنعرض للمستخدم او بشوفها مثل: widget, screen
/// Constant: وجواه بحط الثوابت يعني الشغلات الي بتكون ثابته طوال المشروع مثل BaseUrl, ApiKey, Token, Messages, Name of Route



/// note:
/// Get.toNamed()  == Navigator.Push()
/// لما اجي اعوض في داله من خلال البراميتر لأازم احط اقواس الفنكش ولا البراميتر مثل:
//  CustomButtomAuth(text: '15'.tr, onPressed: ()
//               {
//                 controller.login();
//               },),
