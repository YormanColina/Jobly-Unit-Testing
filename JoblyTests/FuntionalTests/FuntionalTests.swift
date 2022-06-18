//
//  FuntionalTests.swift
//  JoblyTests
//
//  Created by Apple on 17/06/22.
//

import XCTest

class UnitTestingTagsTests: XCTestCase {
    var functions = Functions()

    func testArrayFunctions() {
        let lista = ["x", "pedro", "juan", "ana", "a", "yorman"]
        let lista2 = ["f", "z", "fa", "pu"]
        
        // Ordendo una lista en orden alfabetico
        let listSort = functions.sortList(list: lista)
        XCTAssertGreaterThan(listSort[3], listSort[2])
        
        //Compararndo una lista con otra
        XCTAssert(functions.compareLists(lista2, listB: lista2))
        
        // Verificando existiencia de un elemento
        XCTAssertFalse(functions.subtracktElement("lll", lista).contains("lll"))
        
    }
    

    func testFunctionsMats() {
        // Testeando si el resultado de 2 funciones son iguales
        XCTAssertEqual(functions.add(10, 5), functions.add(9, 6))
        XCTAssertEqual(functions.subtract(100, 30), functions.multiply(7, 10))

        // Testeando el resultado de una funcion con un valor
        XCTAssertEqual(functions.divide(50.0, 3.0), 16.666666)
        XCTAssertEqual(20, functions.subtract(100, 60) / 2)
        
        //
    }
    
    func testAlgoritms() {
        let listStrings = ["x", "pedro", "juan", "ana", "a", "yorman"]
        let listNums = [2,3,4,2,3,6,2,7,2,9,2]
        
        let listStringsWithoutCoincidence = functions.subtracktElement("juan", listStrings)
        XCTAssertFalse(listStringsWithoutCoincidence.contains("juan"))
        
        let listNumbersWithoutCoincidence = functions.subtracktNumber(2, list: listNums)
        XCTAssertFalse(listNumbersWithoutCoincidence.contains(2))
        
        XCTAssertEqual(functions.sumaDeParesEImpares(par: true, list: listNums), 20)
    }
    
    
}

