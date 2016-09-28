//
//  ViewController.m
//  CollectionView
//
//  Created by Nagam Pawan on 9/15/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "ViewController2.h"

@interface ViewController ()
//@property (assign , nonatomic) NSInteger tableIndex;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    photos = [[NSArray alloc]initWithObjects:@"115_N1acOzVz.jpg", @"2_ZNPTLxwV.jpg", @"33333_pD28cWcn.jpg", @"classiccou_qHRtcBnf.jpg", @"absnature_XEnZpCW8.jpg", @"alone-_3613468_jpeg.jpg", @"car_F4PnIlUZ.jpg", @"cutekitty_d3g0QsBF.jpg", nil];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return photos.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.img.image = [UIImage imageNamed:[photos objectAtIndex:indexPath.row]];
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:50];
    recipeImageView.image = [UIImage imageNamed:[photos objectAtIndex:indexPath.row]];
    
    return cell;
}
//-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
//   _tableIndex = indexPath.item;
//    [self performSegueWithIdentifier:@"send" sender:self];
//}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *path = [[self.collectionView indexPathsForSelectedItems]objectAtIndex:0];
    ViewController2 *table = [segue destinationViewController];
    table.image1 = [photos objectAtIndex:path.item];
    
}
@end
