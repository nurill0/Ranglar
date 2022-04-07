//
//  QuizData.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 03/03/22.


import UIKit

struct Question {
    let titleImage: String
    let taskLabel : String
    let choose1   : String
    let choose2   : String
    let choose3   : String
    let answer    : String
}
struct QuestionData{
    var questionNumber = 0
    var score          = 0
    var numberOfQuiz   = 0
    var isFinish = false
    var dataOfQuiz: [Question] = [
        Question(titleImage: "1", taskLabel: "Rasmdagi bodring qaysi rangda?", choose1: "Sariq", choose2: "Yashil", choose3: "Kulrang", answer: "Yashil"),
        Question(titleImage: "2", taskLabel: "Qulpinay rangi qanday?", choose1: "Yashil", choose2: "Sariq", choose3: "Qizil", answer: "Qizil"),
        Question(titleImage: "3", taskLabel: "Osmonimiz qanday rangda?", choose1: "Sariq", choose2: "Havorang", choose3: "Yashil", answer: "Havorang"),
        Question(titleImage: "4", taskLabel: "Qorning rangi qanday?", choose1: "Oq", choose2: "Pushti", choose3: "Sariq", answer: "Oq"),
        Question(titleImage: "5", taskLabel: "Apelsin qanday rangda bo`ladi?", choose1: "Ko`k", choose2: "Qizil", choose3: "To`q sariq", answer: "To`q sariq"),
        Question(titleImage: "6", taskLabel: "Binafshalar qanday rangda bo`ladi?", choose1: "Sariq", choose2: "Siyohrang", choose3: "Qora", answer: "Siyohrang"),
        Question(titleImage: "7", taskLabel: "Biz sevib iste`mol qiladigan shokoladlar ranggi qanday bo`ladi?", choose1: "Jigarrang", choose2: "Oq", choose3: "Sariq", answer: "Jigarrang"),
        Question(titleImage: "8", taskLabel: "Bananning ranggi...", choose1: "Qizil", choose2: "Sariq", choose3: "Havorang", answer: "Sariq"),
        Question(titleImage: "9", taskLabel: "Qishda uylarni isitish uchun ishlatiladigan ko`mir qaysi rangda?", choose1: "Oq", choose2: "To`q ko`k", choose3: "Qora", answer: "Qora"),
        Question(titleImage: "10", taskLabel: "Bahorda birinchi gullaydigan bodom gulining rangi... ", choose1: "Sariq", choose2: "Pushti", choose3: "To`q qizil", answer: "Pushti")
    ]
  
   
  
    
    
    //MARK: BUTTONGA JAOVBLARNI ULASH
    func getAnswer()->[String]{
        let answer = [
            dataOfQuiz[questionNumber].choose1,
            dataOfQuiz[questionNumber].choose2,
            dataOfQuiz[questionNumber].choose3,
        ]
        return answer
    }
    //MARK: RASMLARNI ULASH
    func getTaskImage()->String{
        return dataOfQuiz[questionNumber].titleImage
    }
    //MARK: SAVOLLARNI LABELGA ULASH
    func getQuestionLabel()->String{
        return dataOfQuiz[questionNumber].taskLabel
    }
    //MARK: keyngi savolga o`tish
    mutating func nextQuestion(){
        if questionNumber < dataOfQuiz.count - 1 {
            questionNumber += 1
            isFinish = false
            
        }
        else{
            isFinish = true
            questionNumber = 0
        }
    }
    
    //MARK: savol raqamini olish
    func getQuestionNumber()->Int{
        return questionNumber
    }
    //MARK: javob to`g`ri noto`g`rililigini tekshirish
    mutating func checkAnswer(userAnswer: String)->Bool{
        if userAnswer == dataOfQuiz[questionNumber].answer{
            score+=1
            return true
        } else{
            return false
        }
    }
    //MARK: Shotni yuborish
    func getScore()->Int{
        return score
    }
    
    
    
}

