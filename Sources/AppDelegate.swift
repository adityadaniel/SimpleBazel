import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")!.load()
        let viewController = ViewController()
        let nav = UINavigationController(rootViewController: viewController)
        nav.navigationBar.isTranslucent = false

        window?.rootViewController = nav
        window?.makeKeyAndVisible()

        return true
    }
}
