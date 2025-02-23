import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var email = TextEditingController();
  var password = TextEditingController();
  bool securepass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/file 1.png")),
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome!",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "to",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "UIPtv",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFF3440),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter Your Email",
                suffixIcon: const Icon(Icons.email),
                hintStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              controller: password,
              obscureText: securepass,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Your Password",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      securepass = !securepass;
                    });
                  },
                  icon:
                      securepass == true
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                ),
                hintStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFF3440),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Forgot Password",
              style: TextStyle(fontSize: 14, color: Color(0xffFF3440)),
            ),
          ],
        ),
      ),
    );
  }
}
