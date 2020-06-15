/* Так как данный файл подписан под протокол Coordinator, то он обязан инициализировать свойство navigationController, 
а также имплементировать функцию navigate() для осуществления навигации.
Наш ViewController должен быть подписан под протокол Storyboarded, и посредством вызова метода instantiate() мы как раз 
избавляемся от необходимости переходить в Main.storyboard и искать идентификатор контроллера.
*/

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func navigate() {
        let vc = ViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
}
