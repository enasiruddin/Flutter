import 'package:flutter/material.dart';

void showLoadingDialog(BuildContext context, var travelProvider) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 20),
              Expanded(
                  child: Text(travelProvider.loadingMgs,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]))),
            ],
          ),
        );
      });
}
