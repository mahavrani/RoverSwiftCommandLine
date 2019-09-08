//
//  main.swift
//
//
//  Created by Maharani on 08/09/19.
//

let runclass = Rover()
let commandLineIO = CommandLineIO()
commandLineIO.writeMessage("Welcome to Mars Rover Problem Solution:")
//Changes for Input is live /static
if CommandLine.argc < 2 {
    runclass.interactiveMode()
}else {
    runclass.staticMode()

}
