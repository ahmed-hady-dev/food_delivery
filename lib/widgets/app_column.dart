import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';
import '../utils/dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10),
        Row(
          children: <Widget>[
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 15.0,
                      )),
            ),
            const SizedBox(width: 10.0),
            SmallText(text: "4.5"),
            const SizedBox(width: 10.0),
            SmallText(text: "1287"),
            const SizedBox(width: 10.0),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconAndText(icon: Icons.circle_sharp, text: 'Normal', iconColor: AppColors.iconColor1),
            IconAndText(icon: Icons.location_on, text: '1.7km', iconColor: AppColors.mainColor),
            IconAndText(icon: Icons.access_time_rounded, text: '32min', iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
