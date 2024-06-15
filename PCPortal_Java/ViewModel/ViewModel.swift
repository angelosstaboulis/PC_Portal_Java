//
//  ViewModel.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 14/6/24.
//

import Foundation
@MainActor
class ViewModel:ObservableObject{
    @Published var questions:[GameQuestion] = []
    init(){
        questions.append(GameQuestion(imageName: "square", label: "Who is James Gossling", answer1: "Java Creator", answer2: "Microsoft Employee", answer3: "Company Owner",selected1: "",selected2: "",selected3: "",selected11:false,selected21:false,selected31:false,corectAnswer: "Java Creator"))
        questions.append(GameQuestion(imageName: "square", label: "Can i wrote Web Application in Java?", answer1: "Yes", answer2: "No", answer3: "No only in Linux OS",selected1: "",selected2: "",selected3: "",selected11:false,selected21:false,selected31:false, corectAnswer: "Yes"))
        questions.append(GameQuestion(imageName: "square", label: "Can i use pointers in Java like ANSI C?", answer1: "Yes", answer2: "No", answer3: "No only in Web Applications",selected1: "",selected2: "",selected3: "",selected11:false,selected21:false,selected31:false, corectAnswer: "No"))
        questions.append(GameQuestion(imageName: "square", label: "Which IDE can i use to write Java Applcations", answer1: "NetBeans", answer2: "PyDev", answer3: "XCode",selected1: "",selected2: "",selected3: "",selected11:false,selected21:false,selected31:false, corectAnswer: "NetBeans"))
        questions.append(GameQuestion(imageName: "square", label: "Java Executable has a jar extension", answer1: "No", answer2: "Yes", answer3: "No only in Windows",selected1: "",selected2: "",selected3: "",selected11:false,selected21:false,selected31:false, corectAnswer: "Yes"))
        questions.append(GameQuestion(imageName: "square", label: "Before i start to download JDK i must pay ?", answer1: "Yes", answer2: "No", answer3: "You must pay with paypal",selected1: "",selected2: "",selected3: "",selected11:false,selected21:false,selected31:false, corectAnswer: "No"))
    }
    func createQuestions(counter:Int,checkBoxModel1:CheckBoxModel,checkBoxModel2:CheckBoxModel,checkBoxModel3:CheckBoxModel)->(CheckBoxModel,CheckBoxModel,CheckBoxModel){
        var checkBoxModel11 = checkBoxModel1
        var checkBoxModel12 = checkBoxModel2
        var checkBoxModel13 = checkBoxModel2
        var counterNew = counter
        if counter <  questions.count {
            checkBoxModel11 = .init(imageName:questions[counterNew].imageName, title: questions[counterNew].answer1, selected: questions[counterNew].selected11, getSelected: questions[counterNew].answer1)
            checkBoxModel12 = .init(imageName: questions[counterNew].imageName, title: questions[counterNew].answer2, selected: questions[counterNew].selected21, getSelected: questions[counterNew].answer2)
            checkBoxModel13 = .init(imageName: questions[counterNew].imageName, title: questions[counterNew].answer3,selected: questions[counterNew].selected31, getSelected: questions[counterNew].answer3)
        }else{
            counterNew = 0
            checkBoxModel11 = .init(imageName:questions[counterNew].imageName, title: questions[counterNew].answer1, selected: questions[counterNew].selected11, getSelected: questions[counterNew].answer1)
            checkBoxModel12 = .init(imageName: questions[counterNew].imageName, title: questions[counterNew].answer2, selected: questions[counterNew].selected21, getSelected: questions[counterNew].answer2)
            checkBoxModel13 = .init(imageName: questions[counterNew].imageName, title: questions[counterNew].answer3,selected: questions[counterNew].selected31, getSelected: questions[counterNew].answer3)
        }
        return (checkBoxModel11,checkBoxModel12,checkBoxModel13)
    }
    func checkCorrectAnswers(counter:Int,checkBoxModel1:CheckBoxModel,checkBoxModel2:CheckBoxModel,checkBoxModel3:CheckBoxModel,correct:Int)->(Int,CheckBoxModel,CheckBoxModel,CheckBoxModel){
        var newCorrect = correct
        var checkBoxModel11 = checkBoxModel1
        var checkBoxModel12 = checkBoxModel2
        var checkBoxModel13 = checkBoxModel2
       
        if checkBoxModel11.getSelected == "Java Creator" && checkBoxModel11.selected == true && counter == 0{
            newCorrect = newCorrect + 1
        }else if checkBoxModel11.getSelected ==  "Yes" && checkBoxModel11.selected == true && counter == 1{
            newCorrect = newCorrect + 1
        }else if checkBoxModel12.getSelected ==  "No" && checkBoxModel12.selected == true && counter == 2{
            newCorrect = newCorrect + 1
        }else if checkBoxModel11.getSelected ==  "NetBeans" && checkBoxModel11.selected == true && counter == 3{
            newCorrect = newCorrect + 1
        }else if checkBoxModel12.getSelected ==  "Yes" && checkBoxModel12.selected == true && counter == 4{
            newCorrect = newCorrect + 1
        }else if checkBoxModel12.getSelected ==  "No" && checkBoxModel12.selected == true &&  counter == 5{
            newCorrect = newCorrect + 1
        }else{
            newCorrect = correct
        }
        if  counter == 5 {
            newCorrect = 0
            checkBoxModel11 = .init(imageName: "", title: "", selected: false, getSelected: "")
            checkBoxModel12 = .init(imageName: "", title: "", selected: false, getSelected: "")
            checkBoxModel13 = .init(imageName: "", title: "", selected: false, getSelected: "")
        }
        if checkBoxModel11.getSelected.elementsEqual("Java Creator") && counter == 0{
            return (newCorrect,checkBoxModel11,checkBoxModel12,checkBoxModel13)
        }else{
            return (newCorrect,checkBoxModel11,checkBoxModel12,checkBoxModel13)

        }
    }
  
}
