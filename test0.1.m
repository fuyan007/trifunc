close all;
clear all;
clc
%-------------------------------------------------------
min = 0;
max = 0;
%因弧度和角度可相互转化，因此本test中sin与cos仅针对弧度进行测试。
sin_Test();%调用方法
cos_Test();%调用方法
arcsin_Test();%调用方法
arctan_Test();%调用方法
arr[];%用于存放误差的数据  方便对全部数据误差进行计算
disp(min);
disp(max);
function sin_Test(num)%num为想测试的次数
    for i = 1:num
    randomNum = randi(10000)/10000;%随机生成一个0~1 4位小数的数
    angle = 2*pi*randomNum;
    ans1 = sin(angle);
    ans2 = func(angle);%此处func为本项目中的算法
    diff = ans2 - ans1;
    arr(i) = diff;
    if (diff>max)
        max = diff;
    end
    if(diff<min)
        min = diff;
    end
    end
end
function cos_Test(num)%num为想测试的次数
    for i = 1:num
    randomNum = randi(10000)/10000;%随机生成一个0~1 4位小数的数
    angle = 2*pi*randomNum;
    ans1 = cos(angle);
    ans2 = func(angle);%此处func为本项目中的算法
    diff = ans2 - ans1;
    arr(i) = diff;
    if (diff>max)
        max = diff;
    end
    if(diff<min)
        min = diff;
    end
    end
end
function arcsin_Test(num)%num为想测试的次数
    for i = 1:num
    randomNum = (randi(20000)-10000)/10000;%随机生成一个-1~1 4位小数的数
    ans1 = arcsin(randomNum);
    ans2 = func(randomNum);%此处func为本项目中的算法
    diff = ans2 - ans1;
    arr(i) = diff;
    if (diff>max)
        max = diff;
    end
    if(diff<min)
        min = diff;
    end
    end
  
end
function arctan_Test(num)%num为想测试的次数
    for i = 1:num
    randomNum = randi(20000)-10000;%随机生成一个-10000~10000的5位数
    ans1 = arctan(randomNum);
    ans2 = func(randomNum);%此处func为本项目中的算法
    diff = ans2 - ans1;
    arr(i) = diff;
    if (diff>max)
        max = diff;
    end
    if(diff<min)
        min = diff;
    end
    end
end
