//
//  LibroTableViewController.swift
//  LibroTableVista
//
//  Created by Mario E Salvatierra V on 6/30/16.
//  Copyright © 2016 Dunas. All rights reserved.
//

import UIKit

class LibroTableViewController: UITableViewController {

     var mislibros: [UnLibro] = [UnLibro]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let ima: UIImage? = UIImage(imageLiteral: "Portada.png")
//        
//        if ima != nil {print("ima is not nil \(ima)")}
//        let librouno = UnLibro(titulo: "title", autores: "authors", portada: ima)
//        mislibros.append(librouno)
        
        self.title = "Mis libros favoritos"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mislibros.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("IdentCelda", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = self.mislibros[indexPath.row].titulo
        //cell.imageView?.image = self.mislibros[indexPath.row].portada
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    @IBAction func goBack(segue: UIStoryboardSegue) {
        print("someone unwound")
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "DetalleSegue" {
            let mostrarDetalle = segue.destinationViewController as! DetallesViewController
        
            let ip = self.tableView.indexPathForSelectedRow
        
            mostrarDetalle.elLibro = mislibros[(ip?.row)!]
        }
        
        
        
    }
    

}
