import 'package:blog/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flip_card/flip_card.dart';


class Developer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flip',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePageDev(),

    );
  }
}




class HomePageDev extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageDev> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer"),
        backgroundColor: Colors.pink,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
        }),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/campuscc.jpeg")
                )
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 400.0,
                    child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Material(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(24.0),
                          shadowColor: Color(0x802196F3).withOpacity(0.2),
                          child: _nameDetailsContainer(),
                        ),
                        back: Material(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(24.0),
                          shadowColor: Color(0x802196F3),
                          child: _socialContainer(),
                        )
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _nameDetailsContainer(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 130.0,
            width: MediaQuery
                .of(context)
                .size
                .width,

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ListTile(

                    leading: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://scontent.fdel1-1.fna.fbcdn.net/v/t1.0-9/41649724_670954356620018_1516743004520448000_n.jpg?_nc_cat=109&_nc_ht=scontent.fdel1-1.fna&oh=8b600279b31ebe5afc0a572068e5d29b&oe=5D676B20"
                              )
                          )
                      ),
                    ),

                    title: Padding(padding: EdgeInsets.only(top: 32.0),
                      child: Text('Mukesh Kumar', style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),) ,
                    ),

                    subtitle: Padding(padding: EdgeInsets.only(top:8.0),
                      child: Text('Software Engineer', style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20.0,
                      ),),
                    ),


                  ),
                ),

              ],
            ),
            decoration: BoxDecoration(
              color: Color(0xffff520d).withOpacity(0.9),
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _detailsContainer(),

          )
        ],
      ),
    );
  }

  Widget _socialContainer(){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 130.0,
            width: MediaQuery
                .of(context)
                .size
                .width,

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: ListTile(
                    leading: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "https://scontent.fdel1-1.fna.fbcdn.net/v/t1.0-9/41649724_670954356620018_1516743004520448000_n.jpg?_nc_cat=109&_nc_ht=scontent.fdel1-1.fna&oh=8b600279b31ebe5afc0a572068e5d29b&oe=5D676B20"
                              )
                          )
                      ),
                    ),

                    title: Padding(padding: EdgeInsets.only(top: 32.0),
                      child: Text('Social Links', style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),) ,
                    ),

                    subtitle: Padding(padding: EdgeInsets.only(top:8.0),
                      child: Text('', style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20.0,
                      ),),
                    ),
                  ),
                )
              ],),

            decoration: BoxDecoration(
              color: Color(0xffff0d41).withOpacity(0.9),
              borderRadius: BorderRadius.circular(24.0),
            ),
          ),
          Container(
            child: _socialDetailsContainer(),

          ),
        ],
      ),
    );
  }


  Widget _detailsContainer(){
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
          child: Text('A forward leader who constantly thinks about the benefits of his students and guides us in this world of Computer Science.',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(child: Icon(FontAwesomeIcons.mapMarkedAlt, color: Color(0xffff520d),),),

                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(child: Text('Uttarakhand, India', style: TextStyle(
                    color: Color(0xffff520d),
                    fontSize: 20.0,
                  ),),),
                )
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0) ,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(child: Icon(FontAwesomeIcons.envelope,color: Color(0xffff520d),),),

                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('mukeshkumar@gmail.com', style: TextStyle(
                      color: Color(0xffff520d),
                      fontSize: 20.0,
                    ),),),
                ),
              ],),
          ),
        ),
//        Padding(
//          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
//          child: Container(
//            child: Row(
//
//            ),
//          ),
//        )


      ],
    );


  }



  Widget _socialDetailsContainer(){
    return Column(
      children: <Widget>[
        SizedBox(width: 10.0,),


        Padding(
          padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Container(child: Icon(FontAwesomeIcons.twitter,color: Color(0xffff0d41),
                  size: 30.0,),),

                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/mukeshkr',style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 24.0,
                    ),),),
                )
              ],),
          ),
        ),


        Padding(
          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(FontAwesomeIcons.github,color: Color(0xffff0d41),
                    size: 30.0,),),

                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/mukeshkumar', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 24.0,
                    ),),),
                )
              ],),
          ),
        ),


        Padding(
          padding: EdgeInsets.only(top: 16.0,left: 8.0,right: 8.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Icon(FontAwesomeIcons.facebook,color: Color(0xffff0d41),
                    size: 30.0,),),

                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Container(
                    child: Text('/Mukesh Kumar Siddhwan', style: TextStyle(
                      color: Color(0xffff0d41),
                      fontSize: 24.0,
                    ),),),
                )
              ],),
          ),
        )


      ],
    );
  }






}

