import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';

class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome({this.cameras});

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {

//Creates a tabcontroller variable which will be used to hold reference to and cycle //through the our different screens.
  TabController _tabController;
//this will be used to detect when to show our FAB
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
      } else if(_tabController.index==3){
        showFab = true;
        isCallsPage = true;
      }else {
        showFab = false;
        isCallsPage = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Icon(Icons.more_vert)
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
        child: isCallsPage? Icon(
          Icons.add_call,
          color: Colors.white,
        ):Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("fab clicked"),
      )
          : null,
    );
  }
}