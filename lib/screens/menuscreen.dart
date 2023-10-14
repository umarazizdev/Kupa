import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:menu/Models/cartmodel.dart';
import 'package:menu/Utilities/constant.dart';
import 'package:menu/screens/menudetailscreen.dart';

import '../Utilities/colors.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  TextEditingController serachcontroller = TextEditingController();
  String search = "";
  bool msg = true;

  String activecat = '';
  @override
  Widget build(BuildContext context) {
    Size sc = Utils().getScreenSize();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: sc.width * 0.05,
                          ),
                          const Text(
                            "Menu",
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
                        height: sc.height * 0.025,
                      ),
                      const Text(
                        "Our Food",
                        style: TextStyle(fontSize: 17, color: greyclr),
                      ),
                      SizedBox(
                        height: sc.height * 0.005,
                      ),
                      const Text(
                        "Special For You",
                        style: TextStyle(
                            fontSize: 19,
                            color: greenclr,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: sc.height * 0.025,
                      ),
                      SizedBox(
                        height: sc.height * 0.07,
                        child: TextFormField(
                          controller: serachcontroller,
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
                              hintText: "Search Your Menus"),
                        ),
                      ),
                      // ???????????????????????????3rd end ????????????????????
                    ],
                  ),
                ),

                // ????????????????????????????4rth start????????????????????
                SizedBox(
                  height: sc.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (() {
                        setState(() {
                          activecat = 'All';
                        });
                      }),
                      child: Column(
                        children: [
                          Text(
                            "All",
                            style: TextStyle(
                                color:
                                    activecat == 'All' ? Colors.black : greyclr,
                                fontSize: activecat == 'All' ? 17 : 14,
                                fontWeight: activecat == 'All'
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                          Container(
                            height: sc.height * 0.0035,
                            width: sc.width * 0.07,
                            decoration: BoxDecoration(
                                color: activecat == 'All'
                                    ? greenclr
                                    : backgroundclr,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        setState(() {
                          activecat = 'Featured';
                        });
                      }),
                      child: Column(
                        children: [
                          Text(
                            "Featured",
                            style: TextStyle(
                                color: activecat == 'Featured'
                                    ? Colors.black
                                    : greyclr,
                                fontSize: activecat == 'Featured' ? 17 : 14,
                                fontWeight: activecat == 'Featured'
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                          Container(
                            height: sc.height * 0.0035,
                            width: sc.width * 0.07,
                            decoration: BoxDecoration(
                              color: activecat == 'Featured'
                                  ? greenclr
                                  : backgroundclr,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (() {
                            setState(() {
                              activecat = 'Top of week';
                            });
                          }),
                          child: Text(
                            "Top of week",
                            style: TextStyle(
                                color: activecat == 'Top of week'
                                    ? Colors.black
                                    : greyclr,
                                fontSize: activecat == 'Top of week' ? 17 : 14,
                                fontWeight: activecat == 'Top of week'
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ),
                        Container(
                          height: sc.height * 0.0035,
                          width: sc.width * 0.07,
                          decoration: BoxDecoration(
                            color: activecat == 'Top of week'
                                ? greenclr
                                : backgroundclr,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: (() {
                        setState(() {
                          activecat = 'Soup';
                        });
                      }),
                      child: Column(
                        children: [
                          Text(
                            "Soup",
                            style: TextStyle(
                                color: activecat == 'Soup'
                                    ? Colors.black
                                    : greyclr,
                                fontSize: activecat == 'Soup' ? 17 : 14,
                                fontWeight: activecat == 'Soup'
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                          Container(
                            height: sc.height * 0.0035,
                            width: sc.width * 0.07,
                            decoration: BoxDecoration(
                                color: activecat == 'Soup'
                                    ? greenclr
                                    : backgroundclr,
                                borderRadius: BorderRadius.circular(8)),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        setState(() {
                          activecat = 'Seafo';
                        });
                      }),
                      child: Column(
                        children: [
                          Text(
                            "Seafo",
                            style: TextStyle(
                                color: activecat == 'Seafo'
                                    ? Colors.black
                                    : greyclr,
                                fontSize: activecat == 'Seafo' ? 17 : 14,
                                fontWeight: activecat == 'Seafo'
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                          Container(
                            height: sc.height * 0.0035,
                            width: sc.width * 0.07,
                            decoration: BoxDecoration(
                              color: activecat == 'Seafo'
                                  ? greenclr
                                  : backgroundclr,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sc.height * 0.04,
                ),

                AlignedGridView.count(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: Prod1.length,
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  itemBuilder: ((context, index) {
                    String position = Prod1[index].name.toString();
                    if (serachcontroller.text.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: SizedBox(
                          height: sc.height * 0.33,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MenuDetail(det: Prod1[index]),
                                    ),
                                  );
                                }),
                                child: Container(
                                  height: sc.height * 0.24,
                                  width: sc.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            NetworkImage(Prod1[index].image)),
                                    color: greenclr,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: sc.height * 0.01,
                              ),
                              Text(
                                Prod1[index].name.toString(),
                                maxLines: 1,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              SizedBox(
                                height: sc.height * 0.004,
                              ),
                              Text(
                                Prod1[index].price,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: greenclr),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (position
                        .toLowerCase()
                        .contains(serachcontroller.text.toLowerCase())) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: sc.height * 0.33,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: (() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MenuDetail(det: Prod1[index]),
                                    ),
                                  );
                                }),
                                child: Container(
                                  height: sc.height * 0.24,
                                  width: sc.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            NetworkImage(Prod1[index].image)),
                                    color: greenclr,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: sc.height * 0.01,
                              ),
                              Text(
                                Prod1[index].name.toString(),
                                maxLines: 1,
                                style: const TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: sc.height * 0.004,
                              ),
                              Text(
                                Prod1[index].price.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: greenclr),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
