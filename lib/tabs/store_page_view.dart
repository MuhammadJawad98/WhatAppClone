import 'dart:math';

import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';

class StoryPageView extends StatefulWidget {
  final StatusModel statusModel;

  StoryPageView({this.statusModel});

  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final _storyController = StoryController();

  List<StoryItem> storyItems = new List();

  final controller = StoryController();

  @override
  void initState() {
    // TODO: implement initState
    if (widget.statusModel.text.length > 0) {
      for (int i = 0; i < widget.statusModel.text.length; i++) {
        setState(() {
          print('text>>>' + widget.statusModel.text[i]);
          storyItems.add(
            StoryItem.text(
              title: widget.statusModel.text[i],
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
          );
        });
      }
    } else {
      print('Null Text');
    }
    if (widget.statusModel.img.length > 0) {
      for (int i = 0; i < widget.statusModel.img.length; i++) {
        setState(() {
          storyItems.add(
            StoryItem.pageImage(
                url: widget.statusModel.img[i], controller: _storyController),
          );
        });
      }
    } else {
      print('Null Image url');

    }

    if (widget.statusModel.video.length> 0) {
      for (int i = 0; i < widget.statusModel.video.length; i++) {
        setState(() {
          storyItems.add(
            StoryItem.pageVideo(widget.statusModel.video[i],
                controller: _storyController),
          );
        });
      }
    } else {
      print('Null Video');

    }

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // setStatus();

    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: false,
        onComplete: () {
          storyItems.clear();
          Navigator.pop(context);
        },
      ),
    );
  }

//   Future<void> setStatus() async {
//     storyItems = [
//       StoryItem.text(title: '''If you do not make time for your wellness,
// you will be forced to make time for your illness.
// #ReadThatAgain''', backgroundColor: Colors.red),
//       StoryItem.text(title: 'Hellloooooooo', backgroundColor: Colors.teal),
//       StoryItem.pageImage(
//           url:
//               "https://images.unsplash.com/photo-1541233349642-6e425fe6190e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
//           controller: _storyController),
//       StoryItem.pageImage(
//           url:
//               "https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif",
//           controller: _storyController,
//           imageFit: BoxFit.contain),
//     ];
//
// // Future<void> setStatus(StatusModel statusModel) async{
// //   for (var i = 0; i < statusModel.text.length; i++) {
// //     storyItems.add(
// //       StoryItem.text(
// //           title: statusModel.text[i], backgroundColor: Colors.teal),
// //     );
// //   }
// // for (var i = 0; i < statusModel.img.length; i++) {
// //   storyItems.add(
// //     StoryItem.pageImage(url: statusModel.img[i],controller: _storyController),
// //   );
// // }
// // for (var i = 0; i < statusModel.video.length; i++) {
// //   storyItems.add(
// //     StoryItem.pageVideo(statusModel.video[i], caption: "Sample video",controller: _storyController),
// //   );
// // }
// // }
// //   void addItemToList(){
// //     setState(() {
// //       names.insert(0,nameController.text);
// //       msgCount.insert(0, 0);
// //     });
//   }
}
