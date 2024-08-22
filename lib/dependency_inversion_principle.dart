// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class LockingMechanism {
  void lock();
  void unlock();
}

class SmartLock implements LockingMechanism {
  @override
  void lock() {
    print('Door locked');
  }

  @override
  void unlock() {
    print('Door unlocked');
  }
}

class BiometricLock implements LockingMechanism {
  @override
  void lock() {
    print('Biometric lock engaged');
  }

  @override
  void unlock() {
    print('Biometric lock disengaged');
  }
}

class SecuritySystem {
  SecuritySystem({
    required this.lockingMechanism,
  });
  final LockingMechanism lockingMechanism;

  void armSystem() {
    lockingMechanism.lock();
    print('Security system armed');
  }

  void disarmSystem() {
    lockingMechanism.unlock();
    print('Security system disarmed');
  }
}

void main() {
  final smartLock = SmartLock();
  final security = SecuritySystem(
    lockingMechanism: smartLock,
  );
  security.armSystem();
  security.disarmSystem();

  final bioLock = BiometricLock();
  final bioSecurity = SecuritySystem(lockingMechanism: bioLock);
  bioSecurity.armSystem();
  bioSecurity.disarmSystem();
  // final securitySystem = SecuritySystem();
  // securitySystem.armSystem();
  // securitySystem.disarmSystem();
}

// Security System(High Level)
// Smart lock is Low Level
// - Smart lock in itself should depend on abstraction
// - Security System should also depend on abstraction


// Rule
// Dependency Inversion Principle
// - High level modules should not depend on low level modules.
// Both should depend on abstractions.
// - Abstractions should not depend on details. Details should depend on abstractions.

// security system is working directly with smartlock...
// security is depending on the smart lock. create abstact class
