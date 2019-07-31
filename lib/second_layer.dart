import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shopping_app/assets.dart' as prefix0;

class SecondLayer extends StatefulWidget {
  @override
  _SecondLayerState createState() => _SecondLayerState();
}

class _SecondLayerState extends State<SecondLayer> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print(
      MediaQuery.of(context).size.width,
    );
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height / 25,
            left: MediaQuery.of(context).size.width / 25,
            // right: MediaQuery.of(context).size.width / 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Welcome', style: title),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.notifications_none,
                              color: Color(0xFF1E2D3E),
                              size: 28,
                            ),
                            onPressed: () {},
                          ),
                          Positioned(
                            top: 8,
                            right: 9,
                            child: CircleAvatar(
                              backgroundColor: Color(0xFF7C6BD7),
                              radius: 7,
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                          height: 30,
                          width: 30,
                          child: CachedNetworkImage(
                            imageUrl:
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                            placeholder: (context, url) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  // left: MediaQuery.of(context).size.width / 25,
                  right: MediaQuery.of(context).size.width / 25,
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFBADAED),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 10),
                              blurRadius: 10),
                        ],
                      ),
                      height: 151,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.center,
                              height: 23,
                              width: 76,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(2)),
                              child: Text(
                                'Best Seller',
                                style: bestSeller,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            (MediaQuery.of(context).size.width < 640)
                                ? Text(
                                    'Beats By Solo Dr. Dre \nWireless',
                                    style: description,
                                  )
                                : Text(
                                    'Beats By Solo Dr. Dre Wireless',
                                    style: description,
                                  ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              '349.95\$',
                              style: mainPrice,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 2,
                      right: 10,
                      bottom: 10,
                      child: Container(
                          // width: 100,
                          child: Image.network(productImage[0])),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Popular Deals
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Popular Deals',
                      style: subtitle,
                    ),
                    Text(
                      'See All',
                      style: other,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Popular Product
              Container(
                height: 175,
                // color: Colors.black,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: productImage.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.network(productImage[index]),
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 7),
                                    blurRadius: 12)
                              ],
                              gradient: RadialGradient(
                                center: Alignment.center,
                                colors: index == 0
                                    ? [Color(0xFFF2DDC9), Color(0xFFD9C6B4)]
                                    : index == 1
                                        ? [Color(0xFFD7E7F0), Color(0xFFBADAED)]
                                        : [
                                            Color(0xFFAF1426),
                                            Color(0xFF9A1221)
                                          ],
                                stops: [.4, 1],
                                radius: .6,
                              ),
                            ),
                            width: 113,
                            height: 129,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            productTitle[index],
                            style: other,
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              '349.95\$',
                              style: price,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              // Circle Indicator (Not Use)
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xFF7C6BD7),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // Best Sellers
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Best Sellers',
                          style: subtitle,
                        ),
                        Text(
                          'See All',
                          style: other,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 61,
                    // width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: bestSellers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                                radius: 20,
                              ),
                              SizedBox(height: 5),
                              Text(
                                bestSellers[index],
                                style: avatarName,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 42,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Color(0xFF7C6BD7)),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          selectedFontSize: 0,
          unselectedFontSize: 0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 26,
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.local_mall,
                size: 26,
              ),
              title: Text('Mall'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              title: Text('Label'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 26,
              ),
              title: Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
