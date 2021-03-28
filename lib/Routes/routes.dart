import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';
import 'package:whatsappclone/screens/chat.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case welcomeRoute:
      return MaterialPageRoute(builder: (_) => WelcomeScreen());
    case PhoneAuthRoute:
      return MaterialPageRoute(builder: (_) => PhoneAuthenticationScreen());
    case OtpScreenRoute:
      return MaterialPageRoute(builder: (_) => OtpScreen());
    case WhatsAppHomeRoute:
      return MaterialPageRoute(builder: (_) => WhatsAppHome());
    case ChatRoom:
      return MaterialPageRoute(builder: (_) => Chat());
    case OTPScreen:
      return MaterialPageRoute(builder: (_) => OtpScreen());
    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                    child: Text('No route defined for ${settings.name}')),
              ));
  }
}
