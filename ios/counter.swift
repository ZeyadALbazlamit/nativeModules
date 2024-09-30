//
//  Counter.swift
//  testnativemodul
//
//  Created by Zeyad Albazlamit on 26/09/2024.
//

import Foundation

@objc(Counter)
class Counter:NSObject{
  
  private var count:Int = 0
  
  @objc func increment(_ callback: RCTResponseSenderBlock ){
    count += 1
    print("Hello i am from ios thread")
    callback([count])
  }
  
  @objc func decrement(_ resolve: RCTPromiseResolveBlock, reject: RCTPromiseRejectBlock ){
    if(count==1){
      let error = NSError(domain: "", code: 200, userInfo: nil);
      reject("ERROR_COUNT_ZERO","canat decrement", error)
    }else{
      resolve(count)
    }
    
  }
  
  @objc func getCount()->Int{
    return count
  }

  //build in
  @objc
  func constantsToExport() -> [String: Any] {
    return ["count":count,"hello":90]
  }

}
