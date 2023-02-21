import 'package:flutter/material.dart';
import 'package:kupa/Models/cartmodel.dart';

import '../Utilities/colors.dart';
import '../Utilities/constant.dart';

class MenuDetail extends StatefulWidget {
  final ProdInfo1 det;
  const MenuDetail({super.key, required this.det});

  @override
  State<MenuDetail> createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  @override
  Widget build(BuildContext context) {
    Size sc = Utils().getScreenSize();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: sc.height * 0.45,
              width: sc.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.det.image),
                  ),
                  color: greenclr,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sc.height * 0.03,
                  ),
                  Text(
                    widget.det.name,
                    style: const TextStyle(
                        fontSize: 19.5, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: sc.height * 0.01,
                  ),
                  Text(
                    widget.det.price,
                    style: const TextStyle(
                        color: greenclr,
                        fontSize: 19.5,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sc.height * 0.02,
                  ),
                  Text(
                    widget.det.description,
                    style: const TextStyle(fontSize: 17, color: greyclr),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
