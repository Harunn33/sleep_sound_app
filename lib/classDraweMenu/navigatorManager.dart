import 'package:flutter/material.dart';
import 'package:sleep_soundss/baseClass.dart';

Widget SayfalariGetir(BuildContext cont, BaseClass base){
     return base ;
}  


 

class NavigaterManager extends StatefulWidget {
  
  String iconName;
  String fileName;
  BaseClass file;

  NavigaterManager(
    {Key? key,required this.iconName, required this.fileName,required this.file}
  ): super(key: key);



  @override
  State<NavigaterManager> createState() => _NavigaterManagerState();
}

class _NavigaterManagerState extends State<NavigaterManager> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          ImageIcon(
            AssetImage(widget.fileName),
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(
            width: 25,
          ),
          TextButton(
            onPressed: () {
              Navigator.push( context,
            MaterialPageRoute(
              builder: (context) {
               return SayfalariGetir(context,widget.file ) ;
              },
            ));
              
             
            },
            child: Text(
              widget.iconName,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}