import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 150,
            ),
            Text(
              'Welcome to WhatApp',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/whatsapp.png',
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            // Flexible(child: Text("Read our Privacy Policy. Tap'Agree and continue' to accept  the Term of Servcie.",style: TextStyle(color: Colors.green),))
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Read our ',
                  style: TextStyle(color: Colors.grey),
                  /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(color: Colors.greenAccent)),
                    TextSpan(
                        text: '  Tap "Agree and continue" to accept the ',
                        style: TextStyle(color: Colors.grey)),
                    TextSpan(
                        text: ' Terms of Service.',
                        style: TextStyle(color: Colors.greenAccent)),
                  ],
                ),
              ),
            ),
            Container(
              child: FlatButton(
                child: Text('AGREE AND CONTINUE'),
                color: Colors.greenAccent[400],
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhoneAuthenticationScreen()),
                  );
                },
              ),
            ),
          ],
        ),
        new Positioned(
          bottom: 0.0,
          child: new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.all(0.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('from'),
                SizedBox(height: 5),
                Text(
                  'Facebook',
                  style: TextStyle(
                      color: Colors.greenAccent[400],
                      fontSize: 20,
                      letterSpacing: 2.0),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
