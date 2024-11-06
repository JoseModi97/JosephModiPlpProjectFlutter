import 'package:flutter/material.dart';

const appColor = Color.fromARGB(255, 79, 194, 33);
const styleColor = Color.fromARGB(255, 35, 207, 44);

headText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18);
}

whiteHeadText() {
  return TextStyle(fontFamily: 'semi-bold', fontSize: 18, color: Colors.white);
}

simpleButton(route, text) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: [styleColor, appColor],
      ),
    ),
    child: InkWell(
      onTap: route,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'bold', fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}

simpleInput(label, text) {
  return InputDecoration(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    labelText: label,
    hintText: text,
  );
}

iconInput(text, label, icon) {
  return InputDecoration(
    border: OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    hintText: text,
    labelText: label,
    suffixIcon: icon,
  );
}
