abstract class TemperatureDevice {
  void adjustTemperature(int temperature);
}

class SmartFan implements TemperatureDevice {
  @override
  void adjustTemperature(int temperature) {
    print('Adjusting smart fan to $temperature C');
  }
}

class Thermostat implements TemperatureDevice {
  @override
  void adjustTemperature(int temperature) {
    print('Adjusting thermostat to $temperature C');
  }
}

class SmartAC implements TemperatureDevice {
  @override
  void adjustTemperature(int temperature) {
    print('Adjusting Smart AC to $temperature C');
  }
}

class Heater implements TemperatureDevice {
  @override
  void adjustTemperature(int temperature) {
    print('Adjusting Heater to $temperature C');
  }
}

class Fridge implements TemperatureDevice {
  @override
  void adjustTemperature(int temperature) {
    print('Adjusting Fridge to $temperature C');
  }
}

class TemperatureController {
  void adjustTemperature(
    TemperatureDevice device,
    int temperature,
  ) {
    device.adjustTemperature(temperature);
  }
}

class SmartHomeApp {
  final controller = TemperatureController();

  void setTemperature(
    TemperatureDevice device,
    int temperature,
  ) {
    controller.adjustTemperature(device, temperature);
  }
}

void main() {
  SmartHomeApp smartHomeApp = SmartHomeApp();
  smartHomeApp.setTemperature(
    SmartFan(),
    3,
  );
  smartHomeApp.setTemperature(
    Heater(),
    3,
  );
}
