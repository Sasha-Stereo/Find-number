//
//  Settings.swift
//  FindNumber
//
//  Created by Катерина on 14.12.2021.
//

import Foundation

enum KeysUsersDefaults{
    static let settingsGame = "settingsGame"
    static let recordGame = "settingsGame"
}

struct SettingsGame:Codable{
    var timerState:Bool
    var timeForGame:Int
}

class Settings{
    
    static var shared = Settings()
    
    private let defaultSettings = SettingsGame(timerState: true, timeForGame: 30)
    var currentSettings:SettingsGame{
      
        get{
            if let data = UserDefaults.standard.object(forKey: KeysUsersDefaults.settingsGame)as? Data{
                return try!PropertyListDecoder().decode(SettingsGame.self, from: data)
            }else{
                if let data = try? PropertyListEncoder().encode(defaultSettings){
                    UserDefaults.standard.setValue(data, forKey: KeysUsersDefaults.settingsGame)
                }
                return defaultSettings
            }
        }
        
        
        set{
  
            if let data = try? PropertyListEncoder().encode(newValue){
                UserDefaults.standard.setValue(data, forKey: KeysUsersDefaults.settingsGame)
            }
            }
        }
    func resetSettings(){
        currentSettings = defaultSettings
    }
    
    }

