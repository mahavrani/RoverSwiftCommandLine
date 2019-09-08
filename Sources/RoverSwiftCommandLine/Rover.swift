//
//  Rover.swift
//  
//
//  Created by Maharani on 08/09/19.
//

public class Rover {
    
    static let N  = 1
    static let E = 2
    static let S = 3
    static let W = 4
    var x  = 0 , y = 0
    var facing = N
    let commandLineIO = CommandLineIO()

    // MARK:To set the Rover Position
    func setPosition(x: Int, y: Int,facing : Int) {
        self.x = x
        self.y = y
        self.facing = facing
    }
    
    // MARK:To print the Rover output

    func recordPosition() {
        var dir : Character = "N"
        if (facing == 1) {
            dir = "N";
        } else if (facing == 2) {
            dir = "E";
        } else if (facing == 3) {
            dir = "S";
        } else if (facing == 4) {
            dir = "W";
        }
        print("Rover Output : \n \(x) \(y) \(dir)")
    }
    
    // MARK: Methods to process the instructions

    func process (commands : String)  {
        for i in commands {
            process(command: i)
        }
    }
    
    private func process(command : Character) {
        if (command == "L") {
            turnLeft();
        } else if (command == ("R")) {
            turnRight();
        } else if (command == ("M")) {
            move();
        } else {
            print("error")
            
        }
    }
    
    // MARK: Method To move the Rover to Specified direction
    private func move() {
        if (facing == Rover.N) {
            y += 1;
        } else if (facing == Rover.E) {
            x +=  1 ;
        } else if (facing == Rover.S) {
            y -= 1;
        } else if (facing == Rover.W) {
            x -= 1;
        }
    }
    
    private func turnLeft() {
        facing = (facing - 1) < Rover.N ? Rover.W : facing - 1;
    }
    
    
    private func turnRight() {
        facing = (facing + 1) > Rover.W ? Rover.N : facing + 1;
    }
    
    // MARK: Switch to Static input to show the user Rover Output
    func staticMode() {
        commandLineIO.writeMessage("Rover Input")
        commandLineIO.writeMessage(" Rover1 Landing:1 2 N , Instructions:LMLMLMLMM")
        commandLineIO.writeMessage(" Rover2 Landing:3 3 E , Instructions:MMRMMRMRRM")
        self.setPosition(x: 1, y: 2, facing: Rover.N)
        self.process(commands: "LMLMLMLMM");
        self.recordPosition()
        self.setPosition(x: 3, y: 3, facing: Rover.E)
        self.process(commands: "MMRMMRMRRM");
        self.recordPosition()
    }
    
    // MARK: Switch to Interactive input to show the user Rover Output

    func interactiveMode() {
        commandLineIO.writeMessage("Enter X Co-ordinate:")
        let x = commandLineIO.getInput()
        commandLineIO.writeMessage("Enter Y Co-ordinate:")
        let y = commandLineIO.getInput()
       commandLineIO.writeMessage("Enter direction by choosing N,E,S,W :")
       let direction = commandLineIO.getInput()
        commandLineIO.writeMessage("Enter commands :")
        let commands = commandLineIO.getInput()
        self.setPosition(x: Int(x) ?? 0, y: Int(y) ?? 0, facing: Int(direction) ?? 1)
        self.process(commands: commands);
        self.recordPosition()
    }

}
