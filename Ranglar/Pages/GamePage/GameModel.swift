//
//  GameModel.swift
//  Ranglar
//
//  Created by Nurillo Domlajonov on 04/03/22.
//

import UIKit


class DummyData{

    static let memorizeData: [Card] = [
    Card(word1: "first", word2: "first"),
    Card(word1: "second", word2: "second"),
    Card(word1: "third", word2: "third"),
    Card(word1: "fourth", word2: "fourth"),
    Card(word1: "fifth", word2: "fifth"),
    Card(word1: "fourth", word2: "fourth"),
    ]
    static let stuffs = [
        StuffItem(stuffName: "Pencil Pouch", stuffPictureName: "pencil Pouch" ),
        StuffItem(stuffName: "Ballpoint Pen", stuffPictureName: "pen" ),
        StuffItem(stuffName: "Pencil", stuffPictureName: "pencil" ),
        StuffItem(stuffName: "Highlighter", stuffPictureName: "highlighte" ),
        StuffItem(stuffName: "Pencil Sharpener", stuffPictureName: "sharpener" ),
        StuffItem(stuffName: "Marker", stuffPictureName: "marker" ),
        StuffItem(stuffName: "Eraser", stuffPictureName: "eraser" ),
        StuffItem(stuffName: "Ring Binder", stuffPictureName: "Binder" ),
        StuffItem(stuffName: "Notebook", stuffPictureName: "notebook" ),
        StuffItem(stuffName: "Subject Divider", stuffPictureName: "divider" ),
        StuffItem(stuffName: "Index Card", stuffPictureName: "index" ),
        StuffItem(stuffName: "Folder", stuffPictureName: "folder" ),
        StuffItem(stuffName: "Glue", stuffPictureName: "glue" ),
        StuffItem(stuffName: "Ruler", stuffPictureName: "ruler" ),
        StuffItem(stuffName: "Scissors", stuffPictureName: "scissors" ),
        StuffItem(stuffName: "Calculator", stuffPictureName: "calculator"),
        StuffItem(stuffName: "Backpack", stuffPictureName: "backpack" ),
        StuffItem(stuffName: "Shelf", stuffPictureName: "shelf" ),
        StuffItem(stuffName: "School Bus", stuffPictureName: "bus"),
        StuffItem(stuffName: "School", stuffPictureName: "school"),
        StuffItem(stuffName: "Student", stuffPictureName: "student"),
        StuffItem(stuffName: "Teacher", stuffPictureName: "teacher"),
        StuffItem(stuffName: "Book", stuffPictureName: "book" )
    ]
}
//
//struct QuizBrain {
//
//    var questionNumber = 0
//    var score = 0
//
//    let quiz = [
//
//        Question(text: "5 + 10", answers: ["13", "15", "21","23"], rightAnswer: "15"),
//        Question(text: "How many legs does a spider have?", answers: ["Three", "Four", "Five", "Eight"], rightAnswer: "Eight"),
//        Question(text: "What is the name of the toy cowboy in Toy Story?", answers: ["Woody", "Teddy", "Tom", "Ben"], rightAnswer: "Woody"),
//        Question(text: "What is the color of an emerald?", answers: ["Red", "Green","Purple", "Orange"], rightAnswer: "Green"),
//        Question(text: "What is something you hit with a hammer?", answers: ["A nail", "A Finger", "Stone", "Everything"], rightAnswer: "A nail"),
//        Question(text: "What’s the name of a place you go to see lots of animals?", answers: ["Home","Zoo","Jungle","Forest"], rightAnswer: "Zoo"),
//        Question(text: "Whose nose grew longer every time he lied?", answers: ["PeterPan", "Buratino", "MCQueen", "Pinocchio"], rightAnswer: "Pinocchio"),
//        Question(text: "If you freeze water, what do you get?", answers: ["Fire", "Water" , "Ice", "Nothing"], rightAnswer: "Ice"),
//        Question(text: "What colors are the stars on the American flag", answers: ["Green", "White", "Red", "Blue"], rightAnswer: "White"),
//        Question(text: "Where does the President of the United States live while in office?", answers: ["White House" , "Red House", "Green House", "Residence"], rightAnswer: "White House"),
//        Question(text: "How many planets are in our solar system?", answers: ["Ten","Nine", "Eight", "Seven"], rightAnswer: "Eight"),
//        Question(text: "What fruit do kids traditionally give to teachers?", answers: ["Apple", "Banana", "Orange", "Grape"], rightAnswer: "Apple"),
//        Question(text: "What is the color of a school bus?", answers: ["Red","Green","White","Yellow"], rightAnswer: "Yellow"),
//        Question(text: "Where is the Great Pyramid of Giza?", answers: ["Egypt","Russia","USA","India"], rightAnswer: "Egypt"),
//        Question(text: "How many days are in a year?", answers: ["355","365","369","345"], rightAnswer: "365"),
//    ]
//
//    func getQuestionText() -> String{
//        return quiz[questionNumber].text
//    }
//
//    func getAnswer() -> [String] {
//        return quiz[questionNumber].answers
//    }
//    mutating func getScore() -> Int {
//        return score
//    }
//
//
//    mutating func nextQuestion() {
//
//        if questionNumber + 1 < quiz.count {
//            questionNumber += 1
//        }else{
//            questionNumber = 0
//        }
//    }
//    mutating func getQuestionNumber() -> Int {
//
//        return questionNumber
//    }
//
//
//    mutating func checkAnswer(usingAnswer: String) -> Bool {
//        if usingAnswer == quiz[questionNumber].rightAnswer{
//            score += 1
//            return true
//        }else {
//            return false
//        }
//    }
//}
