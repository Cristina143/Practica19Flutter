import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDetailContainer extends StatelessWidget {
  String? sexo;
  String? name;

  MyDetailContainer({this.name, this.sexo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [Color(0xFFFF422C), Color(0xFFFF9003)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.25, 0.90],
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFF101012),
              offset: Offset(-12, 12),
              blurRadius: 8
            )
          ]),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(20),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Nombre',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),),
              SizedBox(height: 15,),
              Center(
                child: Text('$name ',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic
                ),),
              ),
              SizedBox(height: 25,),
              Text('Genero: ',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontStyle: FontStyle.normal
              ),),
              SizedBox(height: 15,),
              Center(
                child: Text('$sexo',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontStyle: FontStyle.italic,
                ),),
              )
            ],
          ),
    );
  }
}