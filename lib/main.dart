import 'package:whatsappclone/services/helperfunctions.dart';

import 'exportLibraries/custom_widgets.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: generateRoute,
      initialRoute: welcomeRoute,
      debugShowCheckedModeBanner: false,
      home: new SplashScreen(
          seconds: 5,
          navigateAfterSeconds: MyHomePage(title: 'WhatsApp'),
          title: new Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'assets/fonts/overpass_regular.otf'),
          ),
          image: new Image.asset('assets/logo.png'),
          backgroundColor: new Color(0xff075E54),
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          loaderColor: Colors.white),
      routes: <String, WidgetBuilder>{
        '/otpScreen': (BuildContext ctx) => OtpScreen(),
        '/homeScreen': (BuildContext ctx) => WhatsAppHome(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool userIsLoggedIn;

  @override
  void initState() {
    getLoggedInState();
    super.initState();
  }

  getLoggedInState() async {
    await HelperFunctions.getUserLoggedInSharedPreference().then((value) {
      setState(() {
        userIsLoggedIn = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  userIsLoggedIn != null ?  userIsLoggedIn ? WhatsAppHome() :  WelcomeScreen()
        : Container(
      child: WelcomeScreen(),
    );











      // FutureBuilder<FirebaseUser>(
      //   future: FirebaseAuth.instance.currentUser(),
      //   builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot) {
      //     if (snapshot.hasData) {
      //       FirebaseUser user = snapshot.data; // this is your user instance
      //       /// is because there is user already logged
      //       return WhatsAppHome(
      //         cameras: cameras,
      //       );
      //     }
      //
      //     /// other way there is no user logged.
      //     return
      //         WelcomeScreen();
      //       //   WhatsAppHome(
      //       // cameras: cameras,
      //     // );
      //   });
  }
}
