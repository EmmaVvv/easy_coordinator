# easy_coordinator
В данной репозитории будет описан самый простой способ использования такого дизайн паттерна, как Координатор (Coordinator).

Для начала, немного сетапа. 
Открываем наш проект, переходим в раздел Targets, выбираем необходимый target и находим строку Main Interface, в теле которой написано Main. Удаляем Main, оставляя строку пустой!
По сути, таким образом, мы убрали с Main Interface ответственность за навигацию. 

Затем мы создадим протокол Coordinator, которому при инициализации необходимо будет передавать объект типа UINavigationController(), а также будет выполнять метод navigate(), который будет координировать навигацию.

Также, мы создадим протокол Storyboarded, который и избавит нас необходимости переходить каждый раз в Main.storyboard для поиска id нашего контроллера либо идентификатора segue. 
