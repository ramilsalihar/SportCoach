import Flutter
import UIKit
import Apphud

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  // Gathering data and sending to server
  //TODO: Understand how to send data to server
    OneSignal.initialize("030baf23-25df-4953-a340-aeb137213f76", withLaunchOptions: launchOptions)
    OneSignal.login(Apphud.userID())

    initializeYandexMetrica()

    FirebaseApp.configure()

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
