import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: Image.asset('assets/amazon_logo.png'),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.mic,
                    ),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            //search  field of the app started here
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: const Color(0xFF018197),
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'What are you looking for?',
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Color(0xFF018197),
                          ),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.camera_alt,
                      color: Color(0xFF018197),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  //location UI
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Deliver to Korea, Repablic of',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Amazon ads
                  Container(
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(70),
                                  bottomRight: Radius.circular(70),
                                ),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://github.com/khurshid88/pdp_ui7_amazon/blob/master/assets/images/image_1.jpeg?raw=true',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          padding: const EdgeInsets.all(20),
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              'We ship 45million products',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  //here sign in page starts
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    height: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in for the best experience',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: double.infinity,
                          color: Colors.orange,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Create an account',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 18)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  //deal of the day
                  Container(
                    padding: const EdgeInsets.all(
                      16,
                    ),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deal of the day',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: NetworkImage(
                              'https://github.com/khurshid88/pdp_ui7_amazon/blob/master/assets/images/item_7.jpeg?raw=true'),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Up to 31% off APC UPC Battery Back',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '\$10.99 - \$79.9',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  //best sellers UI
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Best seller in electronics',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                          'https://img.freepik.com/free-vector/seasonal-sale-discounts-presents-purchase-visiting-boutiques-luxury-shopping-price-reduction-promotional-coupons-special-holiday-offers-vector-isolated-concept-metaphor-illustration_335657-2766.jpg?w=2000',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.network(
                                          'https://www.byrdie.com/thmb/o_OpfxrY9UytVhqh9fSdiDCQGUY=/1000x750/smart/filters:no_upscale()/BYRDIE-15-best-places-to-buy-perfume-online-4777034-recirc-c1c4d8cefffe4ec38d2fd8cd1248d446.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Image.network(
                                          'https://i0.wp.com/mobilanyheter.net/wp-content/uploads/2022/04/FQHdncMXIAAhsy8.jpg?fit=1280%2C720&ssl=1',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Expanded(
                                        child: Image.network(
                                          'https://cdn.mos.cms.futurecdn.net/2fb2HB7uDdTg9Rvg8ZM8zg-1200-80.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Top products in Camera',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: NetworkImage(
                              'https://github.com/khurshid88/pdp_ui7_amazon/blob/master/assets/images/item_7.jpeg?raw=true'),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image.network(
                                  'https://github.com/khurshid88/pdp_ui7_amazon/blob/master/assets/images/item_3.jpeg?raw=true'),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Expanded(
                              child: Image.network(
                                  'https://github.com/khurshid88/pdp_ui7_amazon/blob/master/assets/images/item_4.jpeg?raw=true'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
