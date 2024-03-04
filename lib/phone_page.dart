import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class CallExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String phoneNumber = '+79202241883'; // Replace with actual phone number
            bool? res = await FlutterPhoneDirectCaller.callNumber(phoneNumber);
            // Обработка результата звонка
            if (res == null) {
              // Обработка ситуации, когда результат null (например, пользователь отменил вызов)
            } else if (res) {
              // Звонок успешно состоялся
            } else {
              // Произошла ошибка при попытке совершить звонок
            }
          },
          child: Text('Call'),
        ),
      ),
    );
  }
}