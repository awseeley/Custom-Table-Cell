



import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    var tableData: [String] = ["Ferrari", "BMW", "Mitsubishi", "Lambo"]
    
    // 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Register custom cell
        let nib = UINib(nibName: "vwTblCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
    }
    
    // 2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableData.count
    }
    
    
    // 3
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell 	{
        
        let cell:TblCell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! TblCell
        
        cell.lblCarName.text = tableData[indexPath.row]
        cell.imgCarName.image = UIImage(named: tableData[indexPath.row])
        
        return cell
    }
    
    // 4
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row \(indexPath.row) selected")
    }
    
    // 5
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
    
    
    
    
}

