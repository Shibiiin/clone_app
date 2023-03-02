import 'package:clone_app/Pages/explore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class Raangi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RaangiState();
}

class RaangiState extends State<Raangi> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/videos/raangi.mp4');
    _controller.addListener(() {
      setState(() {});
    });

    _controller.setLooping(false);
    _controller.initialize().then((_) => setState(() {}));
    _controller.pause();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 30, top: 10,),
      height: 250,
      width: 150,
      child: Stack(
        children: <Widget>[
          VideoPlayer(_controller),
          _RaangiControlOverPlay(controller: _controller),
        ],
      ),
    );
  }
}

/// Play Button and mute button Design
class _RaangiControlOverPlay extends StatefulWidget {
  const _RaangiControlOverPlay({Key? key, required this.controller})
      : super(key: key);

  final VideoPlayerController controller;

  @override
  _RaangiControlOverPlayState createState() => _RaangiControlOverPlayState();
}

class _RaangiControlOverPlayState extends State<_RaangiControlOverPlay> {
  bool _muted = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 30),
          child: widget.controller.value.isPlaying
              ? const SizedBox()
              : Container(
            padding: EdgeInsets.only(top: 25),     /// Play Button
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.moviecrow.com/marquee/raangi-fdfs-plot-censor-runtime-ott-satellite--more/210233_thumb_665.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child:  Center(
                    child: Icon(
                      widget.controller.value.isPlaying ?
                      Icons.pause:Icons.play_arrow,
                      color: Colors.white,
                      size: 70,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            widget.controller.value.isPlaying
                ? widget.controller.pause()
                : widget.controller.play();
          },
        ),
        Positioned(
          bottom: 20,
          right: 10,
          child: Container(
            child: IconButton(
              icon: Icon(
                _muted ? Icons.volume_off : Icons.volume_up,
                color: _muted ? Colors.white : Colors.white,
                size: 25,
              ),
              onPressed: () {
                setState(() {
                  _muted = !_muted;
                  widget.controller.setVolume(_muted ? 0 : 1);
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}



/// Berlin Movie

class Berlin extends StatefulWidget {
  const Berlin({Key? key}) : super(key: key);

  @override
  State<Berlin> createState() => _BerlinState();
}

class _BerlinState extends State<Berlin> {
  late VideoPlayerController _videoPlayerController1;

  @override
  void initState() {
    super.initState();

    _videoPlayerController1 =
        VideoPlayerController.asset('assets/videos/BERLIN.mp4');
    _videoPlayerController1.initialize().then((_) {
      setState(() {});
    });
    _videoPlayerController1.addListener(() {
      // _videoPlayerController1.setLooping(false);
      setState(() {});
    });

    _videoPlayerController1.pause();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 30, top: 10,),
      height: 250,
      width: 150,
      child: Stack(
        children: [
          VideoPlayer(_videoPlayerController1),
          _BerlinControls(controller: _videoPlayerController1),
        ],
      ),
    );
  }
}

class _BerlinControls extends StatefulWidget {
  const _BerlinControls({Key? key, required this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  State<_BerlinControls> createState() => _BerlinControlsState();
}

class _BerlinControlsState extends State<_BerlinControls> {
  bool _muted = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 30),
          child: widget.controller.value.isPlaying
              ? const SizedBox()
              : Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://dnm.nflximg.net/api/v6/BvVbc2Wxr2w6QuoANoSpJKEIWjQ/AAAAQXvbtPsRo3E9fJAlst_H17cWaXBSceqwil5-IVcXfh6K3i0OQlHQiO3efUg2Ak8fmEHCOigaD0rAOVK_-4huN3ht3R9ZhWaThijdkgLhR1lhvSB9c0UBYHckI53k-UpXY5q8LB5-dG1VfxYcZXl1FcDzBgU.jpg?r=354'),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Icon(
                widget.controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
                color: Colors.white,
                size: 70,
                semanticLabel: "Play & Pause",
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            widget.controller.value.isPlaying
                ? widget.controller.pause()
                : widget.controller.play();
          },
        ),
        Positioned(
            bottom: 20,
            right: 10,
            child: Container(
              child: IconButton(
                icon: Icon(
                  _muted ? Icons.volume_off : Icons.volume_up,
                  color: _muted ? Colors.white : Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    _muted = !_muted;
                  });
                },
              ),
            ))
      ],
    );
  }
}



/// Mission Majnu


class Mission extends StatefulWidget {
  const Mission({Key? key}) : super(key: key);

  @override
  State<Mission> createState() => _MissionState();
}

class _MissionState extends State<Mission> {
  late VideoPlayerController _videoPlayerController1;

  @override
  void initState() {
    super.initState();

    _videoPlayerController1 =
        VideoPlayerController.asset('assets/videos/Mission Majnu.mp4');
    _videoPlayerController1.initialize().then((_) {
      setState(() {});
    });
    _videoPlayerController1.addListener(() {
      // _videoPlayerController1.setLooping(false);
      setState(() {});
    });

    _videoPlayerController1.pause();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 30, top: 10,),
      height: 250,
      width: 150,
      child: Stack(
        children: [
          VideoPlayer(_videoPlayerController1),
          _MissionControls(controller: _videoPlayerController1),
        ],
      ),
    );
  }
}

class _MissionControls extends StatefulWidget {
  const _MissionControls({Key? key, required this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  _MissionControlsState createState() => _MissionControlsState();
}

class _MissionControlsState extends State<_MissionControls> {
  bool _muted = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 30),
          child: widget.controller.value.isPlaying
              ? const SizedBox()
              : Container(
            padding: EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://assets.mspimages.in/wp-content/uploads/2022/12/Mission-Manju.jpg'),
                fit: BoxFit.contain,
              ),
            ),
            child: Center(
              child: Icon(
                widget.controller.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
                color: Colors.white,
                size: 40,
                semanticLabel: "Play & Pause",
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            widget.controller.value.isPlaying
                ? widget.controller.pause()
                : widget.controller.play();
          },
        ),
        Positioned(
            bottom: 20,
            right: 10,
            child: Container(
              child: IconButton(
                icon: Icon(
                  _muted ? Icons.volume_off : Icons.volume_up,
                  color: _muted ? Colors.white : Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  setState(() {
                    _muted = !_muted;
                  });
                },
              ),
            ))
      ],
    );
  }
}