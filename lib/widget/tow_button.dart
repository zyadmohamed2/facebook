
import 'package:facebook/widget/custom_button.dart';
import 'package:flutter/material.dart';

class TowButton extends StatelessWidget {
  const TowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                      children: [
                        Flexible(
                          child: CustomButton( 
                            color: Colors.grey.shade300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person_add_alt_1, color: Colors.black,),
                                SizedBox(width: 5,),
                                Text("Joined", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),),
                                SizedBox(width: 5,),
                                Icon(Icons.arrow_drop_down, color: Colors.black,),
                                
                              ],
                            ),
                          )
                        ),
                        const SizedBox(
                          width: 15, 
                        ),
                        Flexible(
                          child: CustomButton( 
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.person_add_alt_1, color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text("Invite", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),)
                                ],
                              ),
                          )
                        )
                      ],
                    );
  }
}
