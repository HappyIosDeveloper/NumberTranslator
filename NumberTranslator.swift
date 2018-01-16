//
//  NumberTranslator.swift
//  WhatEVER
//
//  Created by Reza Rg on 2/4/15.
//  Copyright (c) 2015 Reza Ranjbaran. All rights reserved.
//

extension String {
    
    
    public func toPersianNumber() -> String {
        var response = self
        var enNumber = ["0","1","2","3","4","5","6","7","8","9"]
        var faNumber = ["٠","١","٢","٣","٤","٥","٦","٧","٨","٩"]
        for i in 0 ..< 10 {
            response = response.replace(enNumber[i], withString: faNumber[i])
        }
        
        return response
    }
    
    public func toEnglishNumber() -> String {
        var response = self
        var enNumber = ["0","1","2","3","4","5","6","7","8","9"]
        var faNumber = ["۰","۱","۲","۳","۴","۵","۶","۷","۸","۹"] // ۱۲۳۴۵۶۷۸۹۰  ["٠","١","٢","٣","٤","٥","٦","٧","٨","٩"]
        var faNumber2 = ["٠","١","٢","٣","٤","٥","٦","٧","٨","٩"]
        
        for i in 0..<10 {
            response = response.replace(faNumber[i], withString: enNumber[i])
        }
        
        for i in 0..<10 {
            response = response.replace(faNumber2[i], withString: enNumber[i])
        }
        
        return response
    }
    
}

extension Int {
    
    public func toPersianNumber() -> String {
        var response = String(self)
        var enNumber = ["0","1","2","3","4","5","6","7","8","9"]
        var faNumber = ["٠","١","٢","٣","٤","٥","٦","٧","٨","٩"]
        for i in 0 ..< 10 {
            response = response.replace(enNumber[i], withString: faNumber[i])
        }
        
        return response
    }
    
    public func toEnglishNumber() -> String {
        var response = String(self)
        var enNumber = ["0","1","2","3","4","5","6","7","8","9"]
        var faNumber = ["٠","١","٢","٣","٤","٥","٦","٧","٨","٩"]
        for i in 0 ..< 10 {
            response = response.replace(faNumber[i], withString: enNumber[i])
        }
        
        return response
    }
    
}
