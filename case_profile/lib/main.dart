import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white30,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        title: Transform.translate(
          offset: Offset(-20.0, 0.0),
          child: Center(
            child: Text(
              'سعيد',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 30,
                fontFamily: 'Simple',
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
            children: <Widget>[
          Container(
            decoration: new BoxDecoration(
                color: Colors.grey[100],
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                )),
            //color: Colors.grey[100],
            width: 120,
            height: 120,

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('images/case.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -15),
            child: CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 2.0,
              percent: 0.70,
              center: new Text(
                "70%",
                style: TextStyle(
                    color: Colors.blue[500],
                    fontFamily: 'Simple',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              progressColor: Colors.blue[500],
            ),
          ),
          //  SizedBox(height: 20,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                decoration: BoxDecoration(

                    gradient: LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0xffffffff),
                        const Color(0xff86B9F7)
                      ],
                      stops: [0.0, 1.0],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                 ),
                child: Column(
                  children: <Widget>[
                    _buildRow('سعيد', ':الإسم'),
                    _buildRow('٢٠٠ جنيها', ':الدخل'),
                    _buildRow('٥ أفراد', ':أفراد الأسرة'),
                    _buildRow('٤٠ عام', ':تاريخ الميلاد'),
                    _buildRow('الاسكندريه', ':العنوان'),
                    _buildRow('عامل نظافه', ':الوظيفه'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
            //  margin: const EdgeInsets.all(15.0),


              width: 150.0,
              height: 50,
              decoration: BoxDecoration(

                    border: Border.all(width: 4,color: Colors.white),


                color: const Color(0xff7fd858),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 5.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                    //offset: Offset(
                    //15.0, // Move to right 10  horizontally
                    // 15.0, // Move to bottom 10 Vertically
                    //),
                  )
                ],
              ),
              child: Center(
                child: Text(
                  'تبرع الآن',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Simple',
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),

      bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(40)),
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
  }
}

Widget _buildRow(String description, String name) {
  return Expanded(
    child: Row(
     // mainAxisAlignment: MainAxisAlignment.spaceAround,
     // mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(

          padding: const EdgeInsets.fromLTRB(50,0,0,5),
          child: Container(


            width: 150,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: Center(
              child: Text(
                description,
                //textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'Simple',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.blue[300],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: 20,
        ),
        Text(
          name,
          //textAlign: TextAlign.right,
          style: TextStyle(
            fontFamily: 'Simple',
            fontWeight: FontWeight.bold,
            fontSize: 21.0,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
