import 'package:ecommerce_app/Views/SignIn_page.dart';
import 'package:flutter/material.dart';

class SignUp_page extends StatefulWidget {
  const SignUp_page({Key? key}) : super(key: key);

  @override
  State<SignUp_page> createState() => _SignUp_pageState();
}

class _SignUp_pageState extends State<SignUp_page> {

  final formKey = GlobalKey<FormState>();
  final email_controller = TextEditingController();
  final password_controller  = TextEditingController();
  final confirm_passwod_Controller = TextEditingController();
  final fullName_Controller = TextEditingController();
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
                        controller: fullName_Controller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_rounded,size: 30,color: Colors.grey,),
                          hintText: "Full name",
                          border: InputBorder.none,
                        ),
                        validator: (value){
                          if (fullName_Controller.text.isEmpty) {
                            return "name";
                          }
                        },
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        controller: email_controller,
                        obscureText: false,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined,size: 30,color: Colors.grey,),
                          hintText: "Email",
                          border: InputBorder.none,

                        ),
                        validator: (value){
                          if (email_controller.text.isEmpty) {
                            return "emai";
                          }
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: password_controller,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded,size: 30,color: Colors.grey,),
                          hintText: "Password",
                          border: InputBorder.none,

                        ),
                        validator: (value){
                          if (password_controller.text.isEmpty) {
                            return "password";
                          }
                        },
                      ),
                      const SizedBox(height: 12,),
                      TextFormField(
                        controller: confirm_passwod_Controller,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline_rounded,size: 30,color: Colors.grey,),
                          hintText: "Confirm Password",
                          border: InputBorder.none,

                        ),
                        validator: (value){
                          if (confirm_passwod_Controller.text.isEmpty) {
                            return "password";
                          }
                        },
                      ),
                      const SizedBox(height: 32,),

                      Row(
                        children: [
                          Expanded(child: ElevatedButton(onPressed: (){
                            if (formKey.currentState!.validate()) {
                              
                            }
                          }, child: const Text("Sign Up"))),
                        ],
                      ),
                      const SizedBox(height: 22,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Already have an account",style:  TextStyle(
                            color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold,
                          ),),
                          const SizedBox(height: 12,),

                          TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignIn_page()));
                          }, child: const Text("Sign In", style:  TextStyle(
                            color: Colors.indigo, fontSize: 15, fontWeight: FontWeight.bold,
                          ),))
                        ],
                      ),

                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}


