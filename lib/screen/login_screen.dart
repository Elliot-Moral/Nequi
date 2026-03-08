import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 0, 34),
      body: Padding(
          padding: const EdgeInsets.only(
            top: 40,    // Arriba
            left: 20,   // Izquierda
            right: 20,  // Derecha
            bottom: 20, // Abajo
          ),
          
          child: Column(    

            children: [
            
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF4D334E),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: const Row(
                        // le doy color de fondo
                        children:  [
                          Icon(Icons.circle, color: Colors.white, size: 30,),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Clave dinámica', style: TextStyle(color: Colors.white, fontSize: 13,height: 1.0,)),
                              Text('015683', style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.copy_sharp, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF4D334E),
                    ),
                    width: 100,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.help_outline, color: Colors.white, size: 25,),
                        SizedBox(width: 5),
                        Text('Ayuda', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
          
              const SizedBox(height: 30),
          
              SizedBox(
                width: 250, // Ancho fijo
                height: 250, // Alto fijo
                // color: Colors.yellow,
                child: Image.asset('lib/image/nequi_logo_w.png'),
              ),
          
              const SizedBox(height: 20), 
            
              Container(
                width: 300,
                height: 50,
                color: const Color(0xFF4D334E),
                child: Row(children: [
                  Text('+57', style: TextStyle(color: Colors.white, fontSize: 16)),
                  Expanded(
                    child: TextField(
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: 'Ingresa Tu Cel',
                        hintStyle: const TextStyle(color: Colors.white),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],)
              ),
          
              const SizedBox(height: 20), 

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDB0082),
                      minimumSize: const Size(290, 50), // Ancho y alto fijo
                      // quitar el borde redondeado
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {
                    },
                    child: const Text("Entra", style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 5), 
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFDB0082),
                    ),
                    width: 50,
                    height: 50,
                    child: const Icon(Icons.attach_money, color: Colors.white, size: 30,),
                  ),
                ],
              ),
              
              
            ],
          ),
        ),
    );
  }
}