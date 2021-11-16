import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controllers/sign_controller.dart';
import '/screen/widgets/background.dart';
import '/screen/widgets/password_field.dart';
import '/utils/colors.dart';
import '/utils/route_name.dart';

import 'widgets/text_field.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  SignController _signInController = Get.put(SignController());
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
                      width: 150,
                      height: 100,
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
                          SizedBox(
                            height: 20,
                          ),
                          CustomTextField(hint: "Email Address",prefix: Icons.alternate_email,controller: _signInController.email,isEmail: true,),
                          SizedBox(
                            height: 20,
                          ),
                         /////
                          Obx(()=> PasswordField(hint: "Password", prefix: Icons.lock,
                              controller: _signInController.password, isObscure: _signInController.isObscure,
                              funtion:_signInController.isObscureFun),),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: ElevatedButton(
                               style:ElevatedButton.styleFrom(
                                padding: const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                               primary: MyColor.backgroud_secondary_color
                              ),
                              onPressed: ()=> _signInController.signIn(email: _signInController.email.text, password:_signInController.password.text),
                              child: Container(
                                padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 6),
                                child: Text("Sign In"),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton(onPressed: ()=> Get.toNamed(RouteName.SignUpRoute), child: Text("Create an Account?",style: TextStyle(
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
