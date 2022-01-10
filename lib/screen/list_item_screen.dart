import 'package:dating/model/super_likes.dart';
import 'package:flutter/material.dart';



class ListItemScreen extends StatefulWidget {
  @override
  State<ListItemScreen> createState() => _ListItemScreenState();
}

class _ListItemScreenState extends State<ListItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            print("arrow_back");
          },
        ),
        actions: [
          TextButton(
              onPressed: (){
                print("Select");
              },
              child: Text("Select",style: TextStyle(
                color: Colors.red,
                fontSize: 18
              ),)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text("Super Liked Me",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 30,),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20.0),
              child: TextFormField(
                decoration:  InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1
                    ),
                  ),
                  prefixIcon: Icon(Icons.search)
                ),
                onChanged: (value){
                  print(value);
                },
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Super likes",
                      style: TextStyle(
                      fontSize: 15
                    ),),
                    SizedBox(width: 20,),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Text("5",style: TextStyle(
                        color: Colors.white
                      ),)),
                    ),
                  ],
                ),
                // Spacer(),
                Text("1h")
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: superLikes.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius:25,
                              backgroundImage:
                              NetworkImage(superLikes[index].imageUrl),
                            )     ,
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(superLikes[index].name,style: TextStyle(
                                  fontSize: 18
                                ),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on),
                                    Text("${superLikes[index].killo}"),
                                    Text(" Kilometers")
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.circle,color: superLikes[index].online?
                                    Colors.green:Colors.grey
                                      ,),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                        superLikes[index].online?"Online"
                                            :"Offline",style: TextStyle(
                                      color: superLikes[index].online?
                                      Colors.green:Colors.grey
                                    ),)
                                  ],
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                    onPressed: (){
                                      setState(() {
                                        superLikes[index].favorite = !superLikes[index].favorite;
                                      });

                                }, icon: Icon(superLikes[index].favorite?
                                Icons.star:Icons.star_border,color: Colors.blue,)
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}





