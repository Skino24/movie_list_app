import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/movie_card.dart';
import '../../providers/main_page_provider.dart';

class AllMovies extends StatelessWidget {
  const AllMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: context.watch<MainPageProvider>().moviesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 4.0,
          ),
          child: MovieCard(
            movie: context.watch<MainPageProvider>().moviesList[index],
          ),
        );
      },
    );
  }
}
