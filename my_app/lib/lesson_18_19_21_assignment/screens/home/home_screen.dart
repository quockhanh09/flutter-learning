import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/home/widgets/header_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/home/widgets/movie_type_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/home/widgets/upcoming_section.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class MovieItem extends StatelessWidget {
  final String posterImgPath;
  final String title;
  final String genre;
  final double score;

  const MovieItem({
    required this.posterImgPath,
    required this.title,
    required this.genre,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(10), // Bo tròn các góc với bán kính 20
          child: Image.network(
            posterImgPath,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          genre,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
        ),
        Text(
          'Rating: $score',
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  final listUpcommingMoviesPoster = [
    "https://i.ebayimg.com/images/g/4v4AAOSwa39fz003/s-l1200.jpg",
    "https://rukminim2.flixcart.com/image/850/1000/k5wse4w0/poster/u/b/a/medium-artistic-movie-poster-thor-marvel-movie-poster-for-room-original-imafzgvb2xt8ptzx.jpeg?q=90&crop=false",
    "https://townsquare.media/site/442/files/2017/10/thor_ragnarok_ver2_xlg1.jpg?w=780&q=75",
    "https://static.wixstatic.com/media/c0ca52_861cbfbd84344362a233f609406354cd~mv2.jpg/v1/fill/w_540,h_675,al_c,q_85,enc_auto/c0ca52_861cbfbd84344362a233f609406354cd~mv2.jpg"
  ];

  final List<Map<String, dynamic>> movieList = [
    {
      "posterImgPath":
          "https://m.media-amazon.com/images/M/MV5BMmU5NGJlMzAtMGNmOC00YjJjLTgyMzUtNjAyYmE4Njg5YWMyXkEyXkFqcGc@._V1_.jpg",
      "title": "The Batman",
      "genre": "Action",
      "score": 8.2
    },
    {
      "posterImgPath":
          "https://s3-alpha-sig.figma.com/img/d9e1/32f3/8981b339b12e3d0a4502d529f528e695?Expires=1728259200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AP~JbXiqMzZ8Q~nnbpKAeeYj7OQsBeonFLM9d9t6bSssebY86B0SDQcnFa-sNlRSFgTy-PwsVEld9cwzMkulXERsdRgR2sR4yfyeUs7WrFN4kHf0rpoU4tysUQMdPNoqJsIvrpmwnjzABGCMCztpuhkGgiiXE8DDeZuDWH-Be9liMOkvUU0AudMJJktCpC6~9SFFftq8OYcUq8c~uk3Rj5Nm-EcKn9PSbM41m1IXnm2WtKj-nlDDoVeXWpnRhNe4pMsClodkZMMvkVnPGP-PeUI9o6GYb8v96pZXeZ3QNKBIa9SyjpbtzL4UCt9eA9kxmwmm~l~5h8YmIQCORFgNIw__",
      "title": "Uncharted",
      "genre": "Action",
      "score": 8.5
    },
    {
      "posterImgPath":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz2TZOR3sLpq1gPNb14LkmbBIVUTRdwxiZLw&s",
      "title": "The Exorcism of God",
      "genre": "Action",
      "score": 9.0
    },
    {
      "posterImgPath":
          "https://m.media-amazon.com/images/M/MV5BMmQxZDQyYjQtMmY5NC00OGM1LTg1NGEtZWViYjJiYzI5MzBhXkEyXkFqcGc@._V1_.jpg",
      "title": "Turning Red",
      "genre": "Action",
      "score": 7.8
    },
    {
      "posterImgPath":
          "https://m.media-amazon.com/images/M/MV5BMmFiZGZjMmEtMTA0Ni00MzA2LTljMTYtZGI2MGJmZWYzZTQ2XkEyXkFqcGc@._V1_.jpg",
      "title": "Spider-Man: No Way Home",
      "genre": "Action",
      "score": 8.7
    },
    {
      "posterImgPath":
          "https://m.media-amazon.com/images/M/MV5BMDA4Y2UyMDctZTJhMy00NWFiLTgwNjItOWZlNTYwYTY1NzEyXkEyXkFqcGc@._V1_.jpg",
      "title": "Morbius",
      "genre": "Action",
      "score": 8.7
    },
  ];

  // Khai báo và khởi tạo biến currentIndex
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderSection(), // Custom header section
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Upcoming movies section
                  UpcomingSection(
                    listUpcommingMoviesPoster: listUpcommingMoviesPoster,
                    setStateFunc: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  // Animated dots indicator for PageView
                  AnimatedSmoothIndicator(
                    activeIndex:
                        currentIndex, // Sử dụng biến currentIndex đã được khai báo
                    count: listUpcommingMoviesPoster.length,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Color(0xffFF8036),
                      expansionFactor: 2.5,
                      spacing: 6,
                      dotHeight: 8,
                      dotColor: Color(0xff637394),
                      dotWidth: 8,
                    ),
                  ),
                  // Now in cinemas section with search icon
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: MovieTypeSection(
                      title: "Now in cinemas",
                      suffix: const Icon(
                        Icons.search,
                        color: Color(0xff637394),
                        size: 28,
                      ),
                      // Grid view displaying the movie list
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 163 / 278,
                        ),
                        itemCount: movieList.length,
                        itemBuilder: (context, index) {
                          final movie = movieList[index];
                          return MovieItem(
                            posterImgPath: movie['posterImgPath'],
                            title: movie['title'],
                            genre: movie['genre'],
                            score: movie['score'],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
