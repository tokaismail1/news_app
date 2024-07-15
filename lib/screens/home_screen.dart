import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedFilterIndex = 0;
  List<String> data = ["Healthy", "Technology", "Finance", "Arts", "Sports"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
  title: Row(
    children: [
      Expanded(
        child: Container(
          width: 296,
          height: 32,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff818181),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ' Dogecoin to the Moon...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                color: Color(0xff818181),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      //SizedBox(width: 20), // Adjust spacing as needed
      IconButton(
        icon: Icon(Icons.notifications),
        color: Colors.red, // Adjust color as needed
        onPressed: () {
          // Handle notification icon press
        },
      ),
    ],
  ),
),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest News",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.blue,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 240.0,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/home.jpg',
                    width: double.infinity,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'by Ryan Browne',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Crypto investors should be prepared to lose all their money, BOE governor says',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 8,
                    right: 8,
                    child: Text(
                      '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedFilterIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(2),
                      width: 100,
                      decoration: BoxDecoration(
                        color: _selectedFilterIndex == index
                            ? Colors.red[400]
                            : Color.fromARGB(255, 223, 222, 227),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          data[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildImageWithText('assets/images/doctor.jpg',
                    '5 things to know about the conundrum of lupus', 'SpecMatt Villano', 'Sunday, 9 May 2021'),
                SizedBox(height: 16),
                _buildImageWithText('assets/images/yoga.jpg',
                    '4 ways families can ease anxiety together', 'Zain Korsgaard', 'Sunday, 9 May 2021'),
                SizedBox(height: 16),
                _buildImageWithText('assets/images/bride.jpg',
                    'What to do if you are planning or attending a wedding during the pandemic', '', ''),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 5,
                blurRadius: 10,
              ),
            ],
          ),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCircleIcon(
                icon: Icons.home,
                onPressed: () {
                  // Handle home button press
                },
              ),
              _buildCircleIcon(
                icon: Icons.favorite,
                onPressed: () {
                  // Handle favourite button press
                },
              ),
              _buildCircleIcon(
                icon: Icons.person,
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCircleIcon({required IconData icon, required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(30.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.red,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithText(String imagePath, String mainText,
      String leftBottomText, String rightBottomText) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 500,
              height: 128,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              leftBottomText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Text(
              rightBottomText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Text(
              mainText,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
