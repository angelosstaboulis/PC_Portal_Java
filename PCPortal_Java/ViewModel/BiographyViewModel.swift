//
//  BiographyViewModel.swift
//  PCPortal_Java
//
//  Created by Angelos Staboulis on 14/6/24.
//

import Foundation
class BiographyViewModel:ObservableObject{
    var biography = Biography(biography: "")
    func createBiography()->Biography{
        return Biography(biography:
        """
            A technical Genius has the potential to solve and simplify the longevity of the tasks" and with this line today we are going to know about James Gosling.Java is the most interesting and most famous language amongst young generation.James Arthur Gosling who was once born on may also 19 ,1955 popularly recognised as Father of Java Programming language.
            He is also a well-known Software Developer and a Canadian Computer Scientist.James Gosling's technology loving mind fetched him a Bachelor of Science diploma from University of Calgary after that he finished his Masters and then PHD from Carnegie Mellon University and all ranges had been in Computer science.
           James wanted to do something specific in his life, he wanted it to be different. The model of Gosmacs was written by him while doing his doctorate.
            Below is a List of Gossling Achivements
            2002: awarded The Economist Innovation Award.
            2002: awarded The Flame Award USENIX Lifetime Achievement Award.
            2007: made an Officer of the Order of Canada. The Order is Canada's 2d best possible civilian honor. Officers are the 2d very best grade inside the Order.
            2013: grew to be a fellow of the Association for Computing Machinery.
            2015: awarded IEEE John von Neumann Medal.
            2019: named a Computer History Museum fellow for the conception, design, and implementation of the Java programming language.
        """)
                    
    }
}
