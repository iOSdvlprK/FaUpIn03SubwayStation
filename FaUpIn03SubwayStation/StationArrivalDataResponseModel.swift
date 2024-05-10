//
//  StationArrivalDataResponseModel.swift
//  FaUpIn03SubwayStation
//
//  Created by joe on 5/10/24.
//

import Foundation

struct StationArrivalDataResponseModel: Decodable {
    var realtimeArrivalList: [RealTimeArrival]
    
    struct RealTimeArrival: Decodable {
        let line: String  // bound for ~
        let remainTime: String // time remaining until destination
        let currentStation: String // current station
        
        enum CodingKeys: String, CodingKey {
            case line = "trainLineNm"
            case remainTime = "arvlMsg2"
            case currentStation = "arvlMsg3"
        }
    }
}
