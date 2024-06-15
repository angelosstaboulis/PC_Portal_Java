//
//  BooksViewModel.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 14/6/24.
//

import Foundation
import Foundation
class BooksViewModel:ObservableObject{
    var books = Books(books: "")
    func createBooks()->Books{
        return Books(books:
        """
             Books are the high-quality buddy of college students and nothing can beat books when it comes to educating.
             It is the purpose most of the experienced Java Programmers suggest to examine books for getting to know the Java programming language.
             The books contain in-depth and true knowledge.
              In this section, we will discuss the pinnacle Java books for novices and superior stage learners.
             We have categorized the Java books into two degrees one is novice level and the different is an superior level.
             The beginner degree books help freshers who want to develop their career as a Java Programmer.
             If you choose to excel in Java programming and prefer to end up a Java developer, we have suggested the top Java books in this section.

             List of Top Java Books

             1.Beginner's Level Java Books

             2.Head First Java

             3.Java The Complete Reference
             
             4.Core Java Volume I-Fundamentals

             5.Core Java An Integrated Approach

             6.Effective Java

             7.Advanced Level Java Books

             8.OCA Java SE 8

             9.Java Puzzler: Traps, Pitfalls, and Corner Cases

             10.The Java Language Specification

             11.Thinking in Java

             12.The JavaTM Programming Language
        """)
                    
    }
}
