import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    // MARK: - Class methods
    
    private func setupTabBarController() {
        let home = UINavigationController(rootViewController: MoviesViewController())
        let symbolConfiguration = UIImage.SymbolConfiguration(scale: .medium)
        
        let homeSymbol = UIImage(systemName: "film", withConfiguration: symbolConfiguration)
        home.tabBarItem.image = homeSymbol
        home.tabBarItem.title = "Popular movies"
        
        let favorites = UINavigationController(rootViewController: FavoriteMoviesViewController())
        
        let heartSymbol = UIImage(systemName: "heart", withConfiguration: symbolConfiguration)
        favorites.tabBarItem.image = heartSymbol
        favorites.tabBarItem.title = "Favorites"
        
        self.setViewControllers([home, favorites], animated: true)
    }
}
