//
//  GameJava.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 25/4/22.
//

import SwiftUI
import Combine
struct GameJava: View {
    @StateObject var viewModel = ViewModel()
    @State var counter:Int
    @State  var correct:Int=0
    @State var checkBoxModel1:CheckBoxModel
    @State var checkBoxModel2:CheckBoxModel
    @State var checkBoxModel3:CheckBoxModel
    
    var body: some View {
        VStack(alignment:.center){
            VStack{
                HStack{
                    Image(uiImage: UIImage(named: "pcportal")!).resizable().fixedSize()
                }
                HStack(spacing:30){
                    if self.counter < viewModel.questions.count {
                        Text(viewModel.questions[self.counter].label).frame(width: 400, height: 45, alignment: .leading)
                    }else{
                        
                        Text(viewModel.questions[0].label).frame(width: 400, height: 45, alignment: .leading)
                    }
                }.frame(width: 300, height: 50, alignment: .leading)
                
                HStack(spacing:30){
                    CheckBox(checkBox: $checkBoxModel1)
                    
                }.frame(width: 300, height: 50, alignment: .leading).simultaneousGesture(
                    TapGesture()
                        .onEnded { _ in
                            checkBoxModel1.selected = true
                            checkBoxModel2.selected = false
                            checkBoxModel3.selected = false
                        }
                )
                
                HStack(spacing:30){
                    CheckBox(checkBox:$checkBoxModel2)
                       
                }.frame(width: 300, height: 50, alignment: .leading).simultaneousGesture(
                    TapGesture()
                        .onEnded { _ in
                            checkBoxModel1.selected = false
                            checkBoxModel2.selected = true
                            checkBoxModel3.selected = false
                        }

                            
                        
                )
                HStack(spacing:30){
                    CheckBox(checkBox: $checkBoxModel3)
                       
                }.frame(width: 300, height: 50, alignment: .leading).simultaneousGesture(
                    TapGesture()
                        .onEnded { _ in
                            checkBoxModel1.selected = false
                            checkBoxModel2.selected = false
                            checkBoxModel3.selected = true
                        }

                )
                HStack(spacing:30){
                    Text("Correct Answer:\(correct)")
                }.frame(width: 300, height: 50, alignment: .leading)
                Button {
                    self.correct = viewModel.checkCorrectAnswers(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3:checkBoxModel3,correct: self.correct).0
                    self.counter = self.counter + 1

                    if self.counter < self.viewModel.questions.count {
                    self.checkBoxModel1 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).0
                    self.checkBoxModel2 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).1
                    self.checkBoxModel3 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).2
                    }else{
                        self.counter = 0
                        self.checkBoxModel1 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).0
                        self.checkBoxModel2 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).1
                        self.checkBoxModel3 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).2
                    }
                } label: {
                    Text("Next Question").padding()
                }.background(Rectangle().foregroundColor(.red))
                    
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-150, alignment: .center)
            
            
        }.foregroundColor(Color.yellow)
          .background(Color.accentColor)
          .onAppear {
              self.counter = 0
              self.checkBoxModel1 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).0
              self.checkBoxModel2 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).1
              self.checkBoxModel3 = self.viewModel.createQuestions(counter: self.counter, checkBoxModel1: checkBoxModel1, checkBoxModel2: checkBoxModel2, checkBoxModel3: checkBoxModel3).2
          }
         
       
           
    }
    
}
