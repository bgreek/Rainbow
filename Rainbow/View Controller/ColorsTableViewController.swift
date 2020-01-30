//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Breena Greek on 1/29/20.
//  Copyright © 2020 Breena Greek. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [
        MyColor(name: "Red", color: .red),
        MyColor(name: "Orange", color: .orange),
        MyColor(name: "Yellow", color: .yellow),
        MyColor(name: "Green", color: .green),
        MyColor(name: "Blue", color: .blue),
        MyColor(name: "Indigo", color: .cyan),
        MyColor(name: "Violet", color: .purple)
    ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    // Index Path (x = section, y = row)
    // First tow of a tableview has an index path of (0,0)
    // (0,1) (0,2)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name
        return cell
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
