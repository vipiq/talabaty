
import 'package:flutter/material.dart';
import 'package:talabaty/resDetails/view.dart';


class talabaty extends StatefulWidget {
  @override
  State<talabaty> createState() => _talabatyState();

}

class _talabatyState extends State<talabaty> {
  int index = 0;
  List topScrollImages = [
    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png",
    "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png",
  ];
  List topScrollColor = [
    Colors.red,
    Colors.greenAccent,
    Colors.blue,
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.deepOrange,
    Colors.orangeAccent,
    Colors.tealAccent,
    Colors.redAccent,
    Colors.lightBlue,
    Colors.deepOrange,
  ];
  List topScrollText = [
    "المطاعم",
    "بلوشي",
    "دايت فود",
    "حلويات ومعجنات",
    "الفواكه والخضراوات",
    "اللحوم",
    "البحرية",
    "البن والقهوة",
    "بطاقات التعبئة",
    "المرطبات",
    "مكملات غذائية",
  ];

  List centerScrollImage =[
    "https://media.istockphoto.com/photos/burger-on-a-red-gradient-background-picture-id1134613434?k=20&m=1134613434&s=170667a&w=0&h=T3tKq6Kcw9BtUR-JilglKI2I56Dyc_N9SeivdnCo3Ec=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Wbvermj92gElygU8IU7_brGqqas0fkWacw&usqp=CAU",
    "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqJIazjIu6JxrOYQQsk7_PV1QyMqpejCzu_g&usqp=CAU",
  ];
  List centerScrollName =[
    "برجرات",
    "زرزور",
    "عروس دمشق",
    "برجر ميكيرز",
  ];
  List centerScrollLocation =[
    "المنصور",
    "رمضان 14",
    "المنصور",
    "المنصور",
  ];
  List centerScrollFood =[
    "سندويش فيلية الدجاج",
    "قوزي لحم",
    "سندويش فيلية الدجاج",
    "بركر بالجبن",
  ];
  List centerScrollPrice =[
    6500,
    15000,
    6500,
    4500
  ];
  List centerScrollDeleverPrice =[
    2500,
    3000,
    2500,
    2500,
  ];
  List centerScrollState =[
    "جيد",
    "ممتاز",
    "جيد",
    "جيد",
  ];

  List typesScrollName = [
    "حصري",
    "توصيل مجاني",
    "توصيل طلباتي",
    "يدعم المحفضة",
    "خصومات",
    "الكل",
  ];
  List typesScrollIcon = [
    Icons.calendar_month_outlined,
    Icons.card_giftcard_outlined,
    Icons.moped_outlined,
    Icons.account_balance_wallet_outlined,
    Icons.discount_outlined,
    Icons.home_outlined,
  ];
  List<Resturant> resList = [
    Resturant(
      name: "هايزن",
      imageUrl:  "https://media-cdn.tripadvisor.com/media/photo-s/1b/76/44/4a/wings-de-poulet-sauce.jpg",
      food: "كنتاكي",
      location: "الاعظمية",
      state: "جيد",
      deleverPrice: 2000,
      price: 12000
    ),
    Resturant(
        name:  "رويال كالكسي",
        imageUrl:  "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2022%2F04%2F13%2FCataplana-Portugese-Fish-Stew-FT-RECIPE0522.jpg",
        food: "قوزي لحم",
        location: "رمضان 14",
        state: "ممتاز",
        deleverPrice: 3000,
        price: 15000
    ),
    Resturant(
        name:  "برجرات",
        imageUrl:  "https://d18mqtxkrsjgmh.cloudfront.net/public/styles/header_image/public/2021-03/Eating%20More%20Ultraprocessed%20‘Junk’%20Food%20Linked%20to%20Higher%20CVD%20Risk.jpeg?itok=zmNGCySB",
        food: "سندويش فيلية الدجاج",
        location:  "المنصور",
        state: "جيد",
        deleverPrice: 2500,
        price: 6500
    ),

    Resturant(
        name: "خان مندي",
        imageUrl:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNkbvSwNAvBLqUAiPng-jzTFqO0cfgu_NyQQ&usqp=CAU",
        food: "مندي الخان",
        location: "الكرادة",
        state: "جيد",
        deleverPrice: 2000,
        price: 10000
    ),

    Resturant(
        name: "اهواك",
        imageUrl:  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Wbvermj92gElygU8IU7_brGqqas0fkWacw&usqp=CAU",
        food:  "مندي",
        location: "زيونة",
        state:  "جيد جداً",
        deleverPrice: 1500,
        price: 5000
    ),

  ];



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
          // main horizental scrolling
          Container(
            height: 155,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 11,
                itemBuilder: (BuildContext context, int index) {
              return sections(
                          topScrollColor[index],
                          topScrollText[index],
                          "https://www.freepnglogos.com/uploads/food-png/food-grass-fed-beef-foodservice-products-grass-run-farms-4.png"
                        );
            }),
          ),
          // list view under main
          Container(
            height: 553,
            margin: EdgeInsets.only(top:15),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                // title scrolling page
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
                // res scrolling horizantal
                Container(
                  height: 192,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index){
                      return random(
                          centerScrollName[index],
                          centerScrollImage[index],
                          centerScrollDeleverPrice[index],
                          centerScrollLocation[index],
                          centerScrollState[index],
                          centerScrollFood[index],
                          centerScrollPrice[index]
                      );
                    },
                  ),
                ),
                // types scrolling
                Container(
                  height: 40,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (BuildContext contex, int index){
                      return types(typesScrollName[index], typesScrollIcon[index]);
                    },
                  ),
                ),
                // list map of resturant
                ...resList.map((res) => more(res.name, res.imageUrl, res.deleverPrice, res.location, res.state, res.food, res.price)),
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
                Text("الرئيسية", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontFamily: 'noto',),)
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



class Resturant{
  String name;
  String imageUrl;
  String food;
  String location;
  String state;
  int deleverPrice;
  int price;

  Resturant({
    required this.name,
    required this.imageUrl,
    required this.food,
    required this.location,
    required this.state,
    required this.deleverPrice,
    required this.price
  });
}