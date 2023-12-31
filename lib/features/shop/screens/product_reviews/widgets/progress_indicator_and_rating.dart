import 'package:cwt_ecommerce_ui_kit/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

class RatingAndProgressIndicator extends StatelessWidget {
  const RatingAndProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1,child: Text("4.7", style: Theme.of(context).textTheme.displayLarge)),
        const SizedBox(width: 40),
        const Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              RatingProgressIndicator(text: '5', value: 1.0),
              RatingProgressIndicator(text: '4', value: 0.8),
              RatingProgressIndicator(text: '3', value: 0.6),
              RatingProgressIndicator(text: '2', value: 0.4),
              RatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}