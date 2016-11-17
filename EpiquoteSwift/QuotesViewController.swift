//
//  LatestViewController.swift
//  EpiquoteSwift
//
//  Created by Maxime Cattet on 17/11/2016.
//
//

import UIKit
import IGListKit
import PureLayout

class QuotesViewController: UIViewController, IGListAdapterDataSource, IGListDisplayDelegate {

    lazy var adapter: IGListAdapter = {
        return IGListAdapter(updater: IGListAdapterUpdater(), viewController: self, workingRangeSize: 0)
    }()
    
    let collectionView = IGListCollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    var data = [] as [Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        
        self.collectionView.backgroundColor = .white
        self.view.addSubview(self.collectionView)
        self.adapter.collectionView = self.collectionView
        self.adapter.dataSource = self
        
        self.edgesForExtendedLayout = .all
        self.collectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: self.tabBarController!.tabBar.frame.height, right: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.collectionView.frame = view.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: IGListAdapterDataSource
    
    func objects(for listAdapter: IGListAdapter) -> [IGListDiffable] {
        var items = [IGListDiffable]()
        for obj in self.data {
            items.append(obj as! IGListDiffable)
        }
        
        return items
    }
    
    func listAdapter(_ listAdapter: IGListAdapter, sectionControllerFor object: Any) -> IGListSectionController {
        return QuoteSectionController()
    }

    func emptyView(for listAdapter: IGListAdapter) -> UIView? {
        let view = UIView()
        let label = UILabel()
        label.text = "Pas de quotes ici"
        label.textAlignment = .center
        view.addSubview(label)
        
        label.autoPinEdgesToSuperviewEdges()
        
        return view
    }
    
    // MARK: IGListDisplay Delegate
    
    func listAdapter(_ listAdapter: IGListAdapter, willDisplay sectionController: IGListSectionController) { }
    func listAdapter(_ listAdapter: IGListAdapter, didEndDisplaying sectionController: IGListSectionController) { }
    func listAdapter(_ listAdapter: IGListAdapter, willDisplay sectionController: IGListSectionController, cell: UICollectionViewCell, at index: Int) { }
    func listAdapter(_ listAdapter: IGListAdapter, didEndDisplaying sectionController: IGListSectionController, cell: UICollectionViewCell, at index: Int) { }
}
