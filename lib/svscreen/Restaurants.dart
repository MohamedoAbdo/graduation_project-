import 'package:flutter/material.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  @override
  Container _buildCategoryContainer(
    String label,
  ) {
    return Container(
      width: 140,
      height: 50,
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(
            const Color(0xff6C3428),
          ),
          shadowColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: const BorderSide(
                color: Colors.brown,
              ),
            ),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Color(0xFFBE8C63),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 1,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 430,
              height: 60,
              decoration: ShapeDecoration(
                color: const Color(0xFFF3F3F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF3F3F3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Restaurant ",
                    hintStyle: TextStyle(
                        fontSize: 24,
                        color: Color(0xFFBE8C63),
                        fontWeight: FontWeight.w500),
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "   Suggestted For You:",
                  style: TextStyle(
                    color: Color(0xff6C3428),
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    height: 1.7,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: 430,
                height: 50,
                child: Column(
                  children: [
                    Row(
                      children: [
                        _buildCategoryContainer('streo'),
                        _buildCategoryContainer('kfc'),
                        _buildCategoryContainer('bazoka'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: 430,
                height: 50,
                child: Column(
                  children: [
                    Row(
                      children: [
                        _buildCategoryContainer('streo'),
                        _buildCategoryContainer('kfc'),
                        _buildCategoryContainer('bazoka'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: 430,
                height: 50,
                child: Column(
                  children: [
                    Row(
                      children: [
                        _buildCategoryContainer('bazoka'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
