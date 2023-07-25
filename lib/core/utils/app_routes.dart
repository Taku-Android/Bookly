import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/home/presentation/views/book_detail_view.dart';
import 'package:bookly/feature/home/presentation/views/home_view.dart';
import 'package:bookly/feature/search/presentation/views/search_view.dart';
import 'package:bookly/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/data/repo/home_repo_impl.dart';
import '../../feature/home/presentation/manager/similar_books/similar_books_cubit.dart';
import '../model/Items.dart';

abstract class AppRoutes {

  static const kHomeView = '/homeView' ;
  static const kBookDetail = '/bookDetail' ;
  static const kSearchView = '/searchView' ;
  static const kSplashView = '/' ;


  static final  router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kBookDetail,
      builder: (context, GoRouterState state) {
        return BlocProvider(
            create: (create) =>  SimilarBooksCubit(
              getIt.get<HomeRepoImpl>(),
            ),
            child:  BookDetailView(
              book: state.extra as Items ,
            ),
        );
      },
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, GoRouterState state) {
        return const SearchView();
      },
    ),
  ]);
}
