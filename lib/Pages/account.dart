import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Padding(
                padding: EdgeInsets.only(top: 70, left: 100, right: 70),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 150,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://assets.stickpng.com/thumbs/585e4beacb11b227491c3399.png'),
                      ),
                    ),
                    Text(
                      'Shibin',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 270),
            child: Text(
              'MEMBERSHIP',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 15,
              ),
            ),
          ),
          Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.zero,
              color: Colors.grey[800],
            ),
            child: Column(
              children:  [
                const Padding(
                  padding:  EdgeInsets.only(top: 10.0,right: 100),
                  child: Text('Netflix Subscription 399/- Month', style: TextStyle(
                    color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold
                  ),),
                ),
                const Padding(padding: EdgeInsets.only(right: 100,left: 10, top: 2),
                child:  Text('Subscription Valid Till: 19 Jun 2023', style: TextStyle(
                      color: Colors.black87,fontSize: 15,fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 5,),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(onPressed: (){},
                    child: Text('Upgrade Plan '),
                    style: ElevatedButton.styleFrom(
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text('ACCOUNT AND SECURITY', style: TextStyle(
              color: Colors.grey[800],
            ),),
          ),
          Padding(padding: EdgeInsets.only(right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.grey[800],
                  elevation: 50,
                  child: const SizedBox(
                  width: 400,
                    height: 35,
                    child:Padding(
                      padding: EdgeInsets.only(left: 15,top: 5),
                      child: Text(
                      'Account Settings',
                      style:TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                        fontSize: 15,
                      )
                        ,),
                    ),
                  ),
                ),
                Card(
                  color: Colors.grey[800],
                  elevation: 50,
                  child: const SizedBox(
                    width: 400,
                    height: 35,
                    child:Padding(
                      padding: EdgeInsets.only(left: 15,top: 5),
                      child: Text(
                        'Manage Device',
                        style:TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        )
                        ,),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Card(
                      color: Colors.grey[800],
                      elevation: 50,
                      child: Column(

                        children:  [
                          Card(
                            color: Colors.grey[800],
                            elevation: 50,
                            child: const SizedBox(
                              width: 400,
                              height: 35,
                              child:Padding(
                                padding: EdgeInsets.only(left: 15,top: 5),
                                child: Text(
                                  'Manage Device',
                                  style:TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  )
                                  ,),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 400,
                            height: 35,
                            child:Padding(
                              padding: EdgeInsets.only(left: 15,top: 5),
                              child: Text(
                                'Manage Device',
                                style:TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                )
                                ,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          Padding(padding: EdgeInsets.only(top: 40),
         child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.info,color: Colors.white,),
              SizedBox(width: 5,),
              Text('Need Help? Click Here', style: TextStyle(
                color: Colors.white,
              ),)
            ],
          ),
          ),


        ],
      ),
    );
  }
}
