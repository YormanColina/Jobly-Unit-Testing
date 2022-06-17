//
//  Functions.swift
//  JoblyTests
//
//  Created by Apple on 17/06/22.
//

import Foundation

class Functions {
    
    // Sumar 2 numeros
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    // Restar 2 numeros
    func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    // Multiplicar 2 numeros
    func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    // Dividir 2 numeros
    func divide(_ divisor: Float, _ dividendo: Float) -> Float {
        return divisor / dividendo
    }
    
    // Comparar 2 numeros
    func compare(_ a: Int, _ b: Int) -> Bool {
        return a == b
    }
    
    // Indicar numero Mayor
    func indicateMajor(_ a: Float, _ b: Float) -> Float? {
        if a > b {
            return a
        } else if a < b {
            return b
        }
        return nil
    }
    
    // Ordenar lista de menor a mayor
    func sortList(list: [String]) -> [String] {
        var listAux = list
        listAux.sort()
        return listAux
    }
    
    // Comparar una lista con otra
    func compareLists(_ listA: [String], listB: [String]) -> Bool {
        return listA == listB ? true : false
    }
    
    // Eliminar elemtos especificos de un array
    func subtracktElement(_ coincidence: String, _ list: [String]) -> [String] {
        var listAux = list
        
        while list.contains(coincidence) {
            for str in 0...listAux.count {
                if listAux.contains(coincidence) {
                    listAux.remove(at: str)
                }
            }
        }
        return listAux
    }
    
    func subtracktNumber(_ number: Int, list: [Int]) -> [Int] {
        var listAux = list
        
        while listAux.contains(number) {
            for num in 0...listAux.count - 1 {
                
                if listAux[num] == number {
                    listAux.remove(at: num)
                    break
                }
            }
        }
        return listAux
    }
    
    func sumaDeParesEImpares(_ num: Int, list: [Int]) -> Int {
        var suma = 0
        
        if num%2 == 0 {
            for numero in list {
                if numero%2 == 0 {
                    suma += numero
                }
            }
        } else {
            for numero in list {
                if numero%2 != 0 {
                    suma += numero
                }
            }
        }
        return suma
    }
    
    
}
