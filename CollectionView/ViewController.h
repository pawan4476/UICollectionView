//
//  ViewController.h
//  CollectionView
//
//  Created by Nagam Pawan on 9/15/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>{
    NSArray *photos;
}
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;



@end

