# moveView
仿nice在照片上添加很多小标签 然后可以自定义小标签
#### 展示效果
![Aaron Swartz](https://github.com/DongDongDongDong/moveView/blob/master/flash.gif?raw=true)

#### 功能介绍
模仿Nice可以在图片上进行添加标签＜/br＞
1）标签会根据文字大小自动伸缩＜/br＞
2）点击按钮添加标签，或者点击图片来添加标签（标签会自动添加到你手指点击的位置）＜/br＞
3）删除标签，默认删除最后添加的＜/br＞
4）限制最多可以添加四个标签，也可以自定义修改个数＜/br＞

#### 基本使用＜/br＞
   该框架使用非常简单，只需2步即可，首先：将你希望显示的标签内容添加到模型中去，然后放到数组中。＜/br＞
   其次，跳转到ImageEditor控制器即可！＜/br＞
1) 将要添加的文字放进模型中，然后将模型添加到数组，即可显示。同时可添加一级标题（sectionTitle）和二级标题(Title)。＜/br＞
        NormalDefectModel *modal1 = [[NormalDefectModel alloc]init];
        modal1.title = @"第一个";
        modal1.sectionTitle = @"1组";
        modal1.detectlevel = @"0";
        [_defects addObject:modal1];

        NormalDefectModel *modal2 = [[NormalDefectModel alloc]init];
        modal2.title = @"这是第二个";
        modal2.sectionTitle = @"1组";
        modal2.detectlevel = @"1";
        [_defects addObject:modal2];

        NormalDefectModel *modal3 = [[NormalDefectModel alloc]init];
        modal3.title = @"我就排到第三啦";
        modal3.sectionTitle = @"2组";
        modal3.detectlevel = @"2";
        [_defects addObject:modal3];

        NormalDefectModel *modal4 = [[NormalDefectModel alloc]init];
        modal4.title = @"第四个就是我，比他们长";
        modal4.sectionTitle = @"2组";
        modal4.detectlevel = @"1";
        [_defects addObject:modal4];

        NormalDefectModel *modal5 = [[NormalDefectModel alloc]init];
        modal5.title = @"第五个出来了，我才是最长的";
        modal5.sectionTitle = @"3组";
        modal5.detectlevel = @"2";
        [_defects addObject:modal5];
        
        2)跳转到添加标签的控制器＜/br＞
        ImageEditController *imageController = [[ImageEditController alloc] initWithImage:desImageData defects:self.defects          callback:^(UIImage *image, NSArray *selectedDefects,UIImage *originImage) {
        [self dismissViewControllerAnimated:NO completion:nil];
        // 此处image为最后添加完标签的合成图
        // originImage为原图，即添加标签前图片内容
        // selectedDefects为所有添加在图片上标签的属性，包括标签方向，标签位置，标签一级标题，标签二级标题等属性
        
    }];
    [self.navigationController pushViewController:imageController animated:YES];
