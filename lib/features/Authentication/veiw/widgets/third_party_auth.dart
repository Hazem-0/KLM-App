import 'package:flutter/material.dart';
import 'package:klm_project/core/constants/klm_colors.dart';

class ThirdPartyAuth extends StatelessWidget {
  const ThirdPartyAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 347,
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 43,
              height: 37,
              decoration: BoxDecoration(
                color: KLMColors.darkTeal,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child:
                    Icon(Icons.facebook, color: KLMColors.lightTeal, size: 30),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 43,
              height: 37,
              decoration: BoxDecoration(
                color: KLMColors.darkTeal,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child:
                    Icon(Icons.android, color: KLMColors.lightTeal, size: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
