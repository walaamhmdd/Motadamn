

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Donor(),
  ));
}

class Donor extends StatefulWidget {
  @override
  _DonorState createState() => _DonorState();
}

class _DonorState extends State<Donor> {
  int _currentIndex = 0;
 // double _imageHeight = 256.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
              clipper: ClippingClass(),
              child: Container(
                height: 230,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -1.0),
                    end: Alignment(0.0, 1.0),
                    colors: [
                      const Color(0xff86B9F7),
                      const Color(0xffffffff)
                    ],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
            ),
              Transform.translate(
                offset: Offset(70,99),
                child: Container(

                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                            color: Color(0x37038add),
                            offset: Offset(5, 5),
                            blurRadius: 5
      ),

                      ],
                  border:Border.all(width:3, color: Colors.white),
                    borderRadius: BorderRadius.circular(85),
                    color: Colors.white
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(85),
                    child: Image.asset(
                      'images/donor.png',

                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              _buildTopHeader(),
              _buildProfileRow(),


            ]
          ),
          Padding(
            padding: const EdgeInsets.only(top:6.0, left: 140),
            child: Container(
              height: 35,
              width: 180,
              decoration: BoxDecoration(
    color: Color(0xffF7DC0C),
    borderRadius: BorderRadius.circular(50),
    boxShadow: [
    BoxShadow(
    color: Color(0xff86B9F7),
    blurRadius: 10.0,
    offset: Offset(4.0, 4.0),
    ),
    ],
    ),
              child: Transform.translate(
                offset: Offset(-10,-2),
                child: Text('الحالات التى تم التبرع لها',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'Simple',
                  fontWeight: FontWeight.w600,
                  color:Colors.white,

                    fontSize: 19
                ),),
              ),
            ),
          ),
          Row(children: <Widget>[
            _buildCard('images/case2.jpeg', 'أحمد', 'يحتاج الى 2000 جنيها شهريا ليعيش حياه كريمه', 'الأورمان', '2000  جنيها'),
            _buildCard('images/case3.jpeg', 'سعيد', 'يحتاج الى 5000 جنيها شهريا ليعيش حياه كريمه', 'رسالة', '5000 جنيها')
          ],),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: Container(
    height: 37,
    width: 170,
    decoration: BoxDecoration(
    color: Color(0xffF7DC0C),
    borderRadius: BorderRadius.circular(50),
    boxShadow: [
    BoxShadow(
    color: Color(0xff86B9F7),
    blurRadius: 10.0,
    offset: Offset(4.0, 4.0),
    ),
    ],

    ),
              child: Transform.translate(
                offset: Offset(-10,-1),
                child: Text('البرامج التى تم التبرع لها',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Simple',
                      fontSize: 16.5,
                   fontWeight: FontWeight.w600,
                      color: Colors.white,

                  ),),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(//mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
              children: <Widget>[  Container(
              width: 130.0,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                  color:  const Color(0xff86B9F7),

                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow

                  )
                ],
              ),
              child: Center(
                child: Text('غارمين ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff7FD858),
                    fontFamily: 'Simple',
                  ),),
              ),
            ),
                SizedBox(width: 15,),
              Container(
                width: 130.0,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  boxShadow: [
                    BoxShadow(
                      color:                       const Color(0xff86B9F7),

                      blurRadius: 5.0, // soften the shadow
                      spreadRadius: 0.0, //extend the shadow
                      //offset: Offset(
                      //15.0, // Move to right 10  horizontally
                      // 15.0, // Move to bottom 10 Vertically
                      //),
                    )
                  ],
                ),
                child: Text('رعاية مسنين ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff7FD858),
                    fontFamily: 'Simple',
                  ),),
              ),

            ],

            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:100.0),
            child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                Text('15000 جنيها',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Simple',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.yellow[600],
                  ),
                ),
                SizedBox(width: 40,),
                Text('مجموع التبرعات',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: 'Simple',
                      fontSize: 20,
                    fontWeight: FontWeight.w200,
                    //  fontWeight: FontWeight.w900,
                      color: Color(0xff0064BF),
                  ),
                ),
              ],
            ),
          )


        ],
      ),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
                bottomLeft: Radius.circular(40.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xff7FD858),
              unselectedItemColor: Color(0xff0064BF),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  title: Text(
                    'المزيد',
                    style: TextStyle(
                        fontFamily: 'Century',
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  title: Text(
                    'الملف الشخصى',
                    style: TextStyle(
                        fontFamily: 'Century',
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    child: CircleAvatar(
                      backgroundColor: Color(0xff7FD858),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text(
                    'تبرع الان',
                    style: TextStyle(
                        fontFamily: 'Century',
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.end,
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  title: Text(
                    'الحالات',
                    style: TextStyle(
                        fontFamily: 'Century',
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text(
                    'الصفحة الرئيسية',
                    style: TextStyle(
                        fontFamily: 'Century',
                        fontSize: 11,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          )),
    );
    // resizeToAvoidBottomPadding: false,
  }
}

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset  curveStartingPoint = Offset(0, 0);
    Offset curveEndPoint = Offset(size.width, size.height * 0.95);
    path.quadraticBezierTo(size.width * 0.4, size.height * 1.0,
        curveEndPoint.dx, curveEndPoint.dy);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.9,
        curveEndPoint.dx, curveEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
Widget _buildTopHeader() {
  return new   Padding(
      padding: const EdgeInsets.only(top: 30),
  child: Row(
  children: <Widget>[
  IconButton(
  icon: Icon(Icons.arrow_back_ios),
  color: Color(0xFF0064BF),
  iconSize: 25,
  onPressed: () {

  //  Navigator.push(context, MaterialPageRoute(
     // builder: (context) => All(),
   // ));
  },
  ),
  Padding(
  padding: const EdgeInsets.only(left: 100),
  child: Text(
  "الملف الشخصي",
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 25.0,
  fontFamily: "Simple",
  color: Color(0xFF0064BF),
  fontWeight: FontWeight.w700,
  ),
  ),
  ),
  ],
  ),);
}
Widget _buildProfileRow() {

  return new Padding(

    padding: new EdgeInsets.only(left: 30.0, top: 150, right: 40),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
     // mainAxisSize: MainAxisSize.min,
      children: <Widget>[

        new Padding(
          padding: const EdgeInsets.only( right: 30),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Text(
                'مدحت السيد',
                textAlign: TextAlign.left,
                style: new TextStyle(

                    fontSize: 30.0,
                    color: Color(0xff0064BF),
                   // fontWeight: FontWeight.bold,
                fontFamily: 'Simple',
                ),
              ),
              Transform.translate(
                offset: Offset(20,-10),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: new Text(

                    ' medhat@gmail.com',textAlign: TextAlign.right,
                    style: new TextStyle(
                      fontFamily: 'Century1',
                        fontSize: 14.0,
                        color: Color(0xff86B9F7),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),),


      ],
    ),
  );
}
Widget _buildCard(String image , String name, String status, String charity,String amount) {
  return Padding(
    padding: const EdgeInsets.only(left:10.0, right: 10, top: 10,bottom: 10),
    child:
       Container(
         height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0xff86B9F7),
                blurRadius: 10.0,
                offset: Offset(4.0, 4.0),
              ),
            ],
          ),

          child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
          children: <Widget>[

                Stack(
                  children: <Widget>[

                    Transform.translate(
                      offset: Offset(56,-50),
                      child: Container(
                        height: 55.0,
                        width: 55.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),

                            color: const Color(0xff86B9F7),
                            image: DecorationImage(
                              image: AssetImage(image),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  Transform.translate(
                    offset:  Offset(64,-8),
                    child: Text(
                      name,

                      style: TextStyle(
                        fontFamily: 'Simple',
                        //   fontWeight: FontWeight.bold,
                       fontSize: 30.0,
                        color: Colors.yellow[600],
                      ),
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(0,40),
                    child: Padding(
                      padding: const EdgeInsets.only(left:10.0, right: 20.0),
                      child: Text(
                        status,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'Century',
                          fontWeight: FontWeight.w600,
                          fontSize: 10.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(10,60),
                    child: Text(

                      charity,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Simple',
                        //fontWeight: FontWeight.bold,
                      //  fontSize: 15.0,
                        color: const Color(0xff0064BF),
                      ),
                    ),
                  ),


                Transform.translate(
                  offset: Offset(0,85),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Text(amount,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Simple',
                            color: Color(0xff7FD858),
                        ),
                      ),
                      Text('المبلغ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: 'Simple',
                            color: Colors.blue
                        ),
                      ),
                    ],
                  ),
                )
      ],
                ),
              ],
          ),
    ),
          );
}

