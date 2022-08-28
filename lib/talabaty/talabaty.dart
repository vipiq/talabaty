
import 'package:flutter/material.dart';
import 'package:talabaty/resDetails/view.dart';


class talabaty extends StatefulWidget {
  const talabaty({Key? key}) : super(key: key);
  @override
  State<talabaty> createState() => _talabatyState();

}

class _talabatyState extends State<talabaty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 15),
            child: Icon(Icons.search, color: Colors.black87, size: 35,),
            ),
          ],
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black87, size: 35,),
            Text("المنصور", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontFamily: 'noto'),)
          ],
        ),
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(Icons.notifications_active_outlined, color: Colors.black87, size: 35,),
          )
        ],
      ),
      body:
      Column(
        children: [
          Container(
            height: 155,
            margin: EdgeInsets.only(top: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                sections(
                  Colors.red,
                  "المطاعم",
                  "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.greenAccent,
                    "بلوشي",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.blue,
                    "دايت فود",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.deepPurple,
                    "حلويات ومعجنات",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.pinkAccent,
                    "الفواكه والخضراوات",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.deepOrange,
                    "اللحوم",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.orangeAccent,
                    "البحرية",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.tealAccent,
                    "البن والقهوة",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.redAccent,
                    "بطاقات التعبئة",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.lightBlue,
                    "المرطبات",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),
                sections(
                    Colors.deepOrange,
                    "مكملات غذائية",
                    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                ),

              ],
            ),
          ),
          Container(
            height: 553,
            margin: EdgeInsets.only(top:15),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 10,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("المحلات الاكثر شيوعاً", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red, fontFamily: 'noto'),),
                      ),
                      Container(
                        width: 210,
                        height: 3,
                        color: Colors.red,
                        margin: EdgeInsets.only(bottom: 2),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 192,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      random(
                        "برجرات",
                        "https://media.istockphoto.com/photos/burger-on-a-red-gradient-background-picture-id1134613434?k=20&m=1134613434&s=170667a&w=0&h=T3tKq6Kcw9BtUR-JilglKI2I56Dyc_N9SeivdnCo3Ec=",
                          2500,
                          "المنصور",
                          "جيد",
                          "سندويش فيلية الدجاج",
                          6500
                      ),
                      random(
                          "زرزور",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Wbvermj92gElygU8IU7_brGqqas0fkWacw&usqp=CAU",
                          3000,
                          "رمضان 14",
                          "ممتاز",
                          "قوزي لحم",
                          15000
                      ),
                      random(
                          "عروس دمشق",
                          "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80",
                          2500,
                          "المنصور",
                          "جيد",
                          "سندويش فيلية الدجاج",
                          6500
                      ),
                      random(
                          "برجر ميكيرز",
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqJIazjIu6JxrOYQQsk7_PV1QyMqpejCzu_g&usqp=CAU",
                          2500,
                          "المنصور",
                          "جيد",
                          "بركر بالجبن",
                          4500
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      types(
                        "حصري",
                        Icons.calendar_month_outlined,
                      ),
                      types(
                        "توصيل مجاني",
                        Icons.card_giftcard_outlined,
                      ),
                      types(
                        "توصيل طلباتي",
                        Icons.moped_outlined,
                      ),
                      types(
                        "يدعم المحفضة",
                        Icons.account_balance_wallet_outlined,
                      ),
                      types(
                        "خصومات",
                        Icons.discount_outlined,
                      ),
                      types(
                        "الكل",
                        Icons.home_outlined,
                      ),
                    ],
                  ),
                ),
                more(
                  "هايزن",
                  "https://media-cdn.tripadvisor.com/media/photo-s/1b/76/44/4a/wings-de-poulet-sauce.jpg",
                    2000,
                    "الاعظمية",
                    "جيد",
                  "كنتاكي",
                  12000
                ),
                more(
                  "رويال كالكسي",
                  "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2022%2F04%2F13%2FCataplana-Portugese-Fish-Stew-FT-RECIPE0522.jpg",
                  3000,
                  "رمضان 14",
                  "ممتاز",
                    "قوزي لحم",
                  15000
                ),
                more(
                  "برجرات",
                  "https://d18mqtxkrsjgmh.cloudfront.net/public/styles/header_image/public/2021-03/Eating%20More%20Ultraprocessed%20‘Junk’%20Food%20Linked%20to%20Higher%20CVD%20Risk.jpeg?itok=zmNGCySB",
                  2500,
                  "المنصور",
                  "جيد",
                    "سندويش فيلية الدجاج",
                    6500
                ),
                more(
                  "خان مندي",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkbvSwNAvBLqUAiPng-jzTFqO0cfgu_NyQQ&usqp=CAU",
                  2000,
                  "الكرادة",
                  "جيد",
                    "مندي الخان",
                    10000
                ),
                more(
                  "اهواك",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Wbvermj92gElygU8IU7_brGqqas0fkWacw&usqp=CAU",
                    1500,
                  "زيونة",
                  "جيد جداً",
                  "مندي",
                  5000
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: ButtonBar(
        buttonPadding:  EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        alignment: MainAxisAlignment.center,
        layoutBehavior: ButtonBarLayoutBehavior.values.last,
        children: [
          Container(
            width: 100,
            height: 80,
            child: Column(
              children: [
                Icon(Icons.person_outline, size: 40, color: Colors.grey.shade500),
                Text("الحساب", style: TextStyle(color: Colors.grey.shade500, fontFamily: 'noto'),)
              ],
            ),
          ),
          Container(
            width: 100,
            height: 80,
            child: Column(
              children: [
                Icon(Icons.list_alt_rounded, size: 40, color: Colors.grey.shade500),
                Text("الطلبات", style: TextStyle(color: Colors.grey.shade500, fontFamily: 'noto'),)
              ],
            ),
          ),
          Container(
            width: 100,
            height: 80,
            child: Column(
              children: [
                Icon(Icons.account_balance_wallet_outlined, size: 40, color: Colors.grey.shade500),
                Text("المحفضة", style: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.bold, fontFamily: 'noto'),)
              ],
            ),
          ),
          Container(
            width: 100,
            height: 80,
            child: Column(
              children: [
                Icon(Icons.home_sharp, size: 40, color: Colors.red),
                Text("الرئيسية", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontFamily: 'noto'),)
              ],
            ),
          )

        ],
      ),

    );
  }

  Column sections(
      var color,
      String type,
      String imageUrl,
      ){
    return Column(
      children: [
        Container(
          width: 122,
          height: 120,
          margin: EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 25,
                  offset: Offset(4, 4),
                  color: Colors.grey.withOpacity(0.2),
              )],
            image: DecorationImage(image: NetworkImage(imageUrl),
              fit: BoxFit.scaleDown
            )
          ),
        ),
        Text("$type", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'noto'),)
      ],
    );
  }

  Column random(
      String type,
      String imageUrl,
      int deliverPrice,
      String location,
      String state,
      String food,
      int price,
      ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder) => resDetails(
              name: type,
              imageUrl: imageUrl,
              food: food,
              rate: state,
              price: price,
              priceDelever: deliverPrice,
              location: location,
            )
            ));
          },
          child: Container(
            width: 360,
            height: 150,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 25,
                  offset: Offset(4, 4),
                  color: Colors.grey.withOpacity(0.2),
                )],
                image: DecorationImage(image: NetworkImage(imageUrl),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 0, right: 15),
          child: Text("$type", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red, fontFamily: 'noto'),),
        )
      ],
    );
  }

  Container types(
      String type,
      var icon,
      ){
    return
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(right: 5, ),
                child: Text("$type", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey.shade700, fontFamily: 'noto'),),
              ),
              Icon(icon, color: Colors.grey.shade700),
            ],
          ),
          )
        );
  }

  Column more(
      String type,
      String imageUrl,
      int deliverPrice,
      String location,
      String state,
      String food,
      int price,
      ){
    return Column(
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (builder) => resDetails(
                  name: type,
                  imageUrl: imageUrl,
                  food: food,
                  rate: state,
                  price: price,
                  priceDelever: deliverPrice,
                  location: location,
                )
                ));
              },
              child: Container(
                width: 410,
                height: 160,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: NetworkImage(imageUrl),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Positioned(top: 30, right:30,child:
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(Icons.moped_outlined, color: Colors.red, size: 30,),
            )),
            Positioned(top: 27, right:75,child:
            Container(
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text("بروموكود", style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'noto'),),
            )),
          ],
        ),
        Padding(padding: EdgeInsets.only(right: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الحد الادنى للطلب 5000 د.ع", style: TextStyle( color: Colors.black87, fontSize: 16, fontFamily: 'noto'),),
              Text("$type", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red, fontFamily: 'noto'),)
            ],
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 4),
                  child: Text("سعر التوصيل $deliverPrice د.ع", style: TextStyle(fontSize: 16, color: Colors.black87, fontFamily: 'noto'),)
                  ),
                  Icon(Icons.moped_outlined, color: Colors.black87)
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 4),
                  child: Text("$state", style: TextStyle(fontSize: 16, color: Colors.black87, fontFamily: 'noto'),)
                  ),
                  Icon(Icons.tag_faces_outlined, color: Colors.black87)
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 4),
                  child: Text("$location", style: TextStyle(fontSize: 16, color: Colors.black87, fontFamily: 'noto'),),
                  ),
                  Icon(Icons.location_on_outlined, color: Colors.black87)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

}
