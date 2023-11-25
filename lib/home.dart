import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _foodItem(String image, String text) {
    return Material(
      elevation: 4,
      child: InkWell(
        onTap: () {},
        child: Flexible(
          child: Container(
            height: 150,
            width: 120,
            decoration: BoxDecoration(color: Colors.white),
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: Image(image: AssetImage(image)),
                    ),
                  ),
                  Text(text),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('12.000'),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size:
                              20, // Set the icon color to white for better visibility
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(30, 30, 30, 11),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Flexible(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 50,
                      height: 50,
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.dehaze_outlined,
                          ),
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Flexible(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: 50,
                      height: 50,
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Icon(
                            Icons.person_2_outlined,
                          ),
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Flexible(
                    child: Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          child: Card(
                            child: Image(
                              image: AssetImage("burger.jpg"),
                            ),
                            elevation: 10,
                          ),
                        ),
                        Text('ALL')
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Flexible(
                    child: Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          child: Card(
                            child: Image(
                              image: AssetImage("burger.jpg"),
                            ),
                            elevation: 10,
                          ),
                        ),
                        Text('Foods')
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Flexible(
                    child: Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          child: Card(
                            child: Image(
                              image: AssetImage("soda.jpg"),
                            ),
                            elevation: 10,
                          ),
                        ),
                        Text('Drinks')
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 8.0), // Tambahkan jarak vertikal
                  child: Container(
                    child: Text(
                      'ALL Foods',
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold, // Membuat teks menjadi bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Wrap(
              spacing: 16.0, // Set the spacing between items
              runSpacing: 16.0, // Set the run spacing (vertical spacing)
              alignment: WrapAlignment.spaceAround,
              children: <Widget>[
                _foodItem("burger.jpg", "Burger"),
                _foodItem("soda.jpg", "Soda"),
                _foodItem("burger.jpg", "Burger"),
                _foodItem("burger.jpg", "Burger"),
                _foodItem("soda.jpg", "Soda"),
                _foodItem("burger.jpg", "Burger"),
                _foodItem("burger.jpg", "Burger"),
                _foodItem("burger.jpg", "Burger"),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
