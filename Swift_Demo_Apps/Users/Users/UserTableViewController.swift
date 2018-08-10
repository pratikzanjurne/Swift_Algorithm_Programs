import UIKit

class UserTableViewController: UITableViewController {
    
    var users = [User]()
    var i = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        loadUsers()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return users.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell else{
            fatalError("Cant load table view")
        }
        
        let userInfo = users[i]
        i += 1
        cell.name.text =  userInfo.name
        cell.lastName.text = userInfo.lastName
        cell.photo.image = userInfo.photo
        return cell
    }
    
    private func loadUsers(){
        
        let photo1 = UIImage(named: "user")
        let user1 = User(name: "Pratik", lastName: "Zanjurne", photo: photo1)
        let user2 = User(name: "Prasad", lastName: "Zanjurne", photo: photo1)
        let user3 = User(name: "Amit", lastName: "Ghorpade", photo: photo1)
        let user4 = User(name: "Mohit", lastName: "Ghorpade", photo: photo1)
        let user5 = User(name: "Sagar", lastName: "Ghorpade", photo: photo1)
        let user6 = User(name: "Akshay", lastName: "Ghorpade", photo: photo1)
        users += [user1,user2,user3,user4,user5,user6]
    }

}
