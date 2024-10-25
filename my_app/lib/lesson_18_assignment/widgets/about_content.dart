import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutContent extends StatefulWidget {
  const AboutContent({super.key});

  @override
  State<AboutContent> createState() => _AboutContentState();
}

class _AboutContentState extends State<AboutContent> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    const videoUrl =
        'https://youtu.be/Cwcinb2OxUo?si=cohElZ-7IGY5G9G0'; // Thay đổi URL video
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!, // Lấy ID video
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1A2232),
      child: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),

          // const SizedBox(height: 20),

          Container(
            color: const Color(0xFF1F293D),
            child: SizedBox(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          '8.3',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Text(
                          'IMDB',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          '7.9',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Text(
                          'Kinopoisk',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 107, 107, 107),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0), 
            child: const Text(
              'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city hidden corruption and question his family involvement.',
              textAlign: TextAlign.left, 
              style: TextStyle(
                fontSize: 16,
                color: Colors.white, 
              ),
            ),
          ),
          

          const SizedBox(height: 20), 

      
          ElevatedButton(
            onPressed: () {
              
              print('Select session');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, 
              foregroundColor: Colors.white,  
              minimumSize: const Size(350, 50),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30), 
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text('Select session'),
          ),
        ],
      ),
    );
  }
}
