import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUELE0X1tnZO3hgntnQB5q2cAF_zqQV73KNp_F7KcJKB5hc-yY80mn49K6FSBzjtTOXnY&usqp=CAU",
                    width: 150,
                    height: 150,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "이메일",
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "비밀번호",
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("로그인"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
