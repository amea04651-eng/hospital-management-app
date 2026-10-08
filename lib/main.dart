import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/hospital_mark.png', width: 35, height: 35),
              SizedBox(width: 6),
              Text(
                'Helix',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),

        body: Center(
          heightFactor: 1.1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Patient Registration",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Create your patient account",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 5),
              CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFFBCEFE6),
                child: Icon(Icons.person_outline),
              ),
              SizedBox(height: 6),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00A889),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                ),
                child: const Text('Add Photo'),
              ),
              SizedBox(height: 2),
              Container(
                padding: const EdgeInsetsGeometry.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.lightBlue),
                    hintText: "Full name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFB9E3F5),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0xFF0088CC)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Container(
                padding: const EdgeInsetsGeometry.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.lightBlue),
                    hintText: "Email Address",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFB9E3F5),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0xFF0088CC)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Container(
                padding: const EdgeInsetsGeometry.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.lightBlue),
                    hintText: "UAE Mobile Number",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFB9E3F5),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0xFF0088CC)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Container(
                padding: const EdgeInsetsGeometry.all(15),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.calendar_month,
                      color: Colors.lightBlue,
                    ),
                    hintText: "The doctor's ID",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFB9E3F5),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0xFF0088CC)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Container(
                padding: const EdgeInsetsGeometry.all(15),
                child: TextFormField(
                  obscureText: isPasswordHidden,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock_clock_outlined,
                      color: Colors.lightBlue,
                    ),
                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: (){setState(() {
                      isPasswordHidden=!isPasswordHidden;
                    });},
                      icon: Icon(isPasswordHidden?Icons.visibility_off:Icons.visibility,color: Colors.lightBlue),),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Color(0xFFB9E3F5),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Color(0xFF0088CC)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 345,
                height: 54,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF078ACB),
                        Color(0xFF00B58F),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.arrow_forward,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
