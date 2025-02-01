import 'package:ecommerce_app/widget/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/TV.png",
    "images/watch.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey, Wadondera",
                        style: AppWidget.boldTextFieldStyle()),
                    Text(
                      "Good Morning",
                      style: AppWidget.lightTextFieldStyle(),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/boy.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: AppWidget.lightTextFieldStyle(),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: AppWidget.semiTextFieldStyle()),
                Text(
                  "See All",
                  style: TextStyle(
                    color: const Color(0xFFfd6f3e),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0), // Added comma and const
            Row(
              children: [
                Container(
                    height: 130,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                        color: Color(0xFFfd6f3e),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                          color: Colors.white, // Fixed color syntax
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                Expanded(
                  child: SizedBox(
                    height: 130,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: categories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryTile(image: categories[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Products", style: AppWidget.semiTextFieldStyle()),
                Text(
                  "See All",
                  style: TextStyle(
                    color: const Color(0xFFfd6f3e),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/laptop2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text("Laptop", style: AppWidget.semiTextFieldStyle()),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Ksh20,000",
                              style: TextStyle(
                                  color: const Color(0xFFfd6f3e),
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFfd6f3e,
                                  ),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/watch2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text("App Watch",
                            style: AppWidget.semiTextFieldStyle()),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Ksh2000",
                              style: TextStyle(
                                  color: const Color(0xFFfd6f3e),
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFfd6f3e,
                                  ),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/headphone2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text("HeadPhone",
                            style: AppWidget.semiTextFieldStyle()),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "Ksh1500",
                              style: TextStyle(
                                  color: const Color(0xFFfd6f3e),
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 40.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: const Color(
                                    0xFFfd6f3e,
                                  ),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String image;

  const CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          const Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
