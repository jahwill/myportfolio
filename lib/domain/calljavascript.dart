@JS()
library t;

import 'package:js/js.dart';

//
// // @JS('handleFormSubmit')
// // external bool handleFormSubmit(Map formData, String url);
@JS('gotoContactMe')
external bool gotoContactMe();

class contactForm {
//   // var formData = {};
//
//   // submitForm({Map form}) async {
//   //   String url =
//   //       "https://script.google.com/macros/s/AKfycby4SG4WRn0X0BMzGIvzma-28wRBzMia-Lc52M3vRrqcpG-zebAVSGIYJx513ZqU2JnV/exec";
//   //
//   //   Map<String, dynamic> formData = {
//   //     "name": "Jahswill",
//   //     "phone": "09023457869",
//   //     "mail": "meetjahwill@gmail"
//   //         ".com",
//   //     "aka": "bobor",
//   //     "formDataNameOrder": '["name","phone","mail","aka"]',
//   //     "formGoogleSheetName": "contactjahwill",
//   //     "formGoogleSendEmail": ""
//   //   };
//   //   await handleFormSubmit(formData, url);
//   //   print('sending data...');
//   // }
//

  ///this class call on a javascript file in the index.html page of the flutter
  /// web
  ///version
  ///of this app
  navigatetopage() async {
    gotoContactMe();
    print('navigating....');
  }
}
