import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List usernames=[
  'Ahmed','Abdallah','Ali',
  'Mariam','Marwa','Mahmoud','Mohamed',
  'Zeyad','Zakaria',
  'Basel','Basma',
  'Carolina','Carlos'
  'Karma','Kareem','Kamel',
  'Gamal','Gana','Gehan'
  'Rawan','Ramy',
  'Dina','Dembele',
  'Walaa','Waleed',
];

List? filterusernames;


List Houses=[
  {'image':'images/forsale.jpeg','name':'Gorgious Villa #1542','price':'430k\$','description':'4Rooms-2Baths-kitchen-2livingRoom','adrress':'23 albaqurke st'},
  {'image':'images/forsale2.jpeg','name':'big sale villa #1278','price':'380k\$','description':'4Rooms-2Baths-kitchen-huge livingRoom','adrress':'45 saint monika '},
  {'image':'images/forsale3.jpeg','name':'amazing opportunity villa #579','price':'400k\$','description':'4Rooms-2Baths-kitchen-2livingRoom','adrress':'77 california'},
  {'image':'images/forsale4.jpeg','name':'Huge Villa #1798','price':'550\$','description':'5Rooms-2Baths-2kitchen-2livingRoom','adrress':'7 negro lane minisota'},
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey.shade200,
          child: ListView(
            children: [
              Container(height: 40,),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text("find a Thousand Homes",style: TextStyle(fontSize: 24,color: Colors.grey.shade500),),
                ),
                Container(
                margin: EdgeInsets.only(left: 10),
                child: Text("For Sell & Rent",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Container(height: 15,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                            showSearch(context: context, delegate: CustomSearch());
                        },
                        child: Container(
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                        width: 230,
                        height: 40,
                        child: Row(
                          children: [
                            Builder(
                              builder: (context) {
                                return Row(
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 25,color: Colors.grey,)),
                                      Container(
                                        margin: EdgeInsets.only(left: 7),
                                        child:Text('Search',style: TextStyle(fontSize: 20,color: Colors.grey),) ,
                                      ),
                                  ],
                                );
                              }
                            ),
                          ],
                        ),
                        ),
                      ),
                       InkWell(
                        onTap: () {},
                         child: Container(
                          decoration: BoxDecoration(color: Color.fromARGB(255, 0, 112, 204),borderRadius: BorderRadius.circular(15)),
                                      width: 120,
                                      height: 40,
                                      child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.tune)),
                            Container(child: Text('Filters',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.white),),),
                          ],
                          ),
                         ),
                       ),
                    ],
                  ),
                ),
                 Container(height: 30 ,),
                       Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 170,
                              height: 52,
                              decoration:BoxDecoration(border: Border.all(color: Color.fromARGB(255, 241, 145, 0),width: 3),borderRadius: BorderRadius.circular(15)),
                              child: Center(child: Text('For Sell',style: TextStyle(fontSize: 17,color: Colors.orange),),),
                            ),
                            Container(
                              width: 170,
                              height: 52,
                              decoration:BoxDecoration(border: Border.all(color: Color.fromARGB(255, 241, 145, 0),width: 3),borderRadius: BorderRadius.circular(15)),
                              child: Center(child: Text('For Rent',style: TextStyle(fontSize: 17,color: Colors.orange),),),
                            ),
                          ],
                        ),
                       ),
                       Container(height: 5,),
                       Container(
                        child: ListTile(
                          leading: Text('New Proprites',style: TextStyle(fontSize: 22,color: Colors.grey.shade800),),
                          trailing: Text('View All',style: TextStyle(fontSize: 16,color: Colors.grey),),
                        ),
                       ),
                       Container(height: 12,),
                     Container(
              height: 5000,
              width: 55,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Houses.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:10,left: 12,right: 12),
                          height: 180,
                          width: 368,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(Houses[index]['image'], fit: BoxFit.cover,),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12,vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(Houses[index]['name'], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400, color: Colors.black),),
                              Text(Houses[index]['price'], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500, color: Colors.grey),),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                              child: Text(Houses[index]['description'],style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade600),),
                            ),
                          ],
                        ),
                        Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined,color: Colors.orange.shade300,)),
                                Container(
                                  child:Text(Houses[index]['adrress'],style: TextStyle(fontSize: 15,color: Colors.grey.shade600),) ,
                                ),
                              ],
                            )
                      ],
                    );
                  }
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}


class CustomSearch extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[ IconButton(onPressed: (){
      query="";
    }, icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("result $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
  if (query == ""){
    return ListView.builder(
      itemCount: usernames.length,
      itemBuilder: (context,index){
        return InkWell(
          onTap: () {
            showResults(context);
          },
          child: Card(
            child: Padding(padding: const EdgeInsets.all(17),
              child: Text(usernames[index],style: TextStyle(fontSize: 17,color: Colors.black),),
            ),
          ),
        );
      });
  }
  else{
    filterusernames=usernames.where((element) => element.contains(query)).toList();
    return ListView.builder(
      itemCount: filterusernames!.length,
      itemBuilder: (context,index){
        return InkWell(
          onTap: () {
            showResults(context);
          },
          child: Card(
            child: Padding(padding: const EdgeInsets.all(17),
              child: Text(filterusernames![index],style: TextStyle(fontSize: 17,color: Colors.black),),
            ),
          ),
        );
      });
  }
  }

}