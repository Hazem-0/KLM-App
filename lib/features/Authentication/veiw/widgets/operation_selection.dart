import 'package:flutter/material.dart';
import 'package:klm_project/core/constants/klm_colors.dart';

class OperationSelection extends StatelessWidget {
  const OperationSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 347,
      height: 64,
      decoration: BoxDecoration(
        color: KLMColors.teal.withOpacity(0.54),
        borderRadius: BorderRadius.circular(21.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 170,
            height: 50,
            decoration: BoxDecoration(
              color: KLMColors.darkTeal,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "الولوج",
                style: TextStyle(
                    color: KLMColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 146,
            height: 43,
            decoration: BoxDecoration(
              color: KLMColors.teal,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Text(
                "الانضمام",
                style: TextStyle(
                    color: KLMColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
