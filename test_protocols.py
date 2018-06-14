from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot
 

if __name__ == "__main__":
    import sys
 
    # создаём экземпляр приложения
    app = QGuiApplication(sys.argv)
    # создаём QML движок
    engine = QQmlApplicationEngine()
    
    # загружаем файл qml в движок
    # engine.load("autorize_wnd.qml")
    engine.load("main_wnd.qml")
 
    engine.quit.connect(app.quit)
    sys.exit(app.exec_())
