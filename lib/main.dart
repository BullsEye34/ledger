import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: app(),
    ),
  ));
}

class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/placeholder.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text('LOGIN'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('SIGNUP'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Container(
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    //controller: uname,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.face),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: 'Username (Mail ID)',
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Container(
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    //controller: uname,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.face),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      labelText: 'Password',
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: InkWell(
                  onTap: () {
                    print('hi');
                  },
                  child: Container(
                    height: h / 15.5,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text('OR'),
          FlatButton(
            onPressed: () {},
            child: SvgPicture.asset(
              'assets/google.svg',
              height: h / 25,
            ),
          ),
        ],
      ),
    );
  }
}
