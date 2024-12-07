import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screen/modules/detailpage/detailspage.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../shared/styles/sizeconvig.dart';
import '../../shared/styles/styles.dart';
import 'package:flutter_svg/svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> categories = [
    "All ",
    "MEN",
    "WOMEN",
    "KIDS WEAR",
  ];

  List<String> brands = [
    "Zara",
    "Gucci",
    "D&G",
    "Nike",
  ];
  List<String> brandsImg = [
    "https://static.cdnlogo.com/logos/z/3/zara.png",
    "https://w7.pngwing.com/pngs/348/803/png-transparent-gucci-logo-fashion-brand-gucci-logo-miscellaneous-text-trademark-thumbnail.png",
    "https://www.vhv.rs/dpng/d/34-341361_transparent-dg-logo-hd-png-download.png",
    "https://w7.pngwing.com/pngs/654/821/png-transparent-swoosh-nike-just-do-it-logo-nike-angle-adidas-symbol-thumbnail.png",
  ];
  List<String> icons = [
    'all_items_icon',
    'dress_icon',
    'hat_icon',
    'watch_icon',
  ];
  List<String> images = [
    '1.png',
    '2.png',
    '3.png',
    '1.png',
    '2.png',
    '3.png',
    '1.png',
    '2.png',
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Hey 👋',
                      style: TextStyle(
                        color: kDarkBrown,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Lets find your \nEclusive outfit ',
                      style: TextStyle(
                          color: kDarkBrown,
                          fontSize: 24,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: kGrey,
                  backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/women/90.jpg'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      color: kDarkGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      prefixIcon: const IconTheme(
                        data: IconThemeData(
                          color: kDarkGrey,
                        ),
                        child: Icon(Icons.search),
                      ),
                      hintText: 'Search',
                      border: kInputBorder,
                      errorBorder: kInputBorder,
                      disabledBorder: kInputBorder,
                      focusedBorder: kInputBorder,
                      focusedErrorBorder: kInputBorder,
                      enabledBorder: kInputBorder,
                      hintStyle: TextStyle(
                        color: kDarkGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 49,
                  width: 49,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    color: Color(0xff648286),
                  ),
                  child: SvgPicture.asset(
                    'assets/filter_icon.svg',
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: const Text(
              'Top categories ',
              style: TextStyle(
                  color: kDarkBrown, fontSize: 17, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            height: 36,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? kPaddingHorizontal : 15,
                      right: index == categories.length - 1
                          ? kPaddingHorizontal
                          : 0,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    height: 36,
                    // width: 59,
                    decoration: BoxDecoration(
                      color: current == index
                          ? Color(0xff648286)
                          : Color(0xfff0f3f1),
                      borderRadius: BorderRadius.circular(20),
                      border: current == index
                          ? null
                          : Border.all(
                              color: kLightGrey,
                              width: 1,
                            ),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          categories[index],
                          style: TextStyle(
                            color: current == index ? kWhite : kDarkBrown,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            child: const Text(
              'Top Brands ',
              style: TextStyle(
                  color: kDarkBrown, fontSize: 17, fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 0,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: kGrey,
                              backgroundImage: NetworkImage(brandsImg[index]),
                            ),
                            Text(
                              brands[index],
                              style: TextStyle(
                                  color: kDarkBrown,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Popular Products ',
                    style: TextStyle(
                        color: kDarkBrown,
                        fontSize: 17,
                        fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: Color(0xff648286)),
                      child: Text("View All"))
                ],
              )),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: (200 / 300),
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(images.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetailPage()));
                },
                child: Container(
                  // decoration: BoxDecoration(color: Colors.black),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height: 150,
                                  width: 400,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/${images[index]}',
                                          ),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                              Positioned(
                                right: 12,
                                top: 12,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'assets/home/fav.png',
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Denis Lingo',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: kDarkBrown,
                                fontSize: 17,
                                fontWeight: FontWeight.w900),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Dress modern',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: kBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '\$250',
                                style: TextStyle(
                                    color: kBlack,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ]),
                  ),

                  //       // const SizedBox(
                  //       //   height: 8,
                  //       // ),
                  //       Text(
                  //         'Modern light clothes',
                  //         maxLines: 2,
                  //         overflow: TextOverflow.ellipsis,
                  //         style: TextStyle(
                  //             color: kDarkBrown,
                  //             fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  //             fontWeight: FontWeight.w700),
                  //       ),
                  //       Text(
                  //         'Dress modern',
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //         style: TextStyle(
                  //             color: kGrey,
                  //             fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                  //             fontWeight: FontWeight.w800),
                  //       ),
                  //       // const SizedBox(
                  //       //   height: 8,
                  //       // ),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Text(
                  //             '\$250',
                  //             style: TextStyle(
                  //               color: kDarkBrown,
                  //               fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  //             ),
                  //           ),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                ),
              );
            }),
          ),

          //   MasonryGridView.count(
          //     shrinkWrap: true,
          //     physics: const NeverScrollableScrollPhysics(),
          //     crossAxisCount: 2,
          //     crossAxisSpacing: 20,
          //     mainAxisSpacing: 20,
          //     itemCount: images.length,
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: kPaddingHorizontal,
          //     ),
          //     itemBuilder: (context, index) {
          //       return Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Stack(
          //             children: [
          //               Positioned(
          //                 child: ClipRRect(
          //                   borderRadius: BorderRadius.circular(kBorderRadius),
          //                   child: Image.asset(
          //                     'assets/home/images/${images[index]}',
          //                     fit: BoxFit.cover,
          //                   ),
          //                 ),
          //               ),
          //               Positioned(
          //                 right: 12,
          //                 top: 12,
          //                 child: GestureDetector(
          //                   onTap: () {},
          //                   child: Image.asset(
          //                     'assets/home/fav.png',
          //                     width: 25,
          //                     height: 25,
          //                   ),
          //                 ),
          //               )
          //             ],
          //           ),
          //           const SizedBox(
          //             height: 8,
          //           ),
          //           Text(
          //             'Modern light clothes',
          //             maxLines: 2,
          //             overflow: TextOverflow.ellipsis,
          //             style: TextStyle(
          //                 color: kDarkBrown,
          //                 fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
          //                 fontWeight: FontWeight.w700),
          //           ),
          //           Text(
          //             'Dress modern',
          //             maxLines: 1,
          //             overflow: TextOverflow.ellipsis,
          //             style: TextStyle(
          //                 color: kGrey,
          //                 fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
          //                 fontWeight: FontWeight.w800),
          //           ),
          //           const SizedBox(
          //             height: 8,
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             children: [
          //               Text(
          //                 '\$250',
          //                 style: TextStyle(
          //                   color: kDarkBrown,
          //                   fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
          //                 ),
          //               ),
          //             ],
          //           )
          //         ],
          //       );
          //     },
          //   ),
        ],
      ),
    );
  }
}
