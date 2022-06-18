# Descripción
</div>

Este es un proyecto en el cual se hace uso de los Unit Testing, probando distintas areas del proyecto haciendo uso de la libreria XCTest para hacer los test, hereando de la clase XCTestCase y haciendo uso de los distintos XCTAsserts para testear

Se realizó Test de diferentes partes del proyecto como por ejemplo, el mapeo de la información del servidor a los distintos modelos por ejemplo:

~~~
// Verificando el tipo de dato de un valor que puede tomar distintos tipos de lista
    XCTAssertTrue(home?.widgets[0].values is [Categorie])

// Verificando el título del widget que debe tener el modelo con el que se va a pintar la celda
    XCTAssertEqual(home?.widgets[0].type, "Categories")
~~~

De ésta forma se hizo prueba de los modelos en la Arquitectura MVVM, de igual manera tambien se realizó test del ViewModel, por ejemplo asegurándose que todos los llamados a la API se realizáran de manera exitosa y obteniendo la información

~~~
    private var homeviewModel: HomeViewModel!
    
    override func setUpWithError() throws {
        homeviewModel = HomeViewModel(apiService: ApiServicesFake())
    }

    func testsArquitec() {
    homeviewModel.configurateHome {
        // Aqui se testea el homeViewModel
    }

~~~
