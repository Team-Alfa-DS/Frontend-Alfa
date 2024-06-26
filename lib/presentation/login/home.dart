import 'package:flutter/material.dart';
import 'package:alfa_soyzen/presentation/login/login_page.dart';
import 'package:alfa_soyzen/presentation/login/register.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Fondo blanco
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset(
              "assets/images/Logo.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Welcome to yoga",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                decoration: TextDecoration.none,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0), // Ajusta según tus necesidades
            child: Text(
              "Online class",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                decoration: TextDecoration.none, // Eliminando el subrayado
              ),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre el texto y los botones
          _buildButtonRow(context), // Agrega la fila de botones
          const SizedBox(
              height:
                  20), // Espacio entre los botones y los iconos de redes sociales
          _buildSocialIconsRow(), // Agrega la fila de iconos de redes sociales
        ],
      ),
    );
  }

  Widget _buildButtonRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20), // Ajusta el espaciado horizontal
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildLoginButton(context),
          const SizedBox(width: 10), // Espacio entre los botones
          _buildRegisterButton(context),
        ],
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 20,
        backgroundColor: Colors.deepPurple,
        minimumSize: const Size(120, 40), // Tamaño del botón Login
      ),
      child: const Text("Login", style: TextStyle(color: Colors.white)),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RegisterPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 20,
        backgroundColor: Colors.white,
        minimumSize: const Size(120, 40), // Tamaño del boton Sign Up
      ),
      child: const Text("Sign up", style: TextStyle(color: Colors.deepPurple)),
    );
  }

  Widget _buildSocialIconsRow() {
    return Column(
      children: [
        const SizedBox(
            height:
                20), // Espacio entre el texto y los iconos de redes sociales
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: _buildGreyText("Or via social media"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Lógica para el botón de Facebook
              },
              child: Image.asset(
                'assets/images/facebook.png',
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                // Lógica para el botón de Twitter
              },
              child: Image.asset(
                'assets/images/twitter.png',
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                // Lógica para el botón de Gmail
              },
              child: Image.asset(
                'assets/images/gmail.png',
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.grey,
          fontSize: 14, // Tamaño del texto
          fontFamily: 'Roboto', // Fuente del texto
          decoration: TextDecoration.none),
    );
  }
}
