import 'package:flutter/material.dart';
import 'package:menu/Models/homemodel.dart';
import 'package:menu/Utilities/colors.dart';
import 'package:menu/Utilities/constant.dart';

class DetailScreen extends StatefulWidget {
  final ProdInfo details;
  const DetailScreen({super.key, required this.details});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
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
                    image: NetworkImage(widget.details.image),
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
                    widget.details.name,
                    style: const TextStyle(
                        fontSize: 19.5, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: sc.height * 0.01,
                  ),
                  Text(
                    widget.details.price,
                    style: const TextStyle(
                        color: greenclr,
                        fontSize: 19.5,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sc.height * 0.02,
                  ),
                  Text(
                    widget.details.description,
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
