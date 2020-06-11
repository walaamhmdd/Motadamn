import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  int group =0;
  // double _imageHeight = 256.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.white,disabledColor: Colors.white),
        child: Column(

          children: <Widget>[
            Stack(
                children: <Widget>[

                  Container(
                    height: MediaQuery.of(context).size.height ,

                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, -1.0),
                        end: Alignment(0.0, 1.0),
                        colors: [   const Color(0xffffffff),
                          const Color(0xff86B9F7),

                        ],
                        stops: [0.0, 1.0],

                      ),
                    ),
                  ),
                  _buildTopHeader(),

                  Transform.translate(offset:
                  Offset(0,644)

                      ,child: _buildNavigationBar()),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0, right: 20, top: 140 , bottom: 0),
                    child: Container(
                      height: 450,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0),
                            colors: [   const Color(0xffffffff),
                              const Color(0xff86B9F7),

                            ],
                            stops: [0.0, 1.0],

                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0, right: 0.0, top: 110),
                    child: Container(
                      height: 60,
                      width: 150,
                      color: Colors.white,
                      child: Transform.translate(
                        offset: Offset(-25,0),
                        child: Text('برنامج الإقتصاد',
                          textAlign: TextAlign.right,
                          style: TextStyle(

                              color: Colors.black,
                              fontFamily: 'Simple',
                              fontSize: 22,
                              fontWeight: FontWeight.w300

                          ),),
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top: 568.0, left: 43),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow[600],
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: Text('اضافه',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Simple',
                             fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 20
                        ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:175, right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[

                        RichText(
                          text: TextSpan(
                            text: '*',style: TextStyle(color: Colors.red ,fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: ': السن' , style: TextStyle(
                                fontFamily: 'Century',
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: Color(0xff0064BF),
                              ), ),
                            ],
                          ),
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Transform.translate(
                              offset: Offset(70,-15),
                              child: Text('أكبر من أربعين سنة',
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800
                                ),),
                            ),
                            Transform.translate(
                              offset: Offset(65,-15),
                              child: Radio(
                                value: 1,
                                groupValue: group,
                                onChanged: (T){
                                  print(T);
                                  setState(() {
                                    group= T;
                                  });
                                },


                              ),
                            ),

                            Transform.translate(
                              offset: Offset(90,-15),
                              child: Text('أقل من أربعين سنة ',
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800
                                ),),
                            ),
                            Transform.translate(
                              offset: Offset(90,-15),
                              child: Radio(
                                value: 1,
                                groupValue: group,
                                onChanged: (T){
                                  print(T);
                                  setState(() {
                                    group= T;
                                  });
                                },


                              ),


                            ),],
                        ),
                        SizedBox(height: 15,),
                        Transform.translate(
                          offset: Offset(10,-20),
                          child: RichText(
                            text: TextSpan(
                              text: '*',style: TextStyle(color: Colors.red ,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ': مبلغ الإستثمار' , style: TextStyle(
                                  fontFamily: 'Century',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff0064BF),
                                ), ),
                              ],
                            ),
                          ),

                        ),
                        Transform.translate(
                          offset: Offset(0,15),
                          child: Row(
                            children: <Widget>[

                              Transform.translate(
                                offset: Offset(70,-50),
                                child: Text('من 1000 الى 5000'
                                  ,
                                  style: TextStyle(
                                      fontFamily: 'Century',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800
                                  ),),
                              ),
                              Transform.translate(
                                offset: Offset(65,-50),
                                child: Radio(
                                  value: 5,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setState(() {
                                      group= T;
                                    });
                                  },


                                ),
                              ),

                              Transform.translate(
                                offset: Offset(80,-50),
                                child: Text('من 0 الى 1000 جنيه',
                                  style: TextStyle(
                                      fontFamily: 'Century',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800
                                  ),),
                              ),
                              Transform.translate(
                                offset: Offset(80,-50),
                                child: Radio(
                                  value: 4,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setState(() {
                                      group= T;
                                    });
                                  },


                                ),
                              ),

                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(209,-55),
                          child: Row(
                            children: <Widget>[

                              Text('أكثر من 5000 جنيه' ,
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800
                                ),),
                              Radio(
                                value: 6,
                                groupValue: group,
                                onChanged: (V){
                                  print( V);
                                  setState(() {
                                    group= V;
                                  });
                                },


                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Transform.translate(
                          offset: Offset(-0,-65),
                          child:RichText(
                            text: TextSpan(
                              text: '*',style: TextStyle(color: Colors.red ,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ': دراسة جدوي والقدرة علي إداره العمل' , style: TextStyle(
                                  fontFamily: 'Century',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff0064BF),
                                ), ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(0,30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              Transform.translate(offset: Offset(50,-110),
                                child: Text('لا'  ,
                                  style: TextStyle(
                                      fontFamily: 'Century',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800
                                  ),),
                              ),
                              Transform.translate(offset: Offset(40,-110),
                                child: Radio(
                                  value: 7,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setState(() {
                                      group= T;
                                    });
                                  },


                                ),
                              ),

                              Transform.translate(offset: Offset(50,-110),
                                child: Text('نعم'  ,
                                  style: TextStyle(
                                      fontFamily: 'Century',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800
                                  ),),
                              ),
                              Transform.translate(offset: Offset(40,-110),
                                child: Radio(
                                  value: 8,
                                  groupValue: group,
                                  onChanged: (T){
                                    print(T);
                                    setState(() {
                                      group= T;
                                    });
                                  },


                                ),
                              ),


                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Transform.translate(
                          offset: Offset(5,-110),
                          child: RichText(
                            text: TextSpan(
                              text: '*',style: TextStyle(color: Colors.red ,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ':الدخل' , style: TextStyle(
                                  fontFamily: 'Century',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff0064BF),
                                ), ),
                              ],
                            ),
                          ),

                        ),
                        Row(
                          children: <Widget>[

                            Transform.translate(
                              offset: Offset(70,-120),
                              child: Text('من 500 الى 1000'
                                ,
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800
                                ),),
                            ),
                            Transform.translate(
                              offset: Offset(70,-120),
                              child: Radio(
                                value: 5,
                                groupValue: group,
                                onChanged: (T){
                                  print(T);
                                  setState(() {
                                    group= T;
                                  });
                                },


                              ),
                            ),

                            Transform.translate(
                              offset: Offset(94,-120),
                              child: Text('من 0 الى 500 جنيه',
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800
                                ),),
                            ),
                            Transform.translate(
                              offset: Offset(92,-120),
                              child: Radio(
                                value: 4,
                                groupValue: group,
                                onChanged: (T){
                                  print(T);
                                  setState(() {
                                    group= T;
                                  });
                                },


                              ),
                            ),

                          ],
                        ),
                        Transform.translate(
                          offset: Offset(209,-130),
                          child: Row(
                            children: <Widget>[

                              Text('أكثر من 1000 جنيه' ,
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w800
                                ),),
                              Radio(
                                value: 6,
                                groupValue: group,
                                onChanged: (V){
                                  print( V);
                                  setState(() {
                                    group= V;
                                  });
                                },


                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),

                        Transform.translate(
                          offset: Offset(10,-140),
                          child: RichText(
                            text: TextSpan(
                              text: '*',style: TextStyle(color: Colors.red ,fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ': عدد أفراد الأسره' , style: TextStyle(
                                  fontFamily: 'Century',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff0064BF),
                                ), ),
                              ],
                            ),
                          ),

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Transform.translate(offset: Offset(50,-149),
                              child: Text(' أكثر من 3 أفراد'  ,
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800
                                ),),
                            ),
                            Transform.translate(offset: Offset(40,-150),
                              child: Radio(
                                value: 7,
                                groupValue: group,
                                onChanged: (T){
                                  print(T);
                                  setState(() {
                                    group= T;
                                  });
                                },


                              ),
                            ),

                            Transform.translate(offset: Offset(50,-150),
                              child: Text('من 0 حتي 3 '  ,
                                style: TextStyle(
                                    fontFamily: 'Century',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w800
                                ),),
                            ),
                            Transform.translate(offset: Offset(40,-150),
                              child: Radio(
                                value: 8,
                                groupValue: group,
                                onChanged: (T){
                                  print(T);
                                  setState(() {
                                    group= T;
                                  });
                                },


                              ),
                            ),


                          ],
                        ),

                      ],
                    ),
                  )

                ]
            ),
          ],
        ),
      ),

    );
    // resizeToAvoidBottomPadding: false,
  }
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
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            "اضافه حاله ",
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
Widget _buildNavigationBar(){
  return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0)),
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
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          child: BottomNavigationBar(
            //currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff0064BF),            unselectedItemColor: Color(0xff0064BF),


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
          )
      )
  );

}
