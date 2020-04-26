import 'package:alarmdesign/Icons/Icons_svg.dart';
import 'package:alarmdesign/model/AlarnItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _SelectedIndex = 0;

  _onSelected(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color(0xff161A28),
                Color(0xff1E2439)
              ],
            )
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      print("clock");
                    },
                      child: Tooltip(
                        message: "Alarms",
                          decoration: BoxDecoration(
                              color: Color(0xff252D46)
                          ),
                          child: SvgPicture.asset(iconClock)
                      )
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  GestureDetector(
                    onTap: (){
                      print("options");
                    },
                      child: Tooltip(
                        message: "Options",
                          decoration: BoxDecoration(
                              color: Color(0xff252D46)
                          ),
                          child: SvgPicture.asset(iconOptions)
                      )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(200)),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: <Color>[
                        Color(0xff121523),
                        Color(0xff252D46)
                      ],
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 60,left: 140),
                      child: Text(
                        "12 hrs and 33 mins\n"
                            "           left for alarm",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            color: Color(0xffD3D6E3)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      padding: EdgeInsets.only(left: 40),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: items.length,
                          itemBuilder: (BuildContext context, int index){
                            AlarmItems alarmItems = items[index];
                            return GestureDetector(
                              onTap: (){
                                _onSelected(index);
                              },
                              child: Container(
                                width: 190,
                                margin: EdgeInsets.all(20),
                                child: _SelectedIndex != null && _SelectedIndex == index ? Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xff2368FF),
                                          offset: Offset(0,4),
                                          blurRadius: 10,
                                        )
                                      ],
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                        colors: <Color>[
                                          Color(0xff2368FF),
                                          Color(0xff30DDE5)
                                        ],
                                      )
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 40,
                                        left: 5,
                                        child: Opacity(
                                          opacity: 0.15,
                                          child: Text(
                                            alarmItems.pmAm,
                                            style: TextStyle(
                                                fontSize: 115,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            child: Text(
                                              alarmItems.days,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text(
                                                  alarmItems.numberClock,
                                                  style: TextStyle(
                                                      fontSize: 55,
                                                      color: Colors.white
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              alarmItems.mode,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ) :
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                        colors: <Color>[
                                          Color(0xff232941),
                                          Color(0xff3A446A)
                                        ],
                                      )
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        child: Text(
                                          alarmItems.days,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              alarmItems.numberClock,
                                              style: TextStyle(
                                                  fontSize: 55,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        child: Text(
                                          alarmItems.mode,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                              ),
                            );
                          }
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(200)),
                              color: Color(0xff1E2439),
                            ),

                          ),
                          Positioned(
                            left: 230,
                              top: 70,
                              child: GestureDetector(
                                onTap: (){
                                  print("Add");
                                },
                                  child: Tooltip(
                                    message: "Add",
                                      decoration: BoxDecoration(
                                        color: Color(0xff252D46)
                                      ),
                                      child: SvgPicture.asset(iconAdd)
                                  )
                              )
                          ),
                        ],

                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
