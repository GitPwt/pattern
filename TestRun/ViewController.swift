//
//  ViewController.swift
//  TestRun
//
//  Created by Parag on 08/07/18.
//  Copyright © 2018 TestDemo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        printPattern(option: 4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func printPattern( option : Int ) -> Void {
        
        switch option{
        case 1:// Simple
            for _ in 1...5{
                
                for _ in 1...5{
                    
                    print("*", terminator: " ")
                }
                
                print("\n", terminator: "")
            }
            
        case 2:// Triangle (Right angled)
            for i in 1...5{
                
                for _ in 1...i{
                    
                    print("*", terminator: " ")
                }
                
                print("\n", terminator: "")
            }
            
        case 3:
            
            for i in 1...5{
                
                for _ in (i...5).reversed(){
                    
                    print(" ", terminator: " ")
                }
                
                for _ in (1...i){

                    print("*", terminator: " ")
                }
                
                print("\n", terminator: "")
            }
        case 4:
            
            for i in 1...5{
                
                for _ in 1...i{
                    
                    print(" ", terminator: " ")
                }
                
                for _ in (i...5).reversed(){
                    
                    print("*", separator: "", terminator: " ")
                }
                
                print("\n", terminator: "")
            }
        default:
            break
        }
        
        
    }
}

