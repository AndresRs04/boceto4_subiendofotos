//
//  ViewController.swift
//  boceto4_subiendo_fotos
//
//  Created by alumno on 10/30/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var aqui_va_la_foto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func subir_foto_para_mostrar(_ sender: Any) {
        let saeleccionar_imagen = UIImagePickerController()
        saeleccionar_imagen.delegate = self
        
        saeleccionar_imagen.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        saeleccionar_imagen.allowsEditing = false
        
        self.present(saeleccionar_imagen, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagen_seleccionada = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            aqui_va_la_foto.image = imagen_seleccionada
        }
        else {
            //Que hacer en caso de que no identificar que selecciono
            self.dismiss(animated: true)
        }
    }
    

    

}

