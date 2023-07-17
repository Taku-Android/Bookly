import 'package:bookly/core/utils/Styles.dart';
import 'package:bookly/core/utils/app_routes.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_small_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRoutes.kBookDetail);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
                width: 90,
                child: CustomSmallImage()),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'The Jungle Book',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.bookTitle,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle16,

                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        '19.99 \$',
                        style:
                        Styles.textStyle20,
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            '4.8',
                            style: Styles.textStyle20,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            '(2390)',
                            style: Styles.textStyle16,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}