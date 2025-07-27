//
//  ViewModel.swift
//  AirBnbProject
//
//  Created by Rachit Sharma on 23/07/2025.
//

import Foundation
class ExploreViewModel:ObservableObject {
    @Published var listing = [Listing]()
    let Service:ExploreService
    
    init(service: ExploreService){
        self.Service = service
        Task{
            await self.getlisting()
        }
    }
    func getlisting()async{
        do{
            self.listing = try await ExploreService().getdata()
        }catch{
            print(error)
        }
    }
    
    
    func searchResult(query: String)  {
      let filterlisting =  listing.filter { $0.city.localizedCaseInsensitiveContains(query) ||
            $0.state.localizedCaseInsensitiveContains(query) }
        self.listing = filterlisting.isEmpty ? listing : filterlisting
    }
}
