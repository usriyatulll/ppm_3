import 'package:flutter/material.dart';
import 'package:ppm_3/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var namauser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showInput(_usernameController, "Username", false, "person"),
            const SizedBox(
              height: 16,
            ),
            _showInput(_passwordController, "Password", true, "password"),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  if (_usernameController.text == 'admin' &&
                      _passwordController.text == 'admin') {
                    _saveUsername();
                    _showDialog('Anda Berhasil Login', const HomePage());
                  } else {
                    _showDialog(
                        'Username dan Password Salah', const LoginPage());
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(6, 20, 6, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _saveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', _usernameController.text);
  }

  _showInput(TextEditingController namacontroller, String Placeholder,
      bool isPassword, String icon) {
    IconData iconUsed = icon == 'person' ? Icons.person : Icons.password;
    return TextField(
      controller: namacontroller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: Placeholder,
        prefixIcon: Icon(iconUsed),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
      ),
    );
  }

  _showDialog(pesan, alamat) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(pesan),
        actions: <Widget>[
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => alamat,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
