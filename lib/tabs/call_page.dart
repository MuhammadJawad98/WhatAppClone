import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';
class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: callItemData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: CachedNetworkImage(
              imageUrl:
             callItemData[i].avatarUrl,
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
              callItemData[i].name,
              style:  TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle:  Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.call_received, color: callItemData[i].colorItem,),
                    SizedBox(width: 10.0,),
                    Text(
                      callItemData[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                  ],
                )
            ),
            trailing: Icon(Icons.call, color: Theme.of(context).primaryColor,),
          )
        ],
      ),
    );
  }
}