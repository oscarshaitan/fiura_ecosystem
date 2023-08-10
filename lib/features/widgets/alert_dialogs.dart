import 'package:flutter/material.dart';

AlertDialog getInitialAlertDialog(
    {required String title,
    required String content,
    required VoidCallback continueFunction,
    required VoidCallback cancelFunction,
    required TextStyle buttonTextStyle}) {
  return AlertDialog(
    title: Text(
      title,
      textAlign: TextAlign.start,
    ),
    content: Text(
      content,
      textAlign: TextAlign.start,
    ),
    actions: [
      TextButton(
        onPressed: cancelFunction,
        child: Text(
          "Cancelar",
          style: buttonTextStyle,
        ),
      ),
      TextButton(
        onPressed: continueFunction,
        child: Text("Continuar", style: buttonTextStyle),
      ),
    ],
  );
}

AlertDialog getLoadingAlertDialog({required String contentText}) {
  return AlertDialog(
    backgroundColor: const Color(0xff353535),
    content: SizedBox(
      height: 150.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            contentText,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

AlertDialog getSuccessAlertDialog(
    {required String contentText,
    required VoidCallback continueFunction,
    required TextStyle buttonTextStyle}) {
  return AlertDialog(
    backgroundColor: const Color(0xff353535),
    content: Text(
      contentText,
      textAlign: TextAlign.start,
    ),
    actions: [
      TextButton(
        onPressed: continueFunction,
        child: Text(
          "Finalizar",
          style: buttonTextStyle,
        ),
      ),
    ],
  );
}

AlertDialog getErrorAlertDialog(
    {required String contentText,
    required TextStyle buttonTextStyle,
    required VoidCallback continueFunction}) {
  return AlertDialog(
    backgroundColor: const Color(0xff353535),
    content: Center(
      child: Text(
        contentText,
        textAlign: TextAlign.start,
      ),
    ),
    actions: [
      TextButton(
        onPressed: continueFunction,
        child: Text(
          "Aceptar",
          style: buttonTextStyle,
        ),
      ),
    ],
  );
}
