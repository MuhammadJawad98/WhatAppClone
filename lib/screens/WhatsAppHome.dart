import '../tabs/chat_page.dart';
import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;

  WhatsAppHome({this.cameras});

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  bool showFab = true;
  bool isCallsPage = false;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
        isCallsPage = false;
      } else if (_tabController.index == 3) {
        showFab = true;
        isCallsPage = true;
      } else if (_tabController.index == 2) {
        showFab = true;
        isCallsPage = true;
      } else {
        showFab = false;
        isCallsPage = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          elevation: 0.7,

          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
          actions: <Widget>[
            Icon(Icons.search),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            // Icon(Icons.more_vert)
            myPopUpMenu(_tabController.index)
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            CameraPage(widget.cameras),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: showFab
            ? FloatingActionButton(
                backgroundColor: Theme.of(context).accentColor,
                child: isCallsPage
                    ? Icon(
                        Icons.add_call,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                onPressed: () => print("fab clicked"),
              )
            : null,
      ),
    );
  }

  Widget myPopMenuChatScreen() {
    return PopupMenuButton(
        onSelected: (value) {
          Fluttertoast.showToast(
              msg: "You have selected " + value.toString(),
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text('New group')),
              PopupMenuItem(value: 2, child: Text('New broadcast')),
              PopupMenuItem(value: 3, child: Text('WhatsApp Web')),
              PopupMenuItem(value: 4, child: Text('Starred messages')),
              PopupMenuItem(value: 5, child: Text('Settings')),
            ]);
  }

  Widget myPopMenuStatusScreen() {
    return PopupMenuButton(
        onSelected: (value) {
          Fluttertoast.showToast(
              msg: "You have selected " + value.toString(),
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        itemBuilder: (context) => [
              PopupMenuItem(value: 6, child: Text('Status privacy')),
              PopupMenuItem(value: 7, child: Text('Setting')),
            ]);
  }
  Widget myPopMenuCallScreen() {
    return PopupMenuButton(
        onSelected: (value) {
          Fluttertoast.showToast(
              msg: "You have selected " + value.toString(),
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0);
        },
        itemBuilder: (context) => [
          PopupMenuItem(value: 6, child: Text('Clear call log')),
          PopupMenuItem(value: 7, child: Text('Settings')),
        ]);
  }
  // ignore: missing_return
  Widget myPopUpMenu(int i) {
    switch (i) {
      case 0:
        return SizedBox();
        break;
      case 1:
        return myPopMenuChatScreen();
        break;
      case 2:
        return myPopMenuStatusScreen();
        break;
      case 3:
        return myPopMenuCallScreen();
        break;
    }
  }

  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => exit(0),
            /*Navigator.of(context).pop(true)*/
            child: Text('Yes'),
          ),
        ],
      ),
    ) ??
        false;
  }
}
