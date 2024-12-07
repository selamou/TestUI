import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screen/modules/checkout/checkout.dart';
import 'package:flutter_screen/shared/components/components.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import '../../shared/styles/sizeconvig.dart';
import '../../shared/styles/styles.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int _counter = 0;
  int current = 0;
  bool fav = false;
  List<String> sizes = [
    "S ",
    "M",
    "L",
    "XL",
  ];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfff0f3f1),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            tooltip: 'Open menu',
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        title: Text(
          'Product Details',
          style: TextStyle(
              color: kBlack, fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: kPaddingHorizontal,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff0f3f1),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              height: SizeConfig.blockSizeVertical! * 37,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                child: Image.asset(
                  'assets/1.png',
                  // height: SizeConfig.blockSizeVertical! * 50,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 18,
                      initialRating: 3.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.all(2),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color(0xff648286),
                      ),
                      onRatingUpdate: (rating) {
                        debugPrint(rating.toString());
                      },
                      unratedColor: kLightGrey,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '(4.5) ',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff648286),
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    shape: BoxShape.rectangle,
                    color: kWhite,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: _decrementCounter,
                        child: Container(
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.remove,
                            color: kGrey,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 1,
                      ),
                      Text(
                        _counter.toString(),
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal! * 5,
                          color: kDarkBrown,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 1,
                      ),
                      GestureDetector(
                        onTap: _incrementCounter,
                        child: Container(
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.add,
                            color: kDarkGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Denis Lingo',
                    maxLines: 1,
                    style: TextStyle(
                        color: kBlack,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '\$ 250',
                    maxLines: 2,
                    style: TextStyle(
                        color: kBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 0.2,
              color: Colors.grey[400],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Descriptions',
                    style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ReadMoreText(
              'Quick-win. Please use "solutionise" instead of solution ideas! :) pulling teeth, or feature creep, nor we don\'t want to boil the ocean, or effort made was a lot come up with something buzzworthy take five, punch the tree, and come back in here with a clear head. Agile make it look like digital diversify kpis this is meaningless. We should leverage existing asserts that ladder up to the message teams were able to drive adoption and awareness, but run it up the flagpole, ping the boss and circle back, or commitment to the cause .',
              trimLines: 3,
              trimMode: TrimMode.Line,
              delimiter: ' ',
              trimCollapsedText: 'Read More',
              trimExpandedText: 'Show Less',
              style: TextStyle(
                fontSize: 10,
                color: kBlack,
              ),
              moreStyle: TextStyle(
                fontSize: 12,
                color: Color(0xff648286),
              ),
              lessStyle: TextStyle(
                fontSize: 12,
                color: Color(0xff648286),
              ),
            ),
            Divider(
              thickness: 0.2,
              color: Colors.grey[400],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select size',
                  style: TextStyle(
                      color: kBlack, fontSize: 17, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height,
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: sizes.length,
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
                            left: index == 0 ? 0 : 15,
                            right: index == sizes.length - 1
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
                                sizes[index],
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
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                fav = !fav;
              });
            },
            child: Container(
              margin: EdgeInsets.only(
                left: 0,
                right: 0,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 36,
              // width: 59,
              decoration: BoxDecoration(
                color: fav == true ? Color(0xff648286) : Color(0xfff0f3f1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/home/fav.png",
                    height: 25,
                    width: 25,
                    color: fav == true ? Colors.white : Color(0xff648286),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: buttonIconImg(
                  icon: Image.asset("assets/shop.png",
                      height: 30, width: 30, color: Colors.white),
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutPage()));
                  },
                  title: "Add to cart",
                  height: 46,
                  width: 256))
        ],
      ),
    );
  }
}
