# 效果图
![image](https://github.com/maple1994/WeiboHomePage/blob/master/show.gif)

#具体解析
[我的CSDN](http://blog.csdn.net/Bloody_Leaves/article/details/52831823)

# 2016-11-09Bug修复

## 一、增加了基类控制器

最后发现还是需要用到继承，原来的做法会把原来的子控制器tableView的代理覆盖掉，这样子控制器就不能自己监听自己的操作了，例如点击事件。

## 二、修复了子tableview不足以滚动的bug
