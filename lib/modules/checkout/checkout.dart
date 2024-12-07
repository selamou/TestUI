import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screen/shared/components/components.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/components/cartcard/carditem.dart';
import '../../shared/styles/sizeconvig.dart';
import '../../shared/styles/styles.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            onPressed: () {
              // Navigator.pop(context);
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
          'My Cart',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w900),
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 2.5),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: kPaddingHorizontal,
            vertical: 0,
          ),
          child: Column(
            children: [
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Dismissible(
                      background: Container(
                        padding: EdgeInsets.only(right: 20),
                        color: Colors.red,
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.delete),
                      ),
                      key: Key(index.toString()),
                      child: Carditem());
                },
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff0f3f1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            color: kDarkGrey,
                            fontSize: 10,
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
                              child: Icon(Icons.percent_outlined),
                            ),
                            hintText: 'Enter Promocode',
                            border: InputBorder.none,
                            errorBorder: kInputBorder,
                            disabledBorder: kInputBorder,
                            focusedBorder: kInputBorder,
                            focusedErrorBorder: kInputBorder,
                            enabledBorder: kInputBorder,
                            hintStyle: TextStyle(
                              color: kDarkGrey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                          height: 49,
                          width: 90,
                          child: defaultButtn(function: () {}, title: "Apply"))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(5),
        height: 300.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item Total',
                    style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '\$730',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discount',
                    style: TextStyle(
                        fontSize: 15.0, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '\$20',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Free',
                    style: TextStyle(
                        color: Color(0xff648286),
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Free',
                    style: TextStyle(
                      color: Color(0xff648286),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 0.2,
                color: Colors.grey[400],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$680',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              defaultButtn(function: () {}, title: "Check out")
            ],
          ),
        ),
      ),
    );
  }
}
