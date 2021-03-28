import 'package:flutter/material.dart';
import 'package:whatsappclone/model/ConversationModel.dart';
import 'package:whatsappclone/widget/widget.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController messageEditingController = new TextEditingController();
// New code
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    messageEditingController.dispose();
  }

  Widget chatMessages() {
    return Container(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: dummyConversationData.length,
        itemBuilder: (context, i) =>
        new Column(
          children: <Widget>[
            MessageTile(
              message: dummyConversationData[i].message,
              sendByMe: 'Jawad' == dummyConversationData[i].sendBy,
            ),
          ],
        ),
      ),
      margin: EdgeInsets.only(bottom: 70),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('WhatsApp')),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgroundimg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              chatMessages(),
              Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                            controller: messageEditingController,
                            style: simpleTextStyle(),
                            decoration: InputDecoration(
                                hintText: "Message ...",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                                border: InputBorder.none),
                          )),
                      SizedBox(
                        width: 16,
                      ),
                      GestureDetector(
                        onTap: () {
                          // addMessage();
                          addMessage(messageEditingController.text);
                          setState(() {
                            messageEditingController.text = '';
                            _scrollController.animateTo(
                                _scrollController.position.maxScrollExtent,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.fastOutSlowIn);
                          });

                        },
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      const Color(0x36FFFFFF),
                                      const Color(0x0FFFFFFF)
                                    ],
                                    begin: FractionalOffset.topLeft,
                                    end: FractionalOffset.bottomRight),
                                borderRadius: BorderRadius.circular(40)),
                            padding: EdgeInsets.all(12),
                            child: Image.asset(
                              "assets/images/send.png",
                              height: 25,
                              width: 25,
                              color: Colors.grey,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  addMessage(String msg) {
    if (msg.isNotEmpty) {
      var obj = ConversationModel(
          message: msg,
          sendBy: 'Jawad',
          time: DateTime
              .now()
              .millisecondsSinceEpoch
              .toString());
      dummyConversationData.add(obj);
    } else {
      showInSnackBar();
    }
  }

  void showInSnackBar() {
    final snackBar = SnackBar(content: Text('Enter Some Message!'));

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class MessageTile extends StatelessWidget {
  final String message;
  final bool sendByMe;

  MessageTile({@required this.message, @required this.sendByMe});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 8, bottom: 8, left: sendByMe ? 0 : 24, right: sendByMe ? 24 : 0),
      alignment: sendByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin:
        sendByMe ? EdgeInsets.only(left: 30) : EdgeInsets.only(right: 30),
        padding: EdgeInsets.only(top: 17, bottom: 17, left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: sendByMe
              ? BorderRadius.only(
              topLeft: Radius.circular(23),
              topRight: Radius.circular(23),
              bottomLeft: Radius.circular(23))
              : BorderRadius.only(
              topLeft: Radius.circular(23),
              topRight: Radius.circular(23),
              bottomRight: Radius.circular(23)),
          gradient: LinearGradient(
            colors: sendByMe
                ? [const Color(0xff2f8b78), const Color(0xff2f8b78)]
                : [const Color(0xff2A75BC), const Color(0xff2A75BC)],
          ),
        ),
        child: Text(message,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'OverpassRegular',
                fontWeight: FontWeight.w300)),
      ),
    );
  }


}
