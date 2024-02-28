// import 'dart:io';
// import 'dart:isolate';

// void main() async {
//   String message = 'hahahahahahaha';

//   ReceivePort receivePortMessage = ReceivePort()..listen((value) => message = value);

//   ReceivePort receivePortOnExit = ReceivePort();

//   Isolate.spawn(
//     compute,
//     {
//       'send_port_message': receivePortMessage.sendPort,
//       'send_port_on_exit': receivePortOnExit.sendPort,
//       'message': message,
//     },
//   );

//   dynamic onExitMessage = await receivePortOnExit.first;

//   if (onExitMessage is! String || onExitMessage != 'SUCCESS') throw onExitMessage;

//   print(message);

//   exit(0);
// }

// void compute(Map<String, dynamic> args) {
//   SendPort sendPortOnExit = args['send_port_on_exit'];

//   try {
//     (args['send_port_message'] as SendPort).send((args['message'] as String).toUpperCase());
//     sendPortOnExit.send('SUCCESS');
//   } catch (e) {
//     sendPortOnExit.send(e);
//   }
// }
