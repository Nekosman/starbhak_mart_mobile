import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String selectedItem;

  @override
  Widget _foodItem(String image, String text) {
    return Material(
      elevation: 4,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 150,
          width: 120,
          decoration: BoxDecoration(color: Colors.white),
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
                      size: 20,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _carouselimage(String image) {
    return Material(
      elevation: 4,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Container(
                child: Card(
                  child: Image(image: AssetImage(image)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starbhak mart'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(30, 30, 30, 11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                items: [_carouselimage("assets/burger.jpg")],
                options: CarouselOptions(),
              ),
              SizedBox(height: 20), // Add some space below CarouselSlider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
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
                  InkWell(
                    onTap: () {},
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
                  InkWell(
                    onTap: () {},
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
                ],
              ),
              SizedBox(height: 20), // Add some space below Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ALL FOODS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    child: Container(
                      height: 40,
                      width: 140,
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    20.0), // Mengatur border menjadi circular
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5.0,
                                  horizontal:
                                      10.0), // Mengatur padding agar lebih kecil
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Ink(
                                  decoration: const ShapeDecoration(
                                    color: Colors.blue, // Warna biru
                                    shape: CircleBorder(),
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors
                                          .white, // Warna putih untuk ikon
                                      size: 10, // Mengatur ukuran ikon
                                    ),
                                    onPressed: () {
                                      // Aksi yang ingin dilakukan saat ikon ditekan
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
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
      ),
    );
  }
}
