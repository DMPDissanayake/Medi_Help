import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/mainbutton.dart';
import 'package:project_medihelp/Presentation/View/Authentication/sigin_page.dart';
import 'package:project_medihelp/Presentation/View/Home/home_main.dart';
import 'package:project_medihelp/Services/authentication_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //SetAuthentication
  final Auth _auth = Auth();
  //set check box
  bool _rememberMe = false;
  bool _rememberMeError = false;

  // Email validation regex
  final RegExp emailRegex =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  // Password validation regex
  final RegExp passwordRegex =
      RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$");

  //form validation
  final _formKey = GlobalKey<FormState>();
  //form controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Log in",
            style: GoogleFonts.prata(
              textStyle: TextStyle(
                  color: kMainColor, fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_sharp, // Replace with your desired icon
              color: kMainColor, // Use your custom color
            ),
            onPressed: () {
              Navigator.pop(context); // Go back to the previous screen
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: kMainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Welcome to MediHelp! Easily book doctor appointments, access trusted healthcare services, and manage your medical needs—all in one app. Simplify your health journey today!",
                    style: TextStyle(
                        color: kBlack,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                  Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: SafeArea(
                          child: Column(
                            children: [
                              //email
                              SizedBox(height: 40),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[
                                        200], // Background color for the input area
                                    borderRadius: BorderRadius.circular(
                                        30), // Rounded corners
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      controller: _emailController,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Email is required.";
                                        } else if (!emailRegex
                                            .hasMatch(value)) {
                                          return "Enter a valid email address.";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                          color: kMainColor,
                                          fontSize: 18,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.email,
                                          size: 20,
                                          color: kMainColor,
                                        ),
                                        border: InputBorder
                                            .none, // Removes the border
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[
                                        200], // Background color for the input area
                                    borderRadius: BorderRadius.circular(
                                        30), // Rounded corners
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      controller: _passwordController,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Password is required.";
                                        } else if (!passwordRegex
                                            .hasMatch(value)) {
                                          return "Password must be at least 8 characters, include an uppercase letter, a number, and a special character.";
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          true, // Hides the password text
                                      decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                          color: kMainColor,
                                          fontSize: 18,
                                        ),
                                        suffixIcon: Icon(
                                          Icons.visibility_off,
                                          size: 20,
                                          color: kMainColor,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          size: 20,
                                          color: kMainColor,
                                        ),
                                        border: InputBorder
                                            .none, // Removes the border
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Remember Me for the next time",
                                    style: TextStyle(
                                      color: kMainColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Expanded(
                                    child: CheckboxListTile(
                                      activeColor: kMainColor,
                                      value: _rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          _rememberMe = value!;
                                          _rememberMeError = false;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 70),
                                child: GestureDetector(
                                  onTap: () async {
                                    setState(() {
                                      _rememberMeError =
                                          !_rememberMe; // Validate checkbox
                                    });
                                    //chick and submit data

                                    if (_formKey.currentState!.validate() &&
                                        _rememberMe) {
                                      //submit data
                                      String email = _emailController.text;
                                      String password =
                                          _passwordController.text;

                                      //check the submit data
                                      dynamic result = await _auth
                                          .signInWithEmailAndPassword(
                                              email, password);
                                      if (result == null) {
                                        print("Error");
                                      } else {
                                        print("Success");
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeMain()));
                                      }
                                    }
                                  },
                                  child: MainButton(
                                    text: "Log In",
                                    buttonColor: kMainColor,
                                    textColor: kWhirt,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don’t have an account?",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                    ),
                                    strutStyle: StrutStyle(),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SiginPage()));
                                    },
                                    child: Text(
                                      " Sign Up",
                                      style: TextStyle(
                                        color: kMainColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
