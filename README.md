# Unit Testing
En la mayoria de ocasiones programando te vas a encontrar con la necesidad de probar tu código, aqui es donde entran los Unit Testing y la importancia que tienen a la hora de probar tu código.

Los Unit Testing es un proceso de desarrollo en el que se examinan y se hacen pruebas de las partes comprobables de tu aplicación, probando desde pequeñas partes que funcionan de manera independiente hasta hacer un tests completo del flujo de usuario. El objetivo principal de las pruebas unitarias es aislar el código escrito para probar y determinar si funciona según lo previsto y protegerlo de los cambios que sufra en el futuro

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

En este proyecto se implementaron Unit Tests orientado al testeo funcional y de arquitectura, probando la arquitectura MVVM haciendo uso del framework XCTest el cual permite hacer uso de los XCTAssert para realizar las pruebas

Se realizó Test de diferentes partes del proyecto como por ejemplo, el mapeo de la información del servidor a los distintos modelos por ejemplo:

~~~
// Verificando el tipo de dato de un valor que puede tomar distintos tipos de lista
    XCTAssertTrue(home?.widgets[0].values is [Categorie])

// Verificando el título del widget que debe tener el modelo con el que se va a pintar la celda
    XCTAssertEqual(home?.widgets[0].type, "Categories")
~~~


De ésta forma se hizo prueba de los modelos en la Arquitectura MVVM, de igual manera tambien se realizó test del ViewModel, por ejemplo asegurándose que todos los llamados a la API se realizáran de manera exitosa y obteniendo la información. Tambien se hizo uso de la clase XCTestExpectation para el llamado de funciones que se ejecutan de manera asincrona

~~~
    private var homeviewModel: HomeViewModel!
    
    override func setUpWithError() throws {
        homeviewModel = HomeViewModel(apiService: ApiServicesFake())
    }

    func testsArquitec() {
        let expectation = XCTestExpectation(description: "Calling services..")
        homeviewModel.configurateHome {
        // Aqui se testea el homeViewModel
        XCTAssertEqual(self.homeviewModel.home.widgets[0].type, "Categories")
        XCTAssertEqual(self.homeviewModel.home.widgets[0].title, "Categories")
        
        // Aqui se llama a funcion que indica que la expectativas fueron cumplidas, se llama al final cuando todos los test hayan sido exitosos
        expectation.fulfill()
        }
    // Se le dice que el tiempo de espera maximo para que la expectacion se cumpla va a ser de 10 segundos
        wait(for: [expectation], timeout: 10.0)
    }
    
~~~

Tambien se hizo tests de funcionalidades probando distintas funciones matematicas y logicas

~~~
        let listStrings = ["x", "pedro", "juan", "ana", "a", "yorman"]
        let listNums = [2,3,4,2,3,6,2,7,2,9,2]

        // Eliminar elemtos especificos de un array
        func subtracktElement(_ coincidence: String, _ list: [String]) -> [String] 
        
        // Sumar todos los numeros pares o impares de una lista
        func sumaDeParesEImpares(par: Bool, list: [Int]) -> Int
        
        

        let listStringsWithoutCoincidence = functions.subtracktElement("juan", listStrings)
        XCTAssertFalse(listStringsWithoutCoincidence.contains("juan"))
        
        XCTAssertEqual(functions.sumaDeParesEImpares(par: true, list: listNums), 20)
~~~
