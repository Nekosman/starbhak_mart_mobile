import 'package:asesmen_starbhak_mart/list.dart';
import 'package:asesmen_starbhak_mart/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _value = "-1";
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BottomNavBar();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 50,
                    height: 50,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: 50,
                    height: 50,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.person,
                        ),
                      ),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            buildText("Nama Produk"),
            buildTextField("Masukan nama produk"),
            SizedBox(height: 20),
            buildText("Harga"),
            buildTextField("Masukan Harga"),
            SizedBox(height: 20),
            buildText("Kategori produk"),
            DropdownButtonFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Makanan"),
                  value: "-1",
                ),
                DropdownMenuItem(
                  child: Text("Minuman"),
                  value: "1",
                ),
              ],
              onChanged: ((value) {}),
            ),
            SizedBox(height: 20),
            buildText("Image"),
            buildTextField("Choose file"),
            SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 0, 81, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                minimumSize: MaterialStateProperty.all(Size(250.0, 45.0)),
              ),
              child: Text(
                "Submit",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
