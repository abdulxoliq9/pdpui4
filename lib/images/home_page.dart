import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Cars', style: TextStyle(
            color: Colors.red,fontSize: 25
        ),),
        brightness: Brightness.light,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.notifications_none,
              color: Colors.deepOrange,),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart),
            color: Colors.deepOrange,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,'All'),
                    singleTab(false,'Red'),
                    singleTab(false,'Blue'),
                    singleTab(false,'Green'),
                    singleTab(false,'Yellow'),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem('assets/images/car5.webp'),
              makeItem('assets/images/car1.webp'),
              makeItem('assets/images/car2.webp'),
              makeItem('assets/images/car3.webp'),
              makeItem('assets/images/car4.webp'),
              makeItem('assets/images/car6.webp'),
            ],
          ),
        ),
      ),
    );

  }
  Widget singleTab(bool type,String text){
    return AspectRatio(aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: type ? Colors.deepOrange:Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(text,style: TextStyle(
              fontSize: type ? 20:17,
              color: type ? Colors.white:Colors.grey[700],
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 240,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          boxShadow: [BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            offset: Offset(0,8),
          ),]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.2),
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('PDP Car',style: TextStyle(
                        fontSize: 25,color: Colors.white
                    ),),
                    SizedBox(width: 10,),
                    Text('Electric',style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),)

                  ],
                ),
                SizedBox(height: 10,),
                Text('100\$',style: TextStyle(
                    color: Colors.white,fontSize: 25
                ),)
              ],
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrange
              ),
              child: Center(
                child: Icon(Icons.favorite_border,
                  color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
