
import 'package:flutter/material.dart';

class CustombuttonListView extends StatelessWidget {
  const CustombuttonListView({super.key, required this.text, this.isOnlyText = false});
  final String text;
  final bool isOnlyText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5 ),
                            decoration: BoxDecoration( 
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              children: [
                                isOnlyText?
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: NetworkImage("https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-1/186018092_3877173289066681_8148499429368816342_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=L3Nw126oDW8Q7kNvgFcCBlh&_nc_ht=scontent.fcai20-6.fna&oh=00_AfAGfPByRnWrkxf1Wx5DVRMmEy3E0aTnMoJD-B3m-XkWeQ&oe=665FF6EC"), fit: BoxFit.cover)
                                  ),
                                ):SizedBox.shrink(),
                                const SizedBox(width: 8,),
                                 Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                              ],
                            )
                          );
  }
}
