import 'package:facebook/widget/custom_button_list_view.dart';
import 'package:facebook/widget/title_widget.dart';
import 'package:facebook/widget/tow_button.dart';
import 'package:facebook/widget/write_something_widget.dart';
import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
   GroupScreen({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  List title = [
    "Reels",
    "You",
    "Chats",
    "Guides"
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Icon(Icons.arrow_back),
          // leading: Row(
          //   children: [

          //   ],
          // ),
          actions: const [
            Icon(Icons.search),
            SizedBox(
              width: 18,
            ),
            Icon(Icons.replay),
            SizedBox(
              width: 18,
            ),
            Icon(Icons.menu),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration( 
                  image: DecorationImage(image: NetworkImage('https://scontent.fcai20-3.fna.fbcdn.net/v/t1.6435-9/32148546_1022520997912523_2089016868084908032_n.jpg?stp=dst-jpg_p640x640&_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=0vDbEYHSaqMQ7kNvgGqaRaE&_nc_ht=scontent.fcai20-3.fna&oh=00_AfAOtjLmfl61sTHyvFHHn17o4_pKigVNoDVgVoq-rEYinQ&oe=6660141E'), fit: BoxFit.cover)
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                color: Colors.lightBlue,
                child: const Text(
                  "Group by Egyptian Google Flutter Community",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    TitleWidget(),
                    const SizedBox(
                      height: 16,
                    ),
                    TowButton(),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: title.length,
                        itemBuilder: (context, index) {
                          return CustombuttonListView(text: title[index], isOnlyText: title[index] == "You",);
                        },
                      ) 
                    ),
                    const SizedBox(height: 20,),
                    // Container(
                    //   height: 15,width: double.infinity,
                    //   color: Colors.blue[100],
                    // ),
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        // boxShadow: [
                          // BoxShadow(color: Color)
                        // ]
                      ),
                      child: const Row(
                        children: [
                          Text("Featured", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Icon(Icons.error_outline, size: 25, color: Colors.grey,),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_down_outlined, size: 25, color: Colors.grey,),
                        ],
                      ),
                    ),
                    WriteSomethingWidget()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}