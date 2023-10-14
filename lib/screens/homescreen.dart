import 'package:flutter/material.dart';
import 'package:menu/Models/homemodel.dart';
import 'package:menu/screens/detailscreen.dart';

import '../Utilities/colors.dart';
import '../Utilities/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchcontroller = TextEditingController();
  String search = '';
  @override
  Widget build(BuildContext context) {
    Size sc = Utils().getScreenSize();
    return Scaffold(
      backgroundColor: backgroundclr,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: sc.width * 0.05,
                          ),
                          const Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 21),
                          ),
                          Stack(
                            children: [
                              const Icon(Icons.notifications_outlined),
                              Positioned(
                                right: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    height: sc.height * .017,
                                    width: sc.width * .017,
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sc.height * 0.02,
                      ),
                      SizedBox(
                        height: sc.height * 0.07,
                        child: TextFormField(
                          controller: searchcontroller,
                          onChanged: ((String value) {
                            setState(() {
                              search = value.toString();
                            });
                          }),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: lgreyclr,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: greyclr, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: greyclr, width: 1),
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: greyclr,
                              ),
                              hintStyle: const TextStyle(
                                  color: greyclr, fontSize: 13.5),
                              hintText: "Search on kupa"),
                        ),
                      ),
                      SizedBox(
                        height: sc.height * 0.03,
                      ),
                      Container(
                        height: sc.height * 0.12,
                        width: sc.width,
                        decoration: BoxDecoration(
                            color: greenclr,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Deliver to Home",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xffD8F4E6),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 20,
                                    color: Color(0xffD8F4E6),
                                  )
                                ],
                              ),
                              const Text(
                                "Utama Street no.4,Rumbai",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xffD8F4E6),
                                ),
                              ),
                              SizedBox(
                                height: sc.height * 0.012,
                              ),
                              Container(
                                height: sc.height * 0.033,
                                width: sc.width * 0.17,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xffEBF2F0),
                                ),
                                child: const Center(
                                  child: Text(
                                    "2.4 Km",
                                    style: TextStyle(
                                        color: greenclr, fontSize: 11),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: sc.height * 0.01,
                        width: sc.width * 0.835,
                        decoration: const BoxDecoration(
                          color: Color(0xffBBD3C9),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sc.height * 0.03,
                      ),
                      Container(
                        height: sc.height * 0.2,
                        width: sc.width,
                        decoration: BoxDecoration(
                            color: const Color(0xffEBF2F0),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Chicken Teriyaki",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: sc.height * 0.005,
                                  ),
                                  const Text(
                                    "Discount 25%",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: sc.height * 0.0145,
                                  ),
                                  Container(
                                    height: sc.height * 0.055,
                                    width: sc.width * 0.33,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: greenclr),
                                    child: const Center(
                                      child: Text(
                                        "Order Now",
                                        style: TextStyle(
                                            color: Color(0xffCEDDD7),
                                            fontSize: 14.5,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: sc.height * 0.18,
                              width: sc.width * 0.35,
                              decoration: BoxDecoration(
                                color: const Color(0xffEBF2F0),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.network(
                                  "https://www.peiwei.com/wp-content/uploads/0014_Kids-Teriyaki-Chicken.png"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: sc.height * 0.03,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Top of Week",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sc.height * 0.02,
                ),
                SizedBox(
                  height: sc.height * 0.27,
                  child: ListView.builder(
                    itemCount: Prod.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      String position = Prod[index].name.toString();
                      if (searchcontroller.text.isEmpty) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(details: Prod[index]),
                                  ));
                            }),
                            child: SizedBox(
                              width: sc.width * 0.3,
                              height: sc.height * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: sc.height * 0.19,
                                    width: sc.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              NetworkImage(Prod[index].image)),
                                      color: greenclr,
                                    ),
                                  ),
                                  SizedBox(
                                    height: sc.height * 0.01,
                                  ),
                                  Text(
                                    Prod[index].name,
                                    maxLines: 1,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.5),
                                  ),
                                  SizedBox(
                                    height: sc.height * 0.003,
                                  ),
                                  Text(
                                    Prod[index].price,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: greenclr),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else if (position
                          .toLowerCase()
                          .contains(searchcontroller.text.toLowerCase())) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailScreen(details: Prod[index]),
                                  ));
                            }),
                            child: SizedBox(
                              width: sc.width * 0.3,
                              height: sc.height * 0.3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: sc.height * 0.19,
                                    width: sc.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              NetworkImage(Prod[index].image)),
                                      color: greenclr,
                                    ),
                                  ),
                                  SizedBox(
                                    height: sc.height * 0.01,
                                  ),
                                  Text(
                                    Prod[index].name,
                                    maxLines: 1,
                                    style: const TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.5),
                                  ),
                                  SizedBox(
                                    height: sc.height * 0.003,
                                  ),
                                  Text(
                                    Prod[index].price,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: greenclr),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
