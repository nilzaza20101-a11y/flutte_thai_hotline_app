import 'package:flutte_thai_hotline_app/view/hotline_list_ui.dart';
import 'package:flutte_thai_hotline_app/view/profile_ui.dart';
import 'package:flutter/material.dart';

class HomePageUi extends StatelessWidget {
  final List menu = [
    {"name": "การเดินทาง", "Icon": "assets/icon/transport.png"},
    {"name": "เหตุฉุกเฉิน", "Icon": "assets/icon/fire.png"},
    {"name": "ธนาคาร", "Icon": "assets/icon/bank.png"},
    {"name": "สาธารณูปโภค", "Icon": "assets/icon/icontelecom.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 25, 45),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 35, 88, 129),
        centerTitle: true,
        title: Text(
          "สายด่วน THAILAND",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 80),
          itemCount: menu.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HotlineListUi(title: menu[index]["name"]),
                  ),
                );
              },
              child: Card(
                elevation: 20,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                margin: EdgeInsets.only(bottom: 15),
                child: Container(
                  height: 140,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        menu[index]["Icon"],
                        width: 60,
                        height: 60,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text(
                        menu[index]["name"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),

      bottomNavigationBar: SizedBox(
        height: 115,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 35, 88, 129),
          iconSize: 32,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileUi()),
              );
            }
          },
        ),
      ),
    );
  }
}
