abstract class LightControl {
  void turnOnLights();
  void turnOffLights();
}

abstract class TemperatureControl {
  void setTemperature(int temperature);
}

abstract class MusicControl {
  void playMusic(String song);
  void stopMusic();
}

abstract class AlarmControl {
  void setAlarm(DateTime time);
}

abstract class SecurityControl {
  void activateSecurity();
  void deActivateSecurity();
}

class LightController implements LightControl {
  @override
  void turnOnLights() {
    print('Turning on lights');
  }

  @override
  void turnOffLights() {
    print('Turning off lights');
  }
}

class SmartSpeaker implements MusicControl, AlarmControl {
  @override
  void playMusic(String song) {
    print('Playing $song');
  }

  @override
  void setAlarm(DateTime time) {
    print('Setting alarm for $time');
  }

  @override
  void stopMusic() {
    print('Stopping music');
  }
}

class SmartHomeController
    implements
        LightControl,
        TemperatureControl,
        MusicControl,
        AlarmControl,
        SecurityControl {
  @override
  void activateSecurity() {
    print('Activating Security');
  }

  @override
  void deActivateSecurity() {
    print('deActivating Security');
  }

  @override
  void playMusic(String song) {
    print('Playing $song');
  }

  @override
  void setAlarm(DateTime time) {
    print('Setting alarm for $time');
  }

  @override
  void setTemperature(int temperature) {
    print('Setting temperature to $temperature C');
  }

  @override
  void stopMusic() {
    print('Stopping music');
  }

  @override
  void turnOffLights() {
    print('Turning off lights');
  }

  @override
  void turnOnLights() {
    print('Turning on lights');
  }
}

// everything in the light controller violates.