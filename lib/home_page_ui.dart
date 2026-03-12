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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 87, 135, 173),
        centerTitle: true,
        title: Text(
          "สายด่วน THAILAND",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
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
              elevation: 5,
              margin: EdgeInsets.only(bottom: 35),
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "หน้าหลัก"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ผู้จัดทำ"),
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
    );
  }
}
