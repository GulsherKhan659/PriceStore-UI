import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/sign_controller.dart';
import '/screen/widgets/background.dart';
import '/screen/widgets/password_field.dart';
import '/utils/colors.dart';
import '/utils/route_name.dart';

import 'widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  SignController _signUpController = Get.put(SignController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: IconButton(icon: Icon(Icons.chevron_left_rounded),onPressed:()=> Get.back(),),
        backgroundColor: MyColor.backgroud_primary_color,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Container(

          height:MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width,
          child: AppBg(
            child: Column(
              children: [
                // Expanded(
                //   flex: 1,
                //   child: Container(),
                // ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: Container(
                      width: 110,
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/logo.png")),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Center(
                    child: Container(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal:40),
                        child: Column(children: [

                          CustomTextField(hint: "Name",prefix: Icons.person_rounded,controller:_signUpController.form_name,isText: true,),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextField(hint: "Email Address",prefix: Icons.alternate_email,controller: _signUpController.email,isEmail: true,),
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextField(hint: "Phone Number",prefix: Icons.phone_android,controller: _signUpController.form_number,isText: false,),
                          SizedBox(
                            height: 20,
                          ),
                          /////
                          Obx(()=> PasswordField(hint: "Password", prefix: Icons.lock,
                              controller: _signUpController.password, isObscure: _signUpController.isObscure,
                              funtion:_signUpController.isObscureFun),),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: ElevatedButton(
                              style:ElevatedButton.styleFrom(
                                  padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                  primary: MyColor.backgroud_secondary_color
                              ),
                              onPressed: ()=>
                                _signUpController.signUp(email: _signUpController.email.text, password: _signUpController.password.text,
                                    phone: _signUpController.form_number.text, name:_signUpController.form_name.text),
                              child: Container(
                                padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                                child: Text("Sign Up"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton(onPressed: ()=> Get.toNamed(RouteName.SignInRoute), child: Text("Already Have Account?",style: TextStyle(
                              fontSize: 15,
                              color: MyColor.font_color
                          ),))
                        ],),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                //  Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
