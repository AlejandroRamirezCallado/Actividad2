
import UIKit
import Firebase
import FirebaseDatabase

class DataHolder: NSObject {
    func initFireBase(){
        FIRApp.configure()
        firDataBaseRef = FIRDatabase.database().reference()
    }
    
    static let sharedInstance:DataHolder = DataHolder();
    
    var sNombreUsuario:String?
    var sPassword:String?
    var locationAdmin:LocationAdmin?
    var firDataBaseRef: FIRDatabaseReference!
    
    
    
    func initLocationAdmin(){
        locationAdmin=LocationAdmin()
    }
    
}
