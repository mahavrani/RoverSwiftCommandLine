# RoverSwiftCommandLine

This is a Command line app solution for Mars Rover Problem in Swift Language.

Input will be :

Plateau:5 5
Rover1 Landing:1 2 N
Rover1 Instructions:LMLMLMLMM
Rover2 Landing:3 3 E
Rover2 Instructions:MMRMMRMRRM

Output Will be : 

1 3 N
5 1 E

To run this App in Mac Terminal 
1) Go to the root folder of this App. 
2)Type the command swift build  in terminal.

Static Input & Outpit 
1)Type .build/debug/RoverSwiftCommandLine 1 to see the static output in commandline.

Interactive Input & Output 
1)Type .build/debug/RoverSwiftCommandLine to check for the interactive input for X,Y,direction and instructions of the rover.
2)After giving the input Rover output will be displayed in terminal.

Note : Xcode Command line tool needs to installed already

PFB of the commands used in Terminal 

SVS-MAHA:RoverSwiftCommandLine maharani$ swift build

SVS-MAHA:RoverSwiftCommandLine maharani$ .build/debug/RoverSwiftCommandLine 1


Welcome to Mars Rover Problem Solution:
Rover Input
Rover1 Landing:1 2 N , Instructions:LMLMLMLMM
Rover2 Landing:3 3 E , Instructions:MMRMMRMRRM

Rover Output : 
1 3 N

Rover Output : 
5 1 E

SVS-MAHA:RoverSwiftCommandLine maharani$ .build/debug/RoverSwiftCommandLine 

Welcome to Mars Rover Problem Solution:
Enter X Co-ordinate:
1

Enter Y Co-ordinate:
2

Enter direction by choosing N,E,S,W :
N

Enter commands :
LMLMLMLMM

Rover Output : 
1 3 N


SVS-MAHA:RoverSwiftCommandLine maharani$ swift test

Test Suite 'All tests' started at 2019-09-08 22:18:48.070
Test Suite 'RoverSwiftCommandLinePackageTests.xctest' started at 2019-09-08 22:18:48.071
Test Suite 'RoverSwiftCommandLineTests' started at 2019-09-08 22:18:48.071
Test Case '-[RoverSwiftCommandLineTests.RoverSwiftCommandLineTests testExample]' started.
Test Case '-[RoverSwiftCommandLineTests.RoverSwiftCommandLineTests testExample]' passed (0.084 seconds).
Test Suite 'RoverSwiftCommandLineTests' passed at 2019-09-08 22:18:48.155.
Executed 1 test, with 0 failures (0 unexpected) in 0.084 (0.084) seconds
Test Suite 'RoverSwiftCommandLinePackageTests.xctest' passed at 2019-09-08 22:18:48.155.
Executed 1 test, with 0 failures (0 unexpected) in 0.084 (0.084) seconds
Test Suite 'All tests' passed at 2019-09-08 22:18:48.155.
Executed 1 test, with 0 failures (0 unexpected) in 0.084 (0.085) seconds
