
import 'package:flutter/material.dart';

class WriteSomethingWidget extends StatelessWidget {
  const WriteSomethingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: NetworkImage("https://scontent.fcai20-6.fna.fbcdn.net/v/t1.6435-1/186018092_3877173289066681_8148499429368816342_n.jpg?stp=dst-jpg_p200x200&_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=L3Nw126oDW8Q7kNvgFcCBlh&_nc_ht=scontent.fcai20-6.fna&oh=00_AfAGfPByRnWrkxf1Wx5DVRMmEy3E0aTnMoJD-B3m-XkWeQ&oe=665FF6EC"), fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(width: 15,),
                        Flexible(
                          flex: 10 ,
                          child: TextField(
                            decoration: InputDecoration(
                              
                              label: const Text("Write something...", style: TextStyle(fontWeight: FontWeight.w600,  fontSize: 20, color: Colors.grey),),
                              constraints: const BoxConstraints(
                                maxHeight: 40,
                              ),
                              focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(15), gapPadding: 0),
                              border: OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(15), gapPadding: 0),
                              enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(15), gapPadding: 0),
                              disabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey), borderRadius: BorderRadius.circular(15), gapPadding: 0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        const Flexible(
                          child: Icon(Icons.image),
                        )
                      ],
                    );
  }
}