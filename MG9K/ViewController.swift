//
//  ViewController.swift
//  MG9K
//
//  Created by Jackie Chan on 10/6/20.
//  updated 10/20/20
//  updated 10/21/20

import UIKit
import AWSAuthUI
import AWSAuthCore
import AWSMobileClient
import AWSAppSync

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    var appSyncClient: AWSAppSyncClient?
    
    // Intialization of Barcode input field and output field
    @IBOutlet weak var barcodeInput: UITextField!
    @IBOutlet weak var barcodeOutput: UILabel!
    
    // initialize barcode input
    var barcode : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        initializeAWSMobileClient()
        showSignIn()
        
        //Reference AppSync client from App Delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        runQuery()
        runMutation()
    }
    
    // AWS Sign in 
    func showSignIn(){
        if !AWSSignInManager.sharedInstance().isLoggedIn {
            AWSAuthUIViewController
                .presentViewController(with: self.navigationController!,
                                       configuration: nil,
                                       completionHandler: { (provider: AWSSignInProvider, error:
                                                             Error?) in
                                        if error != nil {
                                            print("Error occurred: \(String(describing: error))")
                                        } else {
                                            // Sign In Successful
                                            print("Logged in with provider: \(provider.identityProviderName) with Token:\(provider.token())")
                                        }
                                       })
        }
    }
    
    func initializeAWSMobileClient(){
        AWSMobileClient.default().initialize { (userState, error) in
            
            //self.addUserStateListener() // Register for user state changes
            
            if let userState = userState{
                switch(userState){
                case.signedIn: // is Signed IN
                    print("Logged In")
                    print("Cognito Identity ID (authenticated): \(AWSMobileClient.default().identityId))")
                
                case.signedOut: // is Signed OUT
                    print("Logged Out")
                    DispatchQueue.main.async {
                       // self.signOutLocally()
                        self.showSignIn()
                }
                /*
                case.signedOutUserPoolsTokenInvalid: // UserPools refresh token Invalid
                    print("User Pools refresh token is invalid or expired.")
                    DispatchQueue.main.async {
                        self.showSignIn()
                    }
                case.signedOutFederatedTokensInvalid: // FaceBook or Google refresh token invalid
                    print("Federated refresh token is invalid or expired.")
                    DispatchQueue.main.async {
                        self.showSignIn()
                    }*/
                default:
                    AWSMobileClient.default().signOut()
                }
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    
    //MARK: UITextFieldDelegate





    //MARK: Actions
    
    @IBAction func addBarcode(_ sender: UIButton) {
        barcode = barcodeInput.text!
        barcodeOutput.text = "Last Inputted Barcode: \(barcode)"
        print(barcode)
    }
    
    // Grab all barcodes from into db
    func runQuery(){
        appSyncClient?.fetch(query: GetAllBarcodesQuery(count:100))  { (result, error) in
            if error != nil {
                print("Error......")
                print(error?.localizedDescription ?? "")
                return
            }
            result?.data?.getAllBarcodes.barcodes.forEach {print(($0.barcode) + " " + ($0.value ?? "0")) }
        }

    }
    
    func runMutation(){

        appSyncClient?.perform(mutation: UnlockRequestMutation(id: "1" ,value: "1")) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        }

    }
    
}
    




