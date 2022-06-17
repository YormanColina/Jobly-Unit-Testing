//
//  FuntionalTests.swift
//  JoblyTests
//
//  Created by Apple on 17/06/22.
//

import XCTest

class UnitTestingTagsTests: XCTestCase {
    var functions = Functions()

    func testSomeViewControllerFunctions() {
        var lista = ["x", "pedro", "juan", "ana", "a", "yorman"]
        var listanum = [1,2,3,4,5,6,3,8]
        var lista2 = ["d", "de", "rty", "qedew"]
        // Ordendo una lista en orden alfabetico
      
        
        //Compararndo una lista con otra
        XCTAssert(functions.compareLists(lista, listB: lista2))
        
        // Verificando existiencia de un elemento
        XCTAssertTrue(functions.subtracktElement("lll", lista).contains("lll"))
    }
    

    func testFunctionsMats() {
        // Testeando si el resultado de 2 funciones son iguales
        XCTAssertEqual(functions.add(10, 5), functions.add(9, 6))
        XCTAssertEqual(functions.subtract(100, 30), functions.multiply(7, 10))

        // Testeando el resultado de una funcion con un valor
        XCTAssertEqual(functions.divide(50.0, 3.0), 16.666666)
        XCTAssertEqual(20, functions.subtract(100, 60) / 2)
        
        print(functions.subtracktNumber(2, list: [2,3,4,2,3,6,2,7,2,9,2]))
        print(functions.sumaDeParesEImpares(44, list: [1,2,3,4]))
        
        //
    }
    
    func testAlgoritms() {
        let listaStrings = ["x", "pedro", "juan", "ana", "a", "yorman"]
        let listaNums = [2,3,4,2,3,6,2,7,2,9,2]
        
//        print(vc.sortList(list: listaStrings))
        print(functions.sortList(list: listaStrings))
        print(functions.subtracktNumber(2, list:listaNums ))
        print(functions.sumaDeParesEImpares(44, list: listaNums))
    }
    
    
}

