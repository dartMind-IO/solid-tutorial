// Bad Code
abstract class SmartHomeDevice {
  void turnOn();
  void turnOff();
  void connectToWifi(String network, String password);
}

class SmartTv implements SmartHomeDevice {
  @override
  void connectToWifi(
    String network,
    String password,
  ) {
    print(
      'Connecting Smart TV to Wifi Network: $network',
    );
  }

  @override
  void turnOff() {
    print('Turning off Smart TV');
  }

  @override
  void turnOn() {
    print('Turning on Smart TV');
  }
}

class SmartExtensionBox implements SmartHomeDevice {
  @override
  void connectToWifi(String network, String password) {
    throw UnsupportedError(
      'Smart plug does not support WIFI connection',
    );
  }

  @override
  void turnOff() {
    print('Turning off Smart Plug');
  }

  @override
  void turnOn() {
    print('Turning off Smart Plug');
  }
}

void setupDevice(
  SmartHomeDevice device,
  String network,
  String password,
) {
  device.turnOn();
  device.connectToWifi(network, password);
}

void main() {
  final smartTV = SmartTv();
  final smartExtensionBox = SmartExtensionBox();
  setupDevice(smartTV, 'network', 'password');
  setupDevice(smartExtensionBox, 'network', 'password');
}

// Good Code
// abstract class PowerableDevice {
//   void turnOn();
//   void turnOff();
// }

// abstract class WifiConnectableDevice extends PowerableDevice {
//   void connectToWifi(
//     String network,
//     String password,
//   );
// }

// class SmartTV implements WifiConnectableDevice {
//   @override
//   void connectToWifi(String network, String password) {
//     print(
//       'Connecting Smart TV to Wifi Network: $network',
//     );
//   }

//   @override
//   void turnOff() {
//     print('Turning off Smart TV');
//   }

//   @override
//   void turnOn() {
//     print('Turning on Smart TV');
//   }
// }

// class SmartExtensionBox implements PowerableDevice {
//   @override
//   void turnOff() {
//     print('Turning on Smart ExtensionBox');
//   }

//   @override
//   void turnOn() {
//     print('Turning off Smart Extension Box');
//   }
// }

// void setupDevice(
//   WifiConnectableDevice device,
//   String network,
//   String password,
// ) {
//   device.turnOn();
//   device.connectToWifi(network, password);
// }

// smart extension box is not following the principle because it will 
// throw an error whenever the connect to wifi function is being called.