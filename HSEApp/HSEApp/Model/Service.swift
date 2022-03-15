//
//  Service.swift
//  HSEApp
//
//  Created by Al Stark on 15.03.2022.
//

import UIKit
import Firebase
import FirebaseAuth

class Service{
    static let shared = Service()
    init() { }
    
    func creatNewUser(_ data: LoginField, completion: @escaping (ResponseCode) -> ()){
        Auth.auth().createUser(withEmail: data.email, password: data.password) {[weak self] result, err in
            if err == nil {
                if result != nil {
                    //let userid = result?.user.uid
                    //let reference = Firestore.firestore()
                    let email = data.email
                    completion(ResponseCode(code: 1))
                }
            } else {
                completion(ResponseCode(code: 0))
            }
        }
    }
    
    func confirmEmail(){
        Auth.auth().currentUser?.sendEmailVerification(completion: { err in
            if err != nil {
                print(err!.localizedDescription)
            }
        })
    }
}
