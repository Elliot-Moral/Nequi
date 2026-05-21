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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // --- FILA SUPERIOR (Clave dinámica y Ayuda) ---
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
                    child: Row(
                      children: const [
                        Icon(Icons.circle, color: Colors.white, size: 30),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Clave dinámica', style: TextStyle(color: Colors.white, fontSize: 13, height: 1.0)),
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
                      Icon(Icons.help_outline, color: Colors.white, size: 25),
                      SizedBox(width: 5),
                      Text('Ayuda', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // --- LOGO ---
            SizedBox(
              width: 245, // Reducido un poco para dar mejor aire en pantallas chicas
              height: 245,
              child: Image.asset('lib/image/nequi_logo_w.png'),
            ),

            const SizedBox(height: 25),

            // --- SECCIÓN DE FORMULARIO Y BOTONES ---
            // Eliminamos el Container con height: 50 para que no corte los elementos
            Column(
              children: [
                // Input de celular
                Container(
                  width: 360,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4D334E),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('+57', style: TextStyle(color: Color(0xFFD9B5D1), fontSize: 16)),
                      ),
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.white,
                          keyboardType: TextInputType.phone, // Optimiza para números
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                          decoration: const InputDecoration(
                            hintText: 'Ingresa Tu Cel',
                            hintStyle: TextStyle(color: Colors.white54),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 15),

                // Botón Entra y Signo Pesos
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDB0082),
                        minimumSize: const Size(297, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () {},
                      child: const Text("Entra", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFFDB0082),
                      ),
                      width: 50,
                      height: 50,
                      child: const Icon(Icons.attach_money, color: Colors.white, size: 30),
                    ),
                  ],
                ),
              ],
            ),

            // --- TEXTO INFERIOR ---
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Envía los elementos a los extremos
            children: [
              // Lado izquierdo: Icono de celular + Texto
              Row(
                children: const [
                  Icon(Icons.phone_android, color: Colors.white, size: 24), // Icono de celular
                  SizedBox(width: 8), // Espacio entre icono y texto
                  Text(
                    '¿Cambiaste tu cel?', 
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              
              // Lado derecho: Texto "by" + Logo circular estilizado
              Row(
                children: [
                  const Text(
                    'by ', 
                    style: TextStyle(color: Colors.white54, fontSize: 14), // Texto "by" más tenue
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white24, // Fondo circular semitransparente
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.blur_on_sharp, // Icono aproximado al logo de Bancolombia
                      color: Colors.white, 
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          )
          ],
        ),
      ),
    );
  }
}