import 'package:flutter/material.dart';

class ItemMessage extends StatelessWidget {
  final bool isSender;
  final String msg;
   ItemMessage({Key? key, required this.isSender, required this.msg}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Align(


      alignment: isSender? Alignment.centerRight: Alignment.centerLeft,
      child: Container(
        padding:   EdgeInsets.all(10),
        margin:   EdgeInsets.symmetric(vertical: 10),
        constraints:   BoxConstraints(
            maxWidth: 250
        ),
        decoration: BoxDecoration(
            color: isSender? Theme.of(context).primaryColor.withOpacity(.2): Colors.grey.shade200,
            borderRadius: isSender?   BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15)
            ):   BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(msg,
                style:   TextStyle(height: 1.5)),
              SizedBox(height: 5),
            Align(
                alignment: Alignment.bottomRight,
                child: Text('12:30 PM', style: Theme.of(context).textTheme.bodySmall)
            )
          ],
        ),
      ),
    );
  }
}