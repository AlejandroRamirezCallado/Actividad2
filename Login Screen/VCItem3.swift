

import UIKit

import MapKit

class VCItem3: UIViewController, LocationAdminDelegate {
    
    @IBOutlet var elmapa: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataHolder.sharedInstance.locationAdmin?.delegate=self
        // Do any additional setup after loading the view.
        var coordTemp:CLLocationCoordinate2D = CLLocationCoordinate2D()
        coordTemp.latitude = 40.4165000
        coordTemp.longitude = -3.7025600
        agregarPin(coordenada: coordTemp, titulo: "PIN1")
        
        
        var coordTemp2:CLLocationCoordinate2D = CLLocationCoordinate2D()
        coordTemp2.latitude = 39.4165000
        coordTemp2.longitude = -5.7025600
        agregarPin(coordenada: coordTemp2, titulo: "PIN2")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func localizacionActualizada(coordenada: CLLocationCoordinate2D) {
        centralizarEnPosicion(coordenada: coordenada)
        
    }
    
    func agregarPin(coordenada:CLLocationCoordinate2D, titulo varTitulo:String){
        let annotation:MKPointAnnotation = MKPointAnnotation()
        annotation.coordinate = coordenada
        annotation.title = varTitulo
        elmapa?.addAnnotation(annotation)
        
    }
    
    func centralizarEnPosicion(coordenada: CLLocationCoordinate2D) {
        let region:MKCoordinateRegion=MKCoordinateRegion(center:coordenada,span:MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta:0.01))
        elmapa?.setRegion(region, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
