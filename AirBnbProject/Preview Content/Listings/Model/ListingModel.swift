//
//  ListingModel.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import Foundation
struct Listing: Identifiable, Codable,Hashable {
    let id: UUID
    let ownerUid: UUID
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    let numberOfBeds: Int
    var pricePerNight: Int
    let latitude: Double
    let longitude: Double
    let address: String
    var images:[String]
    let city: String
    let state: String
    let title: String
    var rating:Double
    let type:listingtype
    var fetures:[listingfeatures]
    var amenities:[listingamenities]
}
enum listingfeatures:Int, Identifiable,Codable,Hashable{
    case selfCheakIn
    case SuperHost
    
    var imageName:String{
    switch self {
            case .selfCheakIn:
        return "door.left.hand.open"
        case .SuperHost:
        return "medal"
        }
    }
    
    var title:String{
        switch self {
        case.selfCheakIn:
            "Self Cheak In"
        case .SuperHost:
            "Super Host"
        }
    }
    var subtitle:String{
        switch self{
        case.selfCheakIn: "property owners can check in anytime"
        case.SuperHost: "Super Hosts get extra support"
        }
    }
    var id: Int{return self.rawValue}
}


enum listingamenities:Int, Identifiable,Codable,Hashable{
    case kitchen
    case pool
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var imageName:String{
        switch self {
        case .pool :
            return "figure.pool.swim"
            
        case .kitchen:
            return "house.fill"
        case.wifi: return "wifi"
        case .laundry:
            return "washer"
        case .tv:
            return "tv"
        case .alarmSystem:
            return  "checkerboard.shield"
        case .office:
            return "pencil.and.ruler.fill"
        case .balcony:
            return "building"
        }
    }
    
    var title:String{
        switch self {
        case .pool : 
            return "Pool"
        case .kitchen:
            return "kitchen"
        case.wifi:
            return "Wifi"
        case .laundry:
            return "Laundry"
        case .tv:
            return "Tv"
        case .alarmSystem:
            return  "Alarm System"
        case .office:
            return "Office"
        case .balcony:
            return "Balcony"
        }
    }
    
    var id:Int{return self.rawValue}
}
enum listingtype:Int, Identifiable,Codable,Hashable{
    case apartment
    case house
    case villa
    case condo
    case townhouse
    
    var description:String{
        switch self {
            case .apartment:
            return "Apartment"
        case.house:
            return "House"
        case.villa:
            return "Villa"
            case .condo:
            return "Condo"
        case .townhouse:
            return "Townhouse"
            
            
        }
    }
    var id: Int {
        return self.rawValue
    }
}
