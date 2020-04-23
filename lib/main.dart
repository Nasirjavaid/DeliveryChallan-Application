import 'package:flutter/material.dart';
import 'package:vision_plus/Screens/loginScreen/loginScreen.dart';

import 'Services/service_locator.dart';


void main() {


//rergister the services here for getIt dependency injection 
  setupLocator();

  runApp(MyApp());
  //Making the status bar transparent
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  // ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'No tittle here ',
        // theme: ThemeData(
        //   primarySwatch: Color.fromRGBO(64, 75, 96, .9),
        //   // primaryColor: Color.fromRGBO(64, 75, 96, .9),
        
        
        // ),
        home: Stack(
          children: <Widget>[
            //X1Demo(),
       LoginScreen(),
          ],
        ));
  }

  
}

// import 'package:flutter/material.dart';
// import 'package:vision_plus/network/httpServices.dart';
// import 'package:vision_plus/models/User.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   HttpService _httpService = HttpService();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         // We will fetch data into UI using Future Builder
//         child: FutureBuilder(
//           future: this._httpService.getUsersPosts(),
//           builder:
//               (BuildContext context, AsyncSnapshot<List<User>> userSnapshot) {
//             print("snapshot: ${userSnapshot.data}");
//             if (userSnapshot.data == null) {
//               return Center(
//                 child: SizedBox(
//                   height: 20,
//                   width: 20,
//                   child: CircularProgressIndicator(strokeWidth: 2),
//                 ),
//               );
//             } else {
//               return ListView.builder(
//                 itemCount: userSnapshot.data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   User _thisUser = userSnapshot.data[index];
//                   // template for list view
//                   return ListTile(
//                     title: Text(_thisUser.title),
//                     subtitle: Text(_thisUser.body),
//                     onTap: () {
//                       debugPrint(
//                           "Data tapped: ${_thisUser.title} ${_thisUser.body}");
//                     },
//                   );
//                 },
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

