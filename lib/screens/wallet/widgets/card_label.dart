import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardLabels extends StatelessWidget {
  final String data;
  //final String dataType;
  final IconData icon;
  final Color color;
  const CardLabels({
    super.key,
    required this.data,
    required this.icon,
    required this.color,
   // required this.dataType,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
         Expanded(
           child: RichText(
            text: TextSpan(
               // text: "$dataType: ",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                children: [
                 
                  TextSpan(
                    text: data,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ]),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
                   ),
         ),
         
      ],
    );
  }
}
