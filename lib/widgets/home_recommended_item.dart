import 'package:flutter/material.dart';

import 'package:salon/home_subpages/recommended_viewall.dart';
import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/home_items_list.dart';

class RecommenedSection extends StatelessWidget {
  const RecommenedSection({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: const EdgeInsets.all(16),
    //   color: const Color.fromARGB(255, 217, 217, 217),
    //   // margin: const EdgeInsets.symmetric(horizontal: 14),
    //   child: Column(
    //     children: [
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           const Text(
    //             'Recommended',
    //             style: TextStyle(
    //                 color: AppColors.appbackgroundColor,
    //                 fontSize: 18,
    //                 fontWeight: FontWeight.bold),
    //           ),
    //           GestureDetector(
    //             onTap: () {
    //               Navigator.of(context).pushReplacement(
    //                 MaterialPageRoute(
    //                     builder: (context) => const RecommendedViewAllPage()),
    //               );
    //             },
    //             child: const Text(
    //               'View all',
    //               style: TextStyle(
    //                   color: AppColors.appbackgroundColor,
    //                   fontSize: 16,
    //                   fontWeight: FontWeight.w400),
    //             ),
    //           ),
    //         ],
    //       ),
    //       const SizedBox(
    //         height: 10,
    //       ),
    //       SizedBox(
    //         height: 94,
    //         child: ListView.builder(
    //             itemCount: salonListItem.length,
    //             shrinkWrap: true,
    //             scrollDirection: Axis.horizontal,
    //             itemBuilder: (context, index) {
    //               return Row(
    //                 children: [
    //                   Column(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 8),
    //                         child: Container(
    //                           height: 70,
    //                           width: 120,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(10),
    //                             color: Colors.grey,
    //                           ),
    //                           child: ClipRect(
    //                             // borderRadius: const BorderRadius.vertical(bottom: Radius.elliptical(340, 180)),
    //
    //                             child: Container(
    //                               width: double.infinity,
    //                               decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 image: DecorationImage(
    //                                     image: ExactAssetImage(
    //                                         salonListItem[index].imageUrl),
    //                                     fit: BoxFit.cover),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         height: 4,
    //                       ),
    //                       Text(
    //                         salonListItem[index].title,
    //                         style: const TextStyle(
    //                             color: AppColors.appbackgroundColor,
    //                             fontSize: 14,
    //                             fontWeight: FontWeight.w500),
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               );
    //             }),
    //       ),
    //     ],
    //   ),
    // );
    return Container();
  }



}
