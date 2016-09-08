//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {
    
    var mazeController: MazeController!
    
    func moveComplexRobot(myRobot: ComplexRobotObject) {
        
        // You may want to paste your Part 2 implementation of moveComplexRobot() here
        
        // You may want to paste your Part 1 implementation of moveComplexRobot() here
        
        // Step 2.1c
        // TODO: Save the return value of checkWalls() to a constant called myWallInfo.
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        let myWallInfo = checkWalls(myRobot)
        

        
        // Step 2.2a
        // Categorize the robot's current location based on the number of walls
        
        // Uncomment the line of code below
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
        
        
        // TODO: Define the constant, isTwoWayPath
        // TODO: Define the constant, isDeadEnd
        
        // Step 2.2b
        // Test whether the values of the above constants are correct
        
                
        // Step 2.3a
        // Three-way Path - else-if statements
        
        // TODO: If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left. Uncomment the code below.
        
        
        // TODO: If the robot encounters a three way junction and there is NO wall ahead, it should continue straight or rotate (you need to write this else-if statement)
        
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        } else if isThreeWayJunction && !robotIsBlocked{
            continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
            
        }
            
            // Step 2.3b
            // Two-way Path - else-if statements
            
            // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
            
            // TODO: If the robot encounters a two way path and there IS a wall ahead, it should randomly rotate.
            
        else if isTwoWayPath && !robotIsBlocked {
            myRobot.move()
        } else if  isTwoWayPath && robotIsBlocked {
            turnTowardClearPath(myRobot, wallInfo: myWallInfo)
        }
            
            // Step 2.3c
            // Dead end - else-if statements
            
            // TODO: If the robot encounters a dead end and there is NO wall ahead it should move forward.
            
            // TODO: If the robot encounters a dead end and there IS a wall ahead it should rotateRight().
            
        else if isDeadEnd && !robotIsBlocked {
            myRobot.move()
        } else if isDeadEnd && robotIsBlocked{
            myRobot.rotateRight()
        }
            
        
            // Step 3.2
            // Two-way Path - else-if statements
            
            
            // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
            
            // TODO: If the robot encounters a two way path and there IS a wall ahead, it should turn in the direction of the clear path.
            
    
        
        
        
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
        self.moveComplexRobot(robot)
    }
    
}