import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/mainbutton.dart';
import 'package:project_medihelp/Presentation/View/Authentication/login_page.dart';
import 'package:project_medihelp/Presentation/View/Home/home_main.dart';
import 'package:project_medihelp/Services/authentication_services.dart';

class SiginPage extends StatefulWidget {
  const SiginPage({super.key});

  @override
  State<SiginPage> createState() => _SiginPageState();
}

class _SiginPageState extends State<SiginPage> {
  //Authontication
  final Auth _auth = Auth();
  //set check box
  bool _rememberMe = false;
  bool _rememberMeError = false;

  //form validation
  final _formKey = GlobalKey<FormState>();
  //form controller
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _mobileNumberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  // Email validation regex
  final RegExp emailRegex =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  // Password validation regex
  final RegExp passwordRegex =
      RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        //Name
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[
                                200], // Background color for the input area
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: _fullNameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Full name is required.";
                                } else if (value.length < 5) {
                                  return "Full name must be at least 3 characters.";
                                } else if (RegExp(r'[0-9]').hasMatch(value)) {
                                  return "Full name should not contain numbers.";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "Full Name",
                                hintStyle: TextStyle(
                                  color: kMainColor,
                                  fontSize: 18,
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  size: 20,
                                  color: kMainColor,
                                ),
                                border: InputBorder.none, // Removes the border
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Mobile number
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[
                                200], // Background color for the input area
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller:
                                  _mobileNumberController, // Attach the controller here
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Mobile number is required.";
                                } else if (value.length != 10) {
                                  return "Mobile number must be exactly 10 digits.";
                                } else if (!RegExp(r'^[0-9]+$')
                                    .hasMatch(value)) {
                                  return "Mobile number should contain only numbers.";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: "Mobile Number",
                                hintStyle: TextStyle(
                                  color: kMainColor,
                                  fontSize: 18,
                                ),
                                prefixIcon: Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: kMainColor,
                                ),
                                border: InputBorder.none, // Removes the border
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Email
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[
                                200], // Background color for the input area
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: _emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Email is required.";
                                } else if (!emailRegex.hasMatch(value)) {
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
                                border: InputBorder.none, // Removes the border
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[
                                200], // Background color for the input area
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: _passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Password is required.";
                                } else if (!passwordRegex.hasMatch(value)) {
                                  return "Password must be at least 8 characters, include an uppercase letter, a number, and a special character.";
                                }
                                return null;
                              },
                              obscureText: true, // Hides the password text
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
                                border: InputBorder.none, // Removes the border
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //Confirm Password
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[
                                200], // Background color for the input area
                            borderRadius:
                                BorderRadius.circular(30), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                              controller: _confirmPasswordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Confirm password is required.";
                                } else if (value != _passwordController.text) {
                                  return "Passwords do not match.";
                                }
                                return null;
                              },
                              obscureText: true, // Hides the password text
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
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
                                border: InputBorder.none, // Removes the border
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
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
                        if (_rememberMeError)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              "Please agree to 'Remember Me' before signing up.",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: GestureDetector(
                            onTap: () async {
                              setState(() {
                                _rememberMeError =
                                    !_rememberMe; // Validate checkbox
                              });
                              //chick and submit data
                              if (_formKey.currentState!.validate() &&
                                  _rememberMe) {
                                String fullName = _fullNameController.text;
                                String email = _emailController.text;
                                String password = _passwordController.text;
                                String confirmPassword =
                                    _confirmPasswordController.text;
                                if (password != confirmPassword) {
                                  print("Passwords do not match!");
                                  return;
                                } else {
                                  //Registation
                                  dynamic result =
                                      _auth.createUserWithEmailAndPassword(
                                          email, password);
                                  if (result == null) {
                                    print("Error in signup");
                                  } else {
                                    print("User signed up");
                                  }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeMain()));
                                }
                              }
                            },
                            child: MainButton(
                              text: "Sign Up",
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
                                        builder: (context) => LoginPage()));
                              },
                              child: Text(
                                " Log in",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
