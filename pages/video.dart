import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoDemo extends StatefulWidget {
  VideoDemo() : super();

  final String title = "Video Demo";

  @override
  _VideoDemoState createState() => _VideoDemoState();
}

class _VideoDemoState extends State<VideoDemo> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() { 
        "https://r5---sn-npoe7nsl.googlevideo.com/videoplayback?expire=1619574076&ei=22iIYNn1OZiCp-oP96SI2AY&ip=190.96.112.154&id=o-AGSEBBSfu2BdGzMQgWkK0c2VRSB3UoNEmVVSd-re-D_2&itag=137&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C278&source=youtube&requiressl=yes&vprv=1&mime=video%2Fmp4&ns=tFk0JUql1lAe03OZFlBNjgoF&gir=yes&clen=361026218&dur=642.933&lmt=1581069876867943&fvip=5&keepalive=yes&fexp=24001373,24007246&c=WEB&txp=5306222&n=1gGaSXB7NcS556GX&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIgJs5SBhzmC4DCUbM2-SDfl3LCBFMC8muJnkfI7z0JUVsCIQCIvoir6t3KsgFTCkhWmDGy6uVaaxJYEgFERhx5yHweDA%3D%3D&rm=sn-x2x5g-jvge7e,sn-j5c5nx-x1xd76&req_id=cfddf1fd1572a3ee&redirect_counter=3&cm2rm=sn-x1xlk76&cms_redirect=yes&mh=YN&mip=223.235.139.50&mm=34&mn=sn-npoe7nsl&ms=ltu&mt=1619552192&mv=m&mvi=5&pl=20&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgIvE4BBIwFRheqGolCYo5lIds1XhSpED30nucfTWsN9wCIFASvzWZT6NkD1ccbHc9AA0-teFE1_kxa_VlCRuf-Emq");
    //_controller = VideoPlayerController.asset('lib/videos/bully2.mp4');
        _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Demo"),
      ),
      body: FutureBuilder(
        future:  _initializeVideoPlayerFuture,
        builder: (content, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
              } else {
                _controller.play();
              }
          });
        },
        child:
        Icon(_controller.value.isPlaying ? Icons.pause: Icons.play_arrow),
      ),
    );
  }
}
