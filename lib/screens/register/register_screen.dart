import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _acceptPolicy = false;
  String? _selected = "1";
  double deviceWidth = 0.0;

  List<Map> myJson = [
    {"id": '1', "image": "assets/download.png", "name": "+91"},
    {"id": '2', "image": "assets/download.png", "name": "+34"},
    {"id": '3', "image": "assets/download.png", "name": "+35"},
  ];

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            iconSize: 30,
            splashRadius: 24,
            icon: const Icon(
              Icons.arrow_back,
              color: Color(
                0xFF5a4c82,
              ),
            )),
        centerTitle: true,
        title: const Text(
          "Register",
          style: TextStyle(
              color: Color(0xFF37424b),
              fontWeight: FontWeight.w600,
              fontSize: 22.0),
        ),
        actions: const [
          Center(
              child: Text(
            "1/4",
            style: TextStyle(
                color: Color(0xFF37424b),
                fontWeight: FontWeight.w600,
                fontSize: 22.0),
          )),
          SizedBox(
            width: 15.0,
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Candidate",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF779ff9),
                    fontSize: 18.0),
              ),
              const SizedBox(
                height: 15.0,
              ),
              RegisterTextFormField(
                label: "First Name:",
              ),
              const SizedBox(
                height: 15.0,
              ),
              RegisterTextFormField(
                label: "Surnames:",
              ),
              const SizedBox(
                height: 15.0,
              ),
              RegisterTextFormField(
                label: "Email:",
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: deviceWidth * 0.3,
                        child: const Text(
                          "Mobile phone",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF51447b),
                              fontSize: 18.0),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 43,
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButtonFormField<String>(
                            isDense: true,
                            icon: const Visibility(
                                visible: false, child: Icon(Icons.arrow_downward)),
                            value: _selected,
                            style:  const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFef9279),
                    fontSize: 16,
                  ),
                            decoration: InputDecoration(
                              isDense: true,
                              suffixIconConstraints:
                                  const BoxConstraints(minHeight: 43, minWidth: 30),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                    decoration: const BoxDecoration(
                                        color: Color(0xFF584687),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0))),
                                    child: const Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    )),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0.0),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF8c85a4)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF8c85a4)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFF8c85a4)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                _selected = newValue!;
                              });
      
                              print(_selected);
                            },
                            items: myJson.map((Map map) {
                              return DropdownMenuItem<String>(
                                value: map["id"].toString(),
                                // value: _mySelection,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                          margin: const EdgeInsets.only(right: 10),
                                          child: Text(map["name"])),
                                      Image.asset(
                                        map["image"],
                                        width: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          cursorColor: const Color(0xFF8c85a4),
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF000000),
                            fontSize: 16,
                          ),
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFef9279),
                              fontSize: 16,
                            ),
                            labelText: "| (type)",
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 12),
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF8c85a4)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF8c85a4)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF8c85a4)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                          ),
                        ),
                      )
                    ],
                  ),
                 const Text(
                          "We may call you validate your account",
                          style:  TextStyle(
                              color: Color(0xFF51447b),
                              fontSize: 12.0),
                        ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              RegisterTextFormField(
                label: "Password:",
                prefixIcon: Icons.key_rounded,
                suffixIcon: Icons.visibility_off_outlined,
              ),
              const SizedBox(
                height: 15.0,
              ),
              RegisterTextFormField(
                prefixIcon: Icons.key_rounded,
                suffixIcon: Icons.visibility_off_outlined,
                label: "Repeat password:",
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                              side: const BorderSide(
                                color: Color(0xFFff8973),
                              ),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(3.0),
                                ),
                              ),
                              value: _acceptPolicy,
                              activeColor: const Color(0xFFff8973),
                              onChanged: (value) {
                                setState(() {
                                  _acceptPolicy = value!;
                                });
                              }),
                        ),
                        Flexible(
                          child: RichText(
                            text: const TextSpan(
                              text: 'I accept the',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: Color(0xFF353e44),
                                  height: 1.5,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(text: " "),
                                TextSpan(
                                    text: 'Use of the service, ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        color: Color(0xFFff8973))),
                                TextSpan(
                                    text: 'the',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFff8973))),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: 'Legal Conditions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        color: Color(0xFFff8973))),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: 'and Clinic Jobs',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFff8973))),
                                TextSpan(text: " "),
                                TextSpan(
                                    text: 'Notification Policy.',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                        color: Color(0xFFff8973))),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            textStyle: const TextStyle(fontSize: 16.0),
                            backgroundColor: const Color(0xFFff8973)),
                        child: const Text("Continue"),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "You already have an account?",
                          style:  TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF51447b),
                              fontSize: 14.0),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        InkWell(
                          child: Text(
                            "Log in",
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFFff8973),
                                fontSize: 14.0),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterTextFormField extends StatelessWidget {
  RegisterTextFormField(
      {Key? key, required this.label, this.prefixIcon, this.suffixIcon})
      : super(key: key);

  final String label;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  double deviceWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      // color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: deviceWidth * 0.3,
            child: Text(
              label,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF51447b),
                  fontSize: 18.0),
            ),
          ),
          // const Spacer(),
          Expanded(
            child: TextFormField(
              cursorColor: const Color(0xFF8c85a4),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
                fontSize: 16,
              ),
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFef9279),
                  fontSize: 16,
                ),
                labelText: "| (type)",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                isDense: true,
                prefixIcon: prefixIcon != null
                    ? Icon(
                        prefixIcon,
                        size: 25.0,
                        color: const Color(0xFF574689),
                      )
                    : null,
                suffixIcon: suffixIcon != null
                    ? Icon(
                        suffixIcon,
                        size: 25.0,
                        color: const Color(0xFF574689),
                      )
                    : null,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8c85a4)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8c85a4)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF8c85a4)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
