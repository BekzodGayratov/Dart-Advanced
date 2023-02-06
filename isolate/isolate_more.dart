import 'dart:io';
import 'dart:async';
import 'dart:isolate';

Isolate? isolate;

// Start the isolate
Future<void> start() async {
  ReceivePort receiverPort =
      ReceivePort(); // Port for isolate to receive message.

  isolate = await Isolate.spawn(runTimer, receiverPort.sendPort);
  receiverPort.listen((message) {
    stdout.write("Receiving" + message + ',');
  });
}

void runTimer(SendPort sendPort) {
  int count = 0;
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    count++;
    String msg = 'notification ' + count.toString();
    stdout.write('Sending: ' + msg + ' -');
    sendPort.send(msg);
  });
}

// Stopping the isolate using the stop() function.
void stop() {
  if (isolate != null) {
    stdout.writeln('Stopping Isolate.....');
    isolate!.kill(priority: Isolate.immediate);
    isolate = null;
  }
}

void main() async {
  stdout.writeln('Starting Isolate...');
  await start();
  stdout.writeln('Hit enter key to quit');
  await stdin.first;
  stop();
  stdout.writeln('Bye!');
  exit(0);
}
