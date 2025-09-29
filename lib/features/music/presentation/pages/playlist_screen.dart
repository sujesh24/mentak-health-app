import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme.dart';
import 'package:mental_health_app/features/meditation/presentation/pages/pages.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({super.key});

  final List<Map<String, String>> songs = [
    {
      'title': 'Rain on Glass',
      'artist': 'Rain on Glass',
      'thumbnail': 'assets/images/illustration.png',
    },
    {
      'title': 'Forest on Rain',
      'artist': 'Rain on Glass',
      'thumbnail': 'assets/images/illustration.png',
    },
    {
      'title': 'Waves of Sea',
      'artist': 'Rain on Glass',
      'thumbnail': 'assets/images/illustration.png',
    },
    {
      'title': 'Fire on Heaven',
      'artist': 'Rain on Glass',
      'thumbnail': 'assets/images/illustration.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chill Playlist',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        elevation: 0,
        backgroundColor: DefaultColors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MusicPlayerScreen()),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(songs[index]['thumbnail']!),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                songs[index]['title']!,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              subtitle: Text(
                songs[index]['artist']!,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            );
          },
        ),
      ),
    );
  }
}
