import 'package:asesmen_starbhak_mart/add.dart';
import 'package:asesmen_starbhak_mart/nav.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  Widget _buildIconButton(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton2(IconData icon, VoidCallback onTap) {
    return Flexible(
      flex: 1,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(icon),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemData(
      String image, String text, String text2, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 13),
        ),
        Text(
          text2,
          style: TextStyle(fontSize: 13),
        ),
        Icon(
          icon,
          color: Colors.red,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildIconButton(Icons.arrow_back_ios_new_rounded, () {}),
                  _buildIconButton2(Icons.person_outline, () {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color.fromARGB(255, 5, 62, 148),
                              Colors.blue,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 95,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListPage(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Add Data'),
                            Icon(
                              Icons.add_outlined,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Foto',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  'Nama Produk',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  'Harga',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  'Aksi',
                  style: TextStyle(fontSize: 13),
                )
              ],
            ),
            Divider(),
            _buildItemData('burger.jpg', 'Ramen Medium', 'Rp.50.000,00',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('burger.jpg', 'Green Tea', 'Rp.10.000,00',
                Icons.delete_outlined),
            Divider(),
            _buildItemData('burger.jpg', 'Ramen Small', 'Rp.35.000,00',
                Icons.delete_outlined),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
