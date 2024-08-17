class SmartLight {
  bool isOn = false;
  int brightness = 0;

  void toggle() {
    isOn = !isOn;
    print(
      isOn ? 'Light turned on' : 'Light turned Off',
    );
  }

  void setBrightness(int level) {
    brightness = level;
    print('Brightness set to $level');
  }

  double get getCurrentUsage => isOn ? brightness * 0.1 : 0;
}

class EnergyUsage {
  void saveEnergyUsage(SmartLight light) {
    double usage = light.getCurrentUsage;
    // save to database.
    print('Saved energy usage: $usage kwh');
  }
}

class NotificationService {
  void notifyUserOfHighUsage(SmartLight light) {
    if (light.brightness > 80) {
      print('High Energy usage sent to user');
    }
  }
}

// creating a new class for the two functions.
// create one class.

// controlling the light
// saving the energy usage data
// notifying the user of high usage


// Answers
// - saveEnergyUsage is violating the rule
// - The saveEnergyUsage and notifyUserOfHighUsage is violating the rule
//