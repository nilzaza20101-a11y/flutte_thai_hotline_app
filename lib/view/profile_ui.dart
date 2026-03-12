import 'package:flutte_thai_hotline_app/view/hotline_list_ui.dart';
import 'package:flutter/material.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({super.key});
  Widget infoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "ผู้จัดทำ",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Image.asset("assets/images/logosau.png", height: 120),
              SizedBox(height: 10),
              Text("มหาวิทยาลัยเอเชียอาคเนย์", style: TextStyle(fontSize: 16)),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 3),
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/S.png"),
                ),
              ),
              SizedBox(height: 30),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      infoRow(Icons.badge, "รหัสนักศึกษา: 6819M10003"),
                      infoRow(Icons.person, "ชื่อ-นามสกุล: นางสาวศิรา เข็มศรี"),
                      infoRow(Icons.email, "Email: S6819M10003@sau.ac.th"),
                      infoRow(Icons.computer, "สาขา:วิศวกรรมคอมพิวเตอร์"),
                      infoRow(Icons.school, "คณะ: วิศวกรรมศาสตร์"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/icon/transport.png", width: 24),
            label: "การเดินทาง",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icon/fire.png", width: 24),
            label: "เหตุฉุกเฉิน",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icon/bank.png", width: 24),
            label: "ธนาคาร",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icon/icontelecom.png", width: 24),
            label: "สาธารณูปโภค",
          ),
        ],
        onTap: (index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HotlineListUi(
                title: [
                  "การเดินทาง",
                  "เหตุฉุกเฉิน",
                  "ธนาคาร",
                  "สาธารณูปโภค",
                ][index],
              ),
            ),
          );
        },
      ),
    );
  }
}
