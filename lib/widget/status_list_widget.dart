import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';

class StatusListWidget extends StatefulWidget {
  final ChatModel chatmodel;
  final StatusModel statusModel;

  StatusListWidget({this.chatmodel, this.statusModel});

  @override
  _StatusListWidgetState createState() => _StatusListWidgetState();
}

class _StatusListWidgetState extends State<StatusListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
     leading: CachedNetworkImage(
        imageUrl:
        widget.chatmodel.avatarUrl,
        imageBuilder: (context, imageProvider) => Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
            DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      title: Text(
        widget.chatmodel.name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(widget.chatmodel.time + " " + widget.chatmodel.timeZone),
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => StoryPageView(statusModel: widget.statusModel,))),
    );
  }
}
