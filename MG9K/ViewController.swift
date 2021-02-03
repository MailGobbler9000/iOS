//
//  ViewController.swift
//  MG9K
//
//  Created by Jackie Chan on 10/6/20.
//  
//

import UIKit
import AWSAuthUI
import AWSAuthCore
import AWSMobileClient
import AWSAppSync

class ViewController: UIViewController, UITextFieldDelegate{
    
    // MARK: Properties
    
    var appSyncClient: AWSAppSyncClient?
    
    struct bLog: Codable {
        var barcode: String
        var status: String
    }
    struct pLog: Codable {
        var barcode: String?
        var time: String?
    }
    
    
    // Intialization of Barcode input field and output field
    @IBOutlet weak var barcodeInput: UITextField!
    @IBOutlet weak var barcodeOutput: UILabel!
    
    // Barcode Output Log
    @IBOutlet weak var barcodeName: UILabel!
    @IBOutlet weak var barcodeOutputLog: UILabel!
    
    // Package Output Log
    @IBOutlet weak var packageName: UILabel!
    @IBOutlet weak var packageOutputLog: UILabel!
    

    // Package Output Log
    
    
    // Letter-Mail Output Log
    
    // initialize barcode input
    var barcode : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // AWS Cognito
        initializeAWSMobileClient()
        showSignIn()
        
        //Reference AppSync client from App Delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
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
                    //print("Logged Out")
                    DispatchQueue.main.async {
                       // self.signOutLocally()
                        self.showSignIn()
                }
                    
                // Not used: For 3rd Party Sign-In
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
    /*
    override var description: String{
        description += "Barcode: \(bLog.barcode)\n"
    }
    */


    //MARK: Actions
    
    // Adds the barcode into db
    @IBAction func addBarcode(_ sender: UIButton) {
        barcode = barcodeInput.text!
        barcodeOutput.text = "Last Inputted Barcode: \(barcode)"
        print(barcode)
        
        appSyncClient?.perform(mutation: AddBarcodeMutation(barcode: "\(barcode)" ,value: "Not Delivered")) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        }
    }
    
    
    @IBAction func showBarcodeLog(_ sender: UIButton) {
        var barcodeArr = [bLog]()
        
        appSyncClient?.fetch(query: GetAllBarcodesQuery(count:1000000000))  { (result, error) in
                if error != nil {
                    print("Error......")
                    print(error?.localizedDescription ?? "")
                    return
                }
            result?.data?.getAllBarcodes.barcodes.forEach{print (($0.barcode) + " " + ($0.value ?? "Not Delivered"))}
            
            result?.data?.getAllBarcodes.barcodes.forEach {barcodeArr.append(bLog(barcode: $0.barcode, status: $0.value ?? "Not Delivered"))
                }
            print(barcodeArr)
            
            var idArray = [String]()
            for bcodes in barcodeArr {
                idArray.append(bcodes.barcode)
                idArray.append(bcodes.status)
            }
            print(idArray)
            let values = idArray.joined(separator: " \n")
            self.barcodeOutputLog.text = values
            self.barcodeName.text = "Barcodes"
            
            self.barcodeOutputLog.lineBreakMode = .byCharWrapping
            self.barcodeOutputLog.numberOfLines = 0
            //let idArray = barcodeArr.map({ (barcode)})
            
        }
            /*
            let arr = barcodeArr[0].map { () -> bLog in
                return String(bLog)
            }.joined()
        }*/
        
            /*
            for i in barcodeArr{
                if(i != nil){
                    //for j in self.barcodeLogOutput{
                let tempBarcode = i.barcode
                        let tempStatus = i.status
                print("\(tempBarcode)  \(tempStatus) ")
                        //j.text = tempBarcode + " " + tempStatus
                   // }
                }
                else{
                    print("Error: \(String(describing: error?.localizedDescription))")
                }
            }
            }*/
    
    }

    
    
    // Sends a request to unlock
    @IBAction func UnlockRequest(_ sender: UIButton) {
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
    /*
    // Grab all barcodes from into db
    @IBAction func barcodeLog(_ sender: UIButton) {
        
        var barcodeArr = [bLog]()
        
        appSyncClient?.fetch(query: GetAllBarcodesQuery(count:100))  { (result, error) in
                if error != nil {
                    print("Error......")
                    print(error?.localizedDescription ?? "")
                    return
                }
            
            result?.data?.getAllBarcodes.barcodes.forEach {barcodeArr.append(bLog(barcode: $0.barcode, status: $0.value ?? "Not Delivered"))
                }
            for i in barcodeArr{
                if(i != nil){
                    let tempBarcode = i.barcode
                    let tempStatus = i.status
                    print("\(tempBarcode)  \(tempStatus) ")
                }
                else{
                    print("Error: \(String(describing: error?.localizedDescription))")
                }
            }

            }
    }*/
    
    
    @IBAction func packageLog(_ sender: UIButton) {
        var packageArr = [pLog]()
        appSyncClient?.fetch(query: GetAllPackagesQuery(count:100))  { (result, error) in
                if error != nil {
                    print("Error......")
                    print(error?.localizedDescription ?? "")
                    return
                }
            
            result?.data?.getAllPackages.packages.forEach {print(($0.barcode) + " " + ($0.time ?? "0"))}
            
            result?.data?.getAllPackages.packages.forEach {packageArr.append(pLog(barcode: $0.barcode, time: $0.time ?? "0"))
                }
            
            print(packageArr)
            
            var idArray = [String]()
            for packages in packageArr {
                idArray.append(packages.barcode!)
                idArray.append(packages.time!)
            }
            print(idArray)
            let values = idArray.joined(separator: " \n")
            self.packageOutputLog.text = values
            self.packageName.text = "Packages"
            
            self.packageOutputLog.lineBreakMode = .byCharWrapping
            self.packageOutputLog.numberOfLines = 0
            
        }
    }
    /*
    // Grabs all packages from db
    @IBAction func packageLog(_ sender: UIButton) {
        
        var packageArr = [pLog]()
        appSyncClient?.fetch(query: GetAllPackagesQuery(count:100))  { (result, error) in
                if error != nil {
                    print("Error......")
                    print(error?.localizedDescription ?? "")
                    return
                }
            
            result?.data?.getAllPackages.packages.forEach {packageArr.append(pLog(barcode: ($0.barcode), time: ($0.time ?? "0"))) }
            for i in packageArr{
                guard let tempBarcode = i.barcode, let tempTime = i.time else {
                    return
                }
                    //print(String(describing: tempBarcode) + " " + String(describing: tempTime))
                    self.packageLogOutput.text = (tempBarcode as? String)
                    self.packageLogOutput.text = (tempTime as? String)
                }
                    
                }
            }*/
    
    
    // Grabs all letter-mail from db/*
    @IBAction func letterMailLog(_ sender: UIButton) {
        appSyncClient?.fetch(query: GetAllLogsQuery(count:100000))  { (result, error) in
                if error != nil {
                    print("Error......")
                    print(error?.localizedDescription ?? "")
                    return
                }
            
            result?.data?.getAllLogs.logs.forEach {print(($0.id) + " " + ($0.time ?? "0")) }
            }
    }
  
    
    
    /*
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

    }*/
    
    /*
    func runQuery(){
        appSyncClient?.fetch(query: GetAllBarcodesQuery(count:100))  { (result, error) in
            if error != nil {
                print("Error......")
                print(error?.localizedDescription ?? "")
                return
            }
            result?.data?.getAllBarcodes.barcodes.forEach {print(($0.barcode) + " " + ($0.value ?? "0")) }
        }

    }*/
    
}
    




