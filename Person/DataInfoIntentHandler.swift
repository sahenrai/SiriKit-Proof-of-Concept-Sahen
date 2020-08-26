//
//  DataIntentHandler.swift
//  Data
//
//  Created by Centelon on 21/9/19.
//  Copyright © 2019 Centelon. All rights reserved.
//

import Foundation
import Intents

class DataInfoIntentHandler : NSObject, DataInfoIntentHandling {
    func resolveKey(for intent: DataInfoIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
          if intent.key == "key" {
                  completion(INStringResolutionResult.needsValue())
              }else{
                  completion(INStringResolutionResult.success(with: intent.key ?? ""))
              }
    }
    
    func resolveValue(for intent: DataInfoIntent, with completion: @escaping (INStringResolutionResult) -> Void) {
             if intent.value == "value" {
               completion(INStringResolutionResult.needsValue())
           }else{
               completion(INStringResolutionResult.success(with: intent.value ?? ""))
           }
    }
    
    
    func handle(intent: DataInfoIntent, completion: @escaping (DataInfoIntentResponse) -> Void) {
        print(intent.key!)
        print(intent.value!)
    }

    
}
