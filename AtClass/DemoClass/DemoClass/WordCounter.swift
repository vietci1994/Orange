//
//  WordCounter.swift
//  DemoClass
//
//  Created by Ci Viet on 9/10/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit
class Word {
    var word: String
    var count: Int = 1
    init(word: String) {
        self.word = word
    }
    func increment() {
        self.count++
    }
}
class WordCounter: GenericVC {
    var WordCountNSort: [Word] = [Word]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.readFileToString("FileText.txt")
        self.countWord("I like this. i hate that dog. Cat is fun,joke,love: is it cool?. dog,flower;dog. hate is bad hate.Love is all around. Red blue green yellow violet sexy")

        // Do any additional setup after loading the view.
    }
    
    func readFileToString(textFile: String) -> String? {
        let fileNameArr = textFile.componentsSeparatedByString(".")
        if fileNameArr.count != 2 {
            return nil
        }
        let filePath = NSBundle.mainBundle().pathForResource(fileNameArr[0], ofType: fileNameArr[1])
        println("\(filePath)")
        
        return String.stringWithContentsOfFile(filePath!, encoding: NSUTF8StringEncoding, error: nil)
    }
    func insertWordToWordCountNSort(word: String) {
        var index = 0
        if(WordCountNSort.count == 0) {
            WordCountNSort.append(Word(word: word))
            return
        }
        
        for item in WordCountNSort {
            if(word < item.word) {
                WordCountNSort.insert(Word(word: word), atIndex: index)
                return
            }
            else if(word == item.word ) {
                item.increment()
                return
            }
            else if (word > item.word) {
                index++
                if(index == WordCountNSort.count) {
                    WordCountNSort.append(Word(word: word))
                }
            }
            
        }
    }
    
    func shouldRemoveThisWord(word: String) -> Bool {
        let dummyWords = ["", " ","a", "all", "an", "i", "in", "is", "it", "are", "were", "he", "she", "they", "it's", "my", "his", "her", "their", "this", "that", "very", "much"]
        if contains(dummyWords, word) {
            return true
        }
        return false
    }
    
    func countWord(inputString: String) {
        let separator = NSMutableCharacterSet(charactersInString: " .,:;?!")
        let rawWordArray = inputString.lowercaseString.componentsSeparatedByCharactersInSet(separator)
        
        for word in rawWordArray {
            if !self.shouldRemoveThisWord(word) {
                self.insertWordToWordCountNSort(word)
            }
        }
        for item in WordCountNSort {
            self.inRa("\(item.word) : \(item.count)")
        }
    }
    
    
    
}
