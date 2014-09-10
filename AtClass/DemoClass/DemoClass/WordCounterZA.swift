//
//  WordCounterZA.swift
//  DemoClass
//
//  Created by Ci Viet on 9/10/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

import UIKit

class WordCounterZA: GenericVC {
    var WordCountZA: [Word] = [Word]()
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.countZA()

        // Do any additional setup after loading the view.
        
        
    }
    func shouldRemoveThisWord(word: String) -> Bool {
        let dummyWords = ["", " ","a", "all", "an", "i", "in", "is", "it", "are", "were", "he", "she", "they", "it's", "my", "his", "her", "their", "this", "that", "very", "much"]
        if contains(dummyWords, word) {
            return true
        }
        return false

    }
    func insertWord(word: String) {
        var index = 0
        if(WordCountZA.count == 0) {
            WordCountZA.append(Word(word: word))
            return
        }
        for item in WordCountZA {
            if(word > item.word) {
                WordCountZA.insert(Word(word: word), atIndex: index)
                return
            }
            else if(word == item.word) {
                item.increment()
                return
            }
            else if(word < item.word) {
                index++
                if(index == WordCountZA.count) {
                    WordCountZA.append(Word(word: word))
                }
            }
        }
    }
    
    func SortFreq() {
        
        for item in WordCountZA {
            var wordCount = 0
            var wordString = ""
            for var i = 0; i < WordCountZA.count-1;i++ {
            for var j = i+1; j < WordCountZA.count-1;j++ {
                if(WordCountZA[i].count < WordCountZA[j].count) {
                    wordCount = WordCountZA[i].count
                    wordString = WordCountZA[i].word
                    
                    WordCountZA[i].count = WordCountZA[j].count
                    WordCountZA[i].word = WordCountZA[j].word
                    
                    WordCountZA[j].count = wordCount
                    WordCountZA[j].word = wordString
                }
                }
            }
            
            
        }
    }
    func arrayString(inputString: String) -> [String]{
        let separator = NSMutableCharacterSet(charactersInString: " .,:;?!")
        let rawWordArray = inputString.lowercaseString.componentsSeparatedByCharactersInSet(separator)
        return rawWordArray
        
    }
    func countZA() {
        var string = "I like this. i hate that dog. Cat is fun,joke,love: is it cool?. dog,flower;dog. hate is bad hate.Love is all around. Red blue green yellow violet sexy"
        for word in self.arrayString(string) {
            if !self.shouldRemoveThisWord(word) {
                self.insertWord(word)
            }
        }
        for item in WordCountZA {
            self.inRa("\(item.word) : \(item.count)")
        }
        self.inRa("_________________")
        self.SortFreq()
        for item in WordCountZA {
            self.inRa("\(item.word) : \(item.count)")
        }
    }
    }
