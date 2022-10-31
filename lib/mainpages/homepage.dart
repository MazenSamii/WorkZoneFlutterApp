import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:workzone/Instructors/instructors.dart';
import 'package:workzone/login/login.dart';
import 'package:workzone/opinionsORcomplements/addadvertisement.dart';
import 'package:workzone/opinionsORcomplements/addcomplement.dart';
import 'package:workzone/opinionsORcomplements/addopinion.dart';
import 'package:workzone/opinionsORcomplements/viewopinions.dart';
import '../Instructors/instructorpagedesign.dart';
import '../contactANDmap/contactus.dart';
import '../contactANDmap/map.dart';
import '../opinionsORcomplements/viewadvertisement.dart';
import '../opinionsORcomplements/viewcomplements.dart';
class homepage extends StatelessWidget{
  @override
  PageController _controller=PageController();
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Container(
          margin: EdgeInsets.only(left: 75),
          child: Image.asset('assets/Asset 2.png',width: 80,height: 50,),
        )
        ,backgroundColor: Colors.blue[900],
      )
        ,drawer:Drawer(
      child:ListView(
        children: [
          Container(
            // height: 300,
            child:Image.asset('assets/Asset 5.png',width: 200,height: 200,),            // color: Colors.blue[900],
          )
          ,Container(
            width: 200,
            height: 420,
            decoration: BoxDecoration(
            color: Colors.blue[300],
              borderRadius: BorderRadius.circular(30.5)
            ),
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home,color: Colors.black,),
                  title: Text('Home'),
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.person,color: Colors.black,),
                  title: Text('Instructors'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>instructorspage()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.login,color: Colors.black,),
                  title: Text('Login as Instructor (ADMINS)'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                  title: Text('View people`s opinions'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>viewopinion()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.add_chart,color: Colors.black,),
                  title: Text('Add Your opinion'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>addopinion()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                  title: Text('View people`s Complements'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>viewcomplement()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.add_chart,color: Colors.black,),
                  title: Text('Add Your Complement'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>addcomplemet()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined,color: Colors.black,),
                  title: Text('View advertisements'),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>viewadvertisement()));
                  },
                )
                ,ListTile(
                  leading: Icon(Icons.input,color: Colors.black,),
                  title: Text('Join'),
                  onTap: (){

                  },
                )
                ,ListTile(
                  leading: Icon(Icons.contact_phone_outlined,color: Colors.black,),
                  title: Text('Contact us'),
                  onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>contactus()));
                  },
                )
              ],
            ),
          )
        ],
      )
    )
        ,body: SafeArea(
          child: ListView(
            children: [
              Container(
                width: 100,
                height: 40,
                margin:EdgeInsets.only(top: 10) ,
                child:ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>addopinion()));
                        },
                        child: Text('Add opinion'),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.pressed)){
                                return Colors.black26;
                              }
                              return Colors.blue[600];
                            }
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                            )
                        ),
                      ),
                      margin: EdgeInsets.only(left: 10,right: 12),
                    )
                    ,Container(
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>addcomplemet()));
                        },
                        child: Text('Add complement'),
                        style:ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.pressed)){
                                return Colors.black26;
                              }
                              return Colors.blue[600];
                            }
                            ),
                            shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                            )
                        ) ,
                      ),
                      margin: EdgeInsets.only(right: 12),
                    )
                    ,Container(
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>addadvertisement()));
                        },
                        child: Text('Add advertisement'),
                        style:ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states){
                              if(states.contains(MaterialState.pressed)){
                                return Colors.black26;
                              }
                              return Colors.blue[600];
                            }
                            ),
                            shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                            )
                        ) ,
                      ),
                    )
                  ],
                ),
              )
              ,Container(
                height: 150,
                width: 150,
                margin: EdgeInsets.only(top: 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                  Image.asset('assets/w1.jpg')
                  ,Container(
                      width: 10,
                    )
                    ,Image.asset('assets/w2.jpg')
                    ,Container(
                      width: 10,
                    )
                    ,Image.asset('assets/w3.jpg')
                    ,Container(
                      width: 10,
                    )
                    ,Image.asset('assets/w4.jpg')
                    ,Container(
                      width: 10,
                    )
                    ,Image.asset('assets/w5.jpg')
                    ,Container(
                      width: 10,
                    )
                    ,Image.asset('assets/w6.jpg')
                    ,Container(
                      width: 10,
                    )
                    ,Image.asset('assets/w7.jpg')
                    ,Container(
                      width: 10,
                    )
                    ,Image.asset('assets/w4.jpg')
                    ,Container(
                      width: 10,
                    )
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(top: 10,left: 10),
                child:Row(
                  children: [
                    Text('Scroll to view our Instructors..',style: TextStyle(fontSize: 12),),
                    Icon(Icons.keyboard_double_arrow_right)
                  ],
                )
                
              )
              ,Container(
                width: 200,
                height: 310,
                margin: EdgeInsets.only(left: 40,right: 40,top: 10),
                decoration: BoxDecoration(
                    color: Colors.black12,
                  borderRadius: BorderRadius.circular(20.5)
                ),
                child: PageView(
                  controller: _controller,
                  children: [
                    instructorsdesign('ENG.Mazen Sami Abuaziz','Flutter','You can contact with him at..',"http://wa.me/201010585086",'https://www.facebook.com/WorkZoneOfficial','01019291595')
                    ,instructorsdesign('ENG.Sara Samir','Programming for Children','You can contact with her at..',"http://wa.me/201010585086",'https://www.facebook.com/WorkZoneOfficial','01019291595')
                    ,instructorsdesign('ENG.Muhhammed El_Attar','Design&Android','You can contact with him at..',"http://wa.me/201010585086",'https://www.facebook.com/WorkZoneOfficial','01019291595')
                    ,instructorsdesign('ENG.Ahmed Mabrouk Saied','Programming ,C++','You can contact with him at..',"http://wa.me/201010585086",'https://www.facebook.com/WorkZoneOfficial','01019291595')
                    ,instructorsdesign('ENG.Ahmed Mahmoud','Web Design','You can contact with him at..',"http://wa.me/201010585086",'https://www.facebook.com/WorkZoneOfficial','01019291595')
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(top: 5),
                alignment: Alignment(0,0.75),
                child: SmoothPageIndicator(controller: _controller,count: 5,),
              )
              ,Container(
                height: 1,
                color: Colors.black,
                margin: EdgeInsets.only(top: 15),
              )
              ,Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                child: Text('Contact us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
              )
              ,Container(
                child: Icon(Icons.handshake_outlined,size: 100 ,),
                margin: EdgeInsets.only(top: 10),
              )
              ,Container(
                margin: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Container(
                      child:Text('Facebook',style: TextStyle(fontSize: 17),)
                          ,margin: EdgeInsets.only(right: 15),
                    )
                    ,IconButton(
                        onPressed: (){
                        launch('https://www.facebook.com/WorkZoneOfficial');
                        },
                        icon:Icon(Icons.facebook,size: 30,)
                        ,color: Colors.blue,
                    )
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Container(
                      child:Text('Watsapp',style: TextStyle(fontSize: 17),)
                          ,margin: EdgeInsets.only(right: 22),
                    )
                    ,IconButton(
                        onPressed: (){
                          launch("http://wa.me/201010585086");
                        },
                        icon:Icon(Icons.wifi_calling_3_outlined,size: 30,)
                        ,color: Colors.green,
                    )
                  ],
                ),
              )
              ,Container(
                margin: EdgeInsets.only(left: 15,top: 10),
                child: Row(
                  children: [
                    Container(
                      child:Text('Direct call',style: TextStyle(fontSize: 17),)
                          ,margin: EdgeInsets.only(right: 15),
                    )
                    ,IconButton(
                        onPressed: (){
                      FlutterPhoneDirectCaller.callNumber('01010585086');
                        },
                        icon:Icon(Icons.call,size: 30,)
                    )
                  ],
                ),
              )
              ,Container(
                height: 1,
                color: Colors.black,
                margin: EdgeInsets.only(left: 40,right: 40,top: 10),
              )
              ,Container(
                margin: EdgeInsets.only(top: 13),
                child: Center(
                  child: Text('Find us',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                ),
              )
              ,Container(
                child:Row(
                  children: [
                    Container(
                      child:Image.asset('assets/Asset 5.png',width: 70,height: 70,)
                          ,margin: EdgeInsets.only(left: 20,right: 53),
                    )
                    ,IconButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>workzonemap()));
                      },
                      icon: Icon(Icons.location_pin,size: 50,),
                      color: Colors.red,
                    ),
                  ],
                )
              )
            ],
          )
        )
    );
  }
}