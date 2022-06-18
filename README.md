# Descripción
</div>

Este es un proyecto en el cual se hace uso de los Unit Testing, probando distintas areas del proyecto haciendo uso de la libreria XCTest para hacer los test, hereando de la clase XCTestCase y haciendo uso de los distintos XCTAsserts para testear

Se realizo Test de diferentes partes del proyecto como por ejemplo, el mapeo de la informacion del servidor a los distintos modelos por ejemplo:

~~~
// Verificando el tipo de dato de un valor que puede tomar distintos tipos de lista
XCTAssertTrue(home?.widgets[0].values is [Categorie])

// Verificando el titulo del widget que debe tener el modelo con el que se va a pintar la celda
XCTAssertEqual(home?.widgets[0].type, "Categories")
~~~
