import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.keyboard_arrow_down),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        color: Colors.white,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calming  Playlist',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            SizedBox(height: 20),
            Image.asset(
              'assets/images/illustration.png',
              fit: BoxFit.cover,
              height: screenHeight * 0.38,
              width: double.infinity,
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Rain On Glass',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            Center(
              child: Text(
                'By: Painting with Passion',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
            Spacer(),
            ProgressBar(
              progress: Duration(milliseconds: 1000),
              total: Duration(microseconds: 5000),
              onSeek: (value) {
                //todo
              },
              baseBarColor: DefaultColors.lightpink,
              progressBarColor: DefaultColors.pink,
              thumbColor: DefaultColors.pink,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shuffle, color: DefaultColors.pink),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_previous, color: DefaultColors.pink),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.pause_circle,
                    color: DefaultColors.pink,
                    size: 75,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.skip_next, color: DefaultColors.pink),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.repeat, color: DefaultColors.pink),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
