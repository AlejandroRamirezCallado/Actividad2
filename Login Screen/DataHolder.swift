
import UIKit
import Firebase


class DataHolder: NSObject {
    func initFireBase(){
        FIRApp.configure()
    }
    
    static let sharedInstance:DataHolder = DataHolder();
    
    var sNombreUsuario:String?
    var sPassword:String?
    var locationAdmin:LocationAdmin?
    
    
    func initLocationAdmin(){
        locationAdmin=LocationAdmin()
    }
    
}
