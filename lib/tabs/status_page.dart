import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: ListTile(
              leading: Stack(
                children: <Widget>[
                  // CircleAvatar(
                  //   radius: 30,
                  //   backgroundColor: Colors.white,
                  //   backgroundImage: NetworkImage(
                  //       "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
                  // ),

                  CachedNetworkImage(
                    imageUrl: 'https://s3.amazonaws.com/wll-community-production/images/no-avatar.png',
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
                  Positioned(
                    bottom: 0.0,
                    right: 1.0,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.white,
                child: ListView.builder(
                    itemCount: dummyData.length,
                    itemBuilder: (context, i) => new StatusListWidget(
                          chatmodel: dummyData[i],
                          statusModel: dummyStatusData[i],
                        ))),
          ),
        ],
      ),
    );
  }
}
