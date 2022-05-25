import "package:flutter/material.dart";
import "constant.dart";
import "package:carousel_pro/carousel_pro.dart";
import "colors.dart";
void main(){

}
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
        backgroundColor: Color.fromARGB(221, 37, 242, 249),
        body:SingleChildScrollView(
          child:Row(children: [
            Padding(padding: const EdgeInsets.only(top:20,left:20),
            child:Container(
          height: 500,
          width: 500,
          
        child:Carousel(
            
            images: [
              AssetImage("asset/eng.jpg"),
              AssetImage("asset/dream.jpg"),
              AssetImage("asset/home_bg.jpeg"),
              AssetImage("asset/tree.jpeg"),
              ],
          )
          ),),
          Column(children: [
            Container(
            child: Text("LOGIN",style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold)
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [primaryColor.withOpacity(0.4) , primaryColor.withOpacity(0.1)]),
            border: Border(left:BorderSide(color:primaryColor,width:2)),
            )),
             Padding(padding: const EdgeInsets.all(10),
         child:ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 300),
          child: const TextField(
             decoration: InputDecoration(
             prefixIcon: Icon(Icons.email,color:primaryColor),
             labelText:'EMAIL ADDRESS',
             labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:primaryColor)
             
           ),
          ),
        ),
         ),
         Padding( 
           padding:const EdgeInsets.all(10),
           child:ConstrainedBox(constraints: const BoxConstraints.tightFor(width:300),
           child:TextField(
             obscureText: true,
             decoration: InputDecoration(
               focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: primaryColor)),
               
               prefixIcon: Icon(Icons.lock_open,color: primaryColor,),
               labelText:'PASSWORD',
               labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:primaryColor)
             ),

             
           )
           )
         ),
         Align(alignment: Alignment.topRight,
         child:TextButton(onPressed: (){}, child: Text('Forget password?'))),

        
         Center(
           child:OutlinedButton(onPressed: (){},
           style:OutlinedButton.styleFrom(primary:Colors.white,backgroundColor: primaryColor,)
           , child: Text('Login to your account',style:TextStyle(fontSize:20)))
           
          
  ),
   Padding(padding: const EdgeInsets.all(10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [
        Text("Don't have an account?"),
        TextButton(onPressed: (){}, child: Text('Create Account',style:TextStyle(color:Colors.black,backgroundColor:Color.fromARGB(255, 124, 233, 23)))),
      ],
      )
      )
         

           
           
          ],)
          ],
          )

        )
        );
    }
    
  }
