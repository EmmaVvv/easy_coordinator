/*Протокол Coordinator, обязывающий имплементировать объект navigationController типа UINavigationController, 
а также осуществлять метод navigate()
*/

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func navigate()
}

/*Протокол Storyboarded, на который могут подписываться только классы типа UIViewController. 
Для того, чтобы данный протокол сработал, необходимо в Storyboard-e в качестве Storyboard ID обозначать название самого класса
без каких-либо приставок! Таким образом подтягивание нужного контроллера будет осуществляться через протокол, 
без необходимости искать идентификатор в файле.
*/

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
