import 'file:///D:/app/whatsappclone/whatsappclone/lib/exportLibraries/custom_widgets.dart';
class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;

  CameraPage(this.cameras);
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController controller;
  @override
  void initState() {
    super.initState();
    controller =
    new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return new Container();
    }
    return new AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: new CameraPreview(controller),
    );
  }
}