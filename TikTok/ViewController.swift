//
//  ViewController.swift
//  TikTok
//
//  Created by Evgen Classik on 11.06.2021.
//
import SnapKit
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var TableView = UITableView()
    private var VideoLinks: [String] = ["https://instagram.fmnl25-2.fna.fbcdn.net/v/t50.2886-16/161454505_126220179452986_7645785967961263824_n.mp4?_nc_ht=instagram.fmnl25-2.fna.fbcdn.net&_nc_cat=110&_nc_ohc=teeLtDVe9xMAX_lteI2&ccb=7-4&oe=605830BD&oh=add9716a62da11965e91cf90523ba002&_nc_sid=83d603",
                                        "https://instagram.fdiy1-2.fna.fbcdn.net/v/t50.2886-16/199482161_313328547000309_5830759393581019637_n.mp4?_nc_ht=instagram.fdiy1-2.fna.fbcdn.net&_nc_cat=109&_nc_ohc=_KKCEHbzdYAAX9s4atE&edm=AJBgZrYBAAAA&ccb=7-4&oe=60C619D2&oh=776dd43454fcff7156ff8021150b7804&_nc_sid=78c662&dl=1",
                                        "https://instagram.fsin9-1.fna.fbcdn.net/v/t50.2886-16/160242410_491585305339867_8737078020931524871_n.mp4?_nc_ht=instagram.fsin9-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=Tr3Eu9Os88EAX-Z5F8i&ccb=7-4&oe=60595EC3&oh=a522ebf2bf71dee1100497a873e0d240",
                                        "https://instagram.fcok4-1.fna.fbcdn.net/v/t50.2886-16/161092934_246935930440568_8175537815544894451_n.mp4?_nc_ht=instagram.fcok4-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=S78ggB6m9BgAX_uL6N3&ccb=7-4&oe=6058E3A8&oh=28500682ee17c3233b5917a74b9c3430"]

    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        TableView.isPagingEnabled = true
        TableView.showsVerticalScrollIndicator = false
        
        view.addSubview(TableView)
        TableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        let blackView = UIView()
        blackView.backgroundColor = .black
        view.addSubview(blackView)
        blackView.snp.makeConstraints { maker in
            maker.left.right.bottom.equalToSuperview()
            maker.height.equalTo(80)
        }
        
        let stackView = UIStackView ()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        let btn1 = UIButton()
        btn1.setImage(UIImage(named: "Home"), for: .normal)
        let btn2 = UIButton()
        btn2.setImage(UIImage(named: "Discover"), for: .normal)
        let btn3 = UIButton()
        btn3.setImage(UIImage(named: "Button Shape"), for: .normal)
        let btn4 = UIButton()
        btn4.setImage(UIImage(named: "Inbox"), for: .normal)
        let btn5 = UIButton()
        btn5.setImage(UIImage(named: "Me"), for: .normal)
        
        stackView.addArrangedSubview(btn1)
        stackView.addArrangedSubview(btn2)
        stackView.addArrangedSubview(btn3)
        stackView.addArrangedSubview(btn4)
        stackView.addArrangedSubview(btn5)
        
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { maker in
            maker.left.right.bottom.equalToSuperview().inset(15)
            maker.height.equalTo(60)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return VideoLinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return VideoTableViewCell(link: VideoLinks[indexPath.row])
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height
    }

}

