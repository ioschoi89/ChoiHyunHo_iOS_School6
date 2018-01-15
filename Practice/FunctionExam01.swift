//
//  ViewController.swift
//  FunctionExam
//
//  Created by choi hyunho on 2018. 1. 15..
//  Copyright © 2018년 choi hyunho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Area: 넓이 , Perimeter : 둘레, Circumference : 원의 둘레, Volume : 부피
        // 가로 : width, 세로 : column   , 높이 : height
        //사각형
        func square(width: Double, column: Double) -> String
        {
            if width == column
            {   //정사각형
                let area: Double = width * width
                let perimeter: Double = 4 * column
                return "한변의 길이가 \(width)인 정사각형의 넓이는 \(area)이고 둘레는 \(perimeter)입니다"
            }else
            {   //직사각형
                let area: Double = width * column
                let perimeter: Double = (2 * width) + (2 * column)
                return "가로가 \(width), 세로가 \(column)인 직사각형의 넓이는 \(area)이고 둘레는 \(perimeter)입니다"
            }
        }
        let resultSquare: String = square(width: 8, column: 9)
        let resultSquare2: String = square(width: 10, column: 10)
        print(resultSquare)
        print(resultSquare2)
        
        //원 반지름 : radius 파이 : pi
        func circle(radius: Double) -> String
        {
            let pi: Double = 3.14
            let circleArea: Double = radius * radius * pi
            let circlePerimeter: Double = 2 * radius * pi
            return "반지름이 \(radius)인 원의 넓이는 \(circleArea)이고 둘레는 \(circlePerimeter)입니다"
        }

        let resultCircle: String = circle(radius: 8)
        print(resultCircle)
        
        // 삼각형
        // 밑변 : base, 높이 : triHeight
        func triangle(base: Double, triHeight: Double) -> String
        {
            let triArea: Double = (base * triHeight)/2
            return "밑변이 \(base)이고 높이가 \(triHeight)인 삼각형의 넓이는 \(triArea)입니다"
        }
        let resultTriangle: String = triangle(base: 7, triHeight: 3)
        print(resultTriangle)
        
        //사다리꼴
        //밑변: tBase, 윗변: upperBase, 높이: tHeight
        func trapezoid(tBase: Double, upperBase: Double, tHeight: Double) -> String
        {
            let trapezoidArea: Double = tHeight*(tBase + upperBase)/2
            return "사다리꼴의 넓이는 \(trapezoidArea) 입니다"
        }
        let resultTrape: String = trapezoid(tBase: 3, upperBase: 4, tHeight: 2)
        print(resultTrape)
        
        //cube & solid
        //가로: cWidth, 세로: cColumn, 높이: cHeight
        func cube(cWidth: Double, cColumn: Double, cHeight: Double) -> String
        {
            let cubeVolume: Double = cWidth * cWidth * cWidth
            return "정육면체의 부피는 \(cubeVolume)입니다"
        }
        let resultCube: String = cube(cWidth: 4, cColumn: 4, cHeight: 4)
        print(resultCube)
        
        func solid(sWidth: Double, sColumn: Double, sHeight: Double) -> String
        {
            let solidVolume: Double = sWidth * sColumn * sHeight
            return "육면체의 부피는 \(solidVolume)입니다"
        }
        let resultSolid: String = solid(sWidth: 4, sColumn: 5, sHeight: 6)
        print(resultSolid)
        
        //circuler cylinder
        // 반지름 : cRadius , cPi : 3.14, 높이: cHeight
        func cylinder(cRadius: Double, cHeight: Double) -> String
        {
            let cPi: Double = 3.14
            let cylinderVolume: Double = cRadius*cRadius*cHeight*cPi
            
            return "원기둥의 부피는 \(cylinderVolume)입니다."
        }
        let resultCylinder: String = cylinder(cRadius: 5, cHeight: 7)
        print(resultCylinder)
        
        //sphere
        //반지름 : sRadius, sPi:3.14,
        func sphere(sRadius: Double) -> String
        {
            let sPi: Double = 3.14
            let sphereVolume: Double = (sRadius*sRadius*sRadius*sPi)*(4/3)
            
            return "구체의 부피는 \(sphereVolume)입니다"
        }
        let resultSphere: String = sphere(sRadius: 5)
        print(resultSphere)
        
        //cone
        //반지름 : coneRadius, 높이: coneHeight, conePi: 3.14
        func cone(coneRadius: Double, coneHeight: Double) -> String
        {
            let conePi: Double = 3.14
            let coneVolume: Double = (coneRadius*coneRadius*conePi*coneHeight)/3
            return "원뿔의 부피는 \(coneVolume) 입니다"
        }
        let resultCone: String = cone(coneRadius: 4, coneHeight: 5)
        print(resultCone)
    }

   


}

