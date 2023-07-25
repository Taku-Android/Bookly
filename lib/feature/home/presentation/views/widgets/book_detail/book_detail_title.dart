import 'package:bookly/core/utils/Styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/model/Items.dart';

class BookDetailTitle extends StatelessWidget {
  const BookDetailTitle({super.key, required this.book});

  final Items book ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Text(
          book.volumeInfo!.title!,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle26,
        ),
        const SizedBox(height: 4),
         Text(
          book.volumeInfo!.authors![0],
          style: Styles.textStyle16,
        ),
        const SizedBox(height: 8),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children:  const [
        //     Icon(
        //       Icons.star,
        //       color: Colors.yellow,
        //       size: 20,
        //     ),
        //     SizedBox(width: 6,),
        //     Text(
        //       '4.8',
        //       style: Styles.textStyle16White
        //     ),
        //     SizedBox(
        //       width: 9,
        //     ),
        //     Text(
        //       '(2390)',
        //       style: Styles.textStyle16,
        //     ),
        //   ],
        // )
        Text(
          ' ${book.volumeInfo!.publishedDate!}',
          style: Styles.textStyle16White,
        )
      ],
    );
  }
}