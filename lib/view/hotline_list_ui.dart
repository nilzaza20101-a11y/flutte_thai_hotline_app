import 'package:flutte_thai_hotline_app/home_page_ui.dart';
import 'package:flutte_thai_hotline_app/view/profile_ui.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotlineListUi extends StatelessWidget {
  final String title;
  HotlineListUi({required this.title});
  String getHeaderImage() {
    if (title == "การเดินทาง") {
      return "assets/images/Ty.png";
    } else if (title == "เหตุฉุกเฉิน") {
      return "assets/images/rrr.png";
    } else if (title == "ธนาคาร") {
      return "assets/images/bbb.png";
    } else if (title == "สาธารณูปโภค") {
      return "assets/images/uuu.png";
    }
    return "assets/images/taval.png";
  }

  Future<void> callNumber(String phone) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phone);
    await launchUrl(phoneUri);
  }

  @override
  Widget build(BuildContext context) {
    List data = [];
    if (title == "การเดินทาง") {
      data = [
        {
          "name": "กรมทางหลวงชนบท",
          "phone": "1146",
          "assets": "icon/highway.png/p10.png",
        },
        {
          "name": "ตำรวจท่องเที่ยว",
          "phone": "1155",
          "assets": "icon/highway.png/p11.png",
        },
        {
          "name": "ตำรวจทางหลวง",
          "phone": "1193",
          "assets": "icon/highway.png/p12.png",
        },
        {
          "name": "ข้อมูลจราจร",
          "phone": "1197",
          "assets": "icon/highway.png/p13.png",
        },
        {
          "name": "ขสมก.",
          "phone": "1348",
          "assets": "icon/highway.png/p14.png",
        },
        {"name": "บสข.", "phone": "1490", "assets": "icon/highway.png/p15.png"},
        {
          "name": "เส้นทางบนทางด่วน",
          "phone": "1543",
          "assets": "icon/highway.png/p16.png",
        },
        {
          "name": "กรมทางหลวง",
          "phone": "1586",
          "assets": "icon/highway.png/p17.png",
        },
        {
          "name": "การรถไฟแห่งประเทศไทย",
          "phone": "1690",
          "assets": "icon/highway.png/p18.png",
        },
      ];
    } else if (title == "เหตุฉุกเฉิน") {
      data = [
        {
          "name": "เหตุด่วนเหตุร้าย",
          "phone": "191",
          "assets": "icon/police.png/p1.png",
        },
        {
          "name": "แจ้งไฟไหม้",
          "phone": "199",
          "assets": "icon/police.png/p2.png",
        },
        {
          "name": "ตำรวจแห่งชาติ",
          "phone": "1192",
          "assets": "icon/police.png/p3.png",
        },
        {
          "name": "อุบัติเหตุทางน้ำ",
          "phone": "1196",
          "assets": "icon/police.png/p4.png",
        },
        {
          "name": "แจ้งคนหาย",
          "phone": "1300",
          "assets": "icon/police.png/p5.png",
        },
        {
          "name": "ศูนย์ปลอดภัยคมนาคม",
          "phone": "1356",
          "assets": "icon/police.png/p6.png",
        },
        {
          "name": "หน่วยการแพทย์กู้ชีพ",
          "phone": "1554",
          "assets": "icon/police.png/p7.png",
        },
        {
          "name": "ศูนย์เอราวัณ",
          "phone": "1646",
          "assets": "icon/police.png/p8.png",
        },
        {
          "name": "เจ็บป่วยฉุกเฉิน",
          "phone": "1193",
          "assets": "icon/police.png/p9.png",
        },
      ];
    } else if (title == "ธนาคาร") {
      data = [
        {
          "name": "ธนาคารกรุงเทพ",
          "phone": "1333",
          "assets": "icon/bbank.png/b1.png",
        },
        {
          "name": "ธนาคารออมสิน",
          "phone": "1115",
          "assets": "icon/bbank.png/b2.png",
        },
        {
          "name": "ธนาคารกสิกร",
          "phone": "02 888 8888",
          "assets": "icon/bbank.png/b3.png",
        },
        {
          "name": "ธนาคารกรุงไทย",
          "phone": "02 111 1111",
          "assets": "icon/bbank.png/b4.png",
        },
        {
          "name": "ธนาคารกรุงศรี",
          "phone": "1572",
          "assets": "icon/bbank.png/b5.png",
        },
        {
          "name": "ธนาคารทีทีบีธนชาต",
          "phone": "1428",
          "assets": "icon/bbank.png/b6.png",
        },
        {
          "name": "ธนาคารซิตี้แบงค์",
          "phone": "1588",
          "assets": "icon/bbank.png/b7.png",
        },
        {"name": "LH BANK", "phone": "1327", "assets": "icon/bbank.png/b8.png"},
        {
          "name": "ธนาคาร ธอส.",
          "phone": "02 645 9000",
          "assets": "icon/bbank.png/b9.png",
        },
        {
          "name": "ธนาคารไทยพาณิชย์",
          "phone": "02 777 7777",
          "assets": "icon/bbank.png/b10.png",
        },
        {
          "name": "ธนาคารไทยเครดิต",
          "phone": "02 697 5454",
          "assets": "icon/bbank.png/b11.png",
        },
        {
          "name": "ธนาคารยูโอบี",
          "phone": "02 285 1555",
          "assets": "icon/bbank.png/b12.png",
        },
        {
          "name": "TISCO",
          "phone": "02 633 6000",
          "assets": "icon/bbank.png/b13.png",
        },
        {
          "name": "ธนาคารอิสลาม",
          "phone": "02 204 2766",
          "assets": "icon/bbank.png/b14.png",
        },
        {
          "name": "KIATNAKIN PHATRA",
          "phone": "02 165 5555",
          "assets": "icon/bbank.png/b16.png",
        },
        {
          "name": "CIMB THAI",
          "phone": "02 626 7777",
          "assets": "icon/bbank.png/b15.png",
        },
      ];
    } else if (title == "สาธารณูปโภค") {
      data = [
        {
          "name": "ไฟฟ้านครหลวง",
          "phone": "1130",
          "assets": "icon/telecome.png/t1.png",
        },
        {
          "name": "ไฟฟ้าส่วนภูมิภาค",
          "phone": "1129",
          "assets": "icon/telecome.png/t2.png",
        },
        {
          "name": "ไฟฟ้าฝ่ายผลิต",
          "phone": "1416",
          "assets": "icon/telecome.png/t3.png",
        },
        {
          "name": "การประปานครหลวง",
          "phone": "1125",
          "assets": "icon/telecome.png/t4.png",
        },
        {
          "name": "การประปาส่วนภูมิภาค",
          "phone": "1662",
          "assets": "icon/telecome.png/t5.png",
        },
        {"name": "true", "phone": "1242", "assets": "icon/telecome.png/t6.png"},
        {"name": "dtac", "phone": "1678", "assets": "icon/telecome.png/t7.png"},
        {"name": "AIS", "phone": "1175", "assets": "icon/telecome.png/t8.png"},
        {"name": "TOT", "phone": "1100", "assets": "icon/telecome.png/t9.png"},
      ];
    }
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 0, 25, 45),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 25, 45),
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.home, size: 30),
          color: Colors.white,
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HomePageUi()),
              (route) => false,
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, size: 30),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileUi()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  getHeaderImage(),
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(20),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 20,
                  shadowColor: const Color.fromARGB(180, 255, 255, 255),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  child: ListTile(
                    leading: SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        "assets/${data[index]["assets"]}",
                        fit: BoxFit.contain,
                      ),
                    ),
                    title: Text(
                      data[index]["name"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "โทร: ${data[index]["phone"]}",
                      style: TextStyle(fontSize: 14),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.call, color: Colors.green, size: 30),
                      onPressed: () {
                        callNumber(data[index]["phone"]);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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
