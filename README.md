# Unit Testing
En la mayoria de ocasiones programando te vas a encontrar con la necesidad de probar tu codigo, aqui es donde entran los Unit Testing y la importancia que tienen a la hora de hacer pruebas de tu codigo.

Los Unit Testing es un proceso de desarrollo en el se examinan y se hacen pruebas de las partes comprobable de tu aplicacion, probando desde pequeñas partes que funcionan de manera independiente hasta hacer un tests completo del flujo de la App. El objetivo principal de las pruebas unitarias es aislar el código escrito para probar y determinar si funciona según lo previsto.

## Ventajas de los Unit Testing

- Cuanto antes se identifique un problema, menos errores compuestos se producirán.
- Los costes de solucionar un problema a tiempo pueden superar rápidamente el coste de solucionarlo más tarde.
- Los desarrolladores pueden hacer cambios rápidamente en la base de código.
- Los desarrolladores también pueden reutilizar el código, migrándolo a nuevos proyectos.


## Desventajas de los Unit Testing
- Las pruebas no descubrirán todos los errores.
- Es posible que sea necesario escribir más líneas de código de prueba para probar una línea de código, creando una posible inversión de tiempo.
- La unidad solo prueba conjuntos de datos y su funcionalidad; no detectará errores en la integración.


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

Tambien se hizo uso de la clase XCTestExpectation para el llamado de funciones que se ejecutan de manera asincrona

~~~
    let expectation = XCTestExpectation(description: "Calling services..")
    homeviewModel.configurateHome {
        // Aqui se testea el homeViewModel
        
        // Aca se llama a funcion que indica que la expectativas fueron cumplidas, se llama al final cuando todos los test hayan sido exitosos
        expectation.fulfill()
    }
    // Se le dice que el tiempo de espera maximo para que la expectacion se cumpla va a ser de 10 segundos
    wait(for: [expectation], timeout: 10.0)
~~~
