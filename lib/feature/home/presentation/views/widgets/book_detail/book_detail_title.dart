import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

class BookDetailTitle extends StatelessWidget {
  const BookDetailTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'The Jungle Book',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 4),
        const Text(
          'Rudyard Kipling',
          style: Styles.textStyle16,
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Icon(
              Icons.star,
              color: Colors.yellow,
              size: 20,
            ),
            const SizedBox(width: 6,),
            Text(
              '4.8',
              style: Styles.textStyle16.copyWith(
                  color: Colors.white
              ),
            ),
            const SizedBox(
              width: 9,
            ),
            const Text(
              '(2390)',
              style: Styles.textStyle16,
            ),
          ],
        )
      ],
    );
  }
}