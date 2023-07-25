import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/search/data/repo/search_repo_impl.dart';
import 'package:bookly/feature/search/presentation/manager/cubit/search_cubit.dart';
import 'package:bookly/feature/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()) ,
      ),
    );
  }
}




