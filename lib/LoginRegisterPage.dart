import 'package:blog/Authentication.dart';
import 'package:blog/DialogBox.dart';
import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {

  LoginRegisterPage
      ({
    this.auth,
    this.onSignedIn

});
  final AuthImplementation auth;
  final VoidCallback onSignedIn;


  @override
  _LoginRegisterState createState() => _LoginRegisterState();


}

enum FormType{
  login,
  register
}

class _LoginRegisterState extends State<LoginRegisterPage> {

  DialogBox dialogBox = DialogBox();

  final formKey = GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = "";
  String _password = "";

  bool validateAndSave(){
    final form = formKey.currentState;

    if(form.validate())
      {
        form.save();
        return true;
      }
    else
      {
        return false;
      }

  }
  void validateAndSubmit() async{

    if(validateAndSave()){
      try{
        if(_formType == FormType.login)
          {
            String userId = await widget.auth.SignIn(_email, _password);
            //dialogBox.information(context, "Congratulations", "You are logged in successfully");

            print("login userId = " + userId);

          }
        else
          {
            String userId = await widget.auth.SignUp(_email, _password);
            //dialogBox.information(context, "Congratulations", "Your Account has been created successfully");
            print("Register userId = " + userId);

          }
        widget.onSignedIn();

      }catch(e){
        dialogBox.information(context, "Error", e.toString());
        print("Error = " + e.toString());

      }
    }

  }

  void moveToRegister(){
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });

  }


  void moveToLogin(){
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Blog App"),
      ),

      body:ListView(
        children: <Widget>[


          Container(
            margin: EdgeInsets.all(15.0),
            child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: createInputs() + createButtons(),

                )
            ),
          ),

        ],
      )

    );
  }

  List<Widget> createInputs(){
    return [
      SizedBox(height: 10.0,),
      logo(),
      SizedBox(height: 20.0,),

      TextFormField(
        decoration: InputDecoration(labelText: 'Email'),

        validator: (value)
        {
          return value.isEmpty ? 'Email is Required.' : null;
        },
        onSaved: (value)
        {
          return _email = value;
        },
      ),

    SizedBox(height: 10.0,),

      TextFormField(
        decoration: InputDecoration(labelText: 'Password'),
        obscureText: true,

        validator: (value)
        {
          return value.isEmpty ? 'Password is Required.' : null;
        },
        onSaved: (value)
        {
          return _password = value;
        },
      ),

    SizedBox(height: 20.0,),


    ];
  }
  Widget logo(){
    return Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 110.0,
        child: Image.asset('images/campusconnect.jpg'),
      ),
    );
  }

  List<Widget> createButtons(){
    if(_formType == FormType.login){
      return [

        RaisedButton(
          child: Text("Login", style: TextStyle(fontSize: 20.0),),
          textColor: Colors.white,
          color: Colors.pink,
          onPressed: validateAndSubmit,
        ),

        FlatButton(
          child: Text("Not have an Account? Create an account", style: TextStyle(fontSize: 14.0),),
          textColor: Colors.red,
          onPressed: moveToRegister,
        ),


      ];
    }else{
      return [

        RaisedButton(
          child: Text("Create Account", style: TextStyle(fontSize: 20.0),),
          textColor: Colors.white,
          color: Colors.pink,
          onPressed: validateAndSubmit,
        ),

        FlatButton(
          child: Text("Not have an Account? Create an account", style: TextStyle(fontSize: 14.0),),
          textColor: Colors.red,
          onPressed: moveToLogin,
        ),


      ];
    }

  }


}

