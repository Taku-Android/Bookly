import 'package:bookly/core/utils/Styles.dart';
import 'package:bookly/feature/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/feature/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return

        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [

                  Padding(
                    padding: const EdgeInsets.only(left: 30.0 , top: 10 , bottom: 15),
                    child: GestureDetector(
                        onTap: (){
                          GoRouter.of(context).pop();
                        },
                        child: const Icon(Icons.close , size: 32,)),
                  ) ,

                   const CustomSearchTextField(),

                   Padding(
                     padding: const EdgeInsets.only(left: 30.0 , bottom: 15),
                     child: Text('Results', style: Styles.textStyle30.copyWith(
                       fontWeight: FontWeight.w700
                     ),),
                   ),
                ],
              ),
            ),

             const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchListView(),
              ),
            )
          ],
        );



  }
}





