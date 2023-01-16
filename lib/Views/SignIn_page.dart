import 'package:ecommerce_app/Views/All_categories_page.dart';
import 'package:ecommerce_app/Views/SignUp_page.dart';
import 'package:flutter/material.dart';

class SignIn_page extends StatefulWidget {
  const SignIn_page({Key? key}) : super(key: key);

  @override
  State<SignIn_page> createState() => _SignIn_pageState();
}

class _SignIn_pageState extends State<SignIn_page> {

  final formKey = GlobalKey<FormState>();
 final email_controller = TextEditingController();
 final password_controller  = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 12.0),
                  child: Column(
              children: [
                  TextFormField(
                    controller: email_controller,
                    decoration: const InputDecoration(
                       prefixIcon: Icon(Icons.email_outlined,size: 30,color: Colors.grey,),
                      hintText: "Email",
                      border: InputBorder.none,

                    ),
                  ),
                  const SizedBox(height: 12,),
                  TextFormField(
                  controller: password_controller,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline_rounded,size: 30,color: Colors.grey,),
                    hintText: "Password",
                    border: InputBorder.none,

                  ),
                ),
                const SizedBox(height: 32,),

                Row(
                  children: [
                    Expanded(child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const All_categories_page()));
                    }, child: const Text("Sign In"))),
                  ],
                ),
                const SizedBox(height: 22,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Create  an account",style:  TextStyle(
                      color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold,
                    ),),
                    const SizedBox(height: 12,),

                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  SignUp_page()));
                    }, child: const Text("Create Account", style:  TextStyle(
                      color: Colors.indigo, fontSize: 15, fontWeight: FontWeight.bold,
                    ),))
                  ],
                ),
                const SizedBox(height: 62,),

                Center(
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 10,left: 20),
                      height: 55,width: 250,
                      decoration: BoxDecoration(
                        color: const Color(0xffb4b4b4),
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.3),
                            blurRadius: 2
                          )
                        ]
                      ),
                      child: const Text("Register with phone number" ,style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                )

              ],
            ),
                ))
          ],
        ),
      ),
    );
  }
}


