function [  ] =alone_of_f_loadraw3d_1(P,pointsize11)
%载入原始数据并显示三维点云原始图像，无RGB.
%后面还可以进行点云的滤波操作
%scatter3(x,y,z,'.',c) % c 为颜色，需和x,y,z长度相同
 
%例子：
%x=[4229042.63      4230585.02    4231384.96    4231773.63    4233028.58    4233296.71    4235869.68    4236288.29];
%y=[431695.4   441585.8      432745.6 436933.7      428734.4       431946.3 428705.0      432999.5];
%z=[1.019 1.023      1.011      1.022      1.020      1.022      1.022      1.023];
%scatter3(x,y,z)
%注：x,y,z必须是等长度的数对（即三个等长的矢量）
%----------------------------------------------------
%%%%%%%输入数据%%%%%%%%%%%%%%%%%%%%%%
 P = load('xyz.txt'); %读入数据
 pointsize11=2;
 % --------------------------------------------
%x,y,z轴坐标
x=P(:,1);
y=P(:,2);
z=P(:,3);
  figure('NumberTitle', 'off', 'Name', '3D Point Cloud'); 

plot3(x,y,z,'.','MarkerSize',pointsize11,'color',[96 96 96]/255);    % MarkerSize 表示点的大小，b.表示蓝的点。
% title('三维点云数据图像')
grid on
% h=gcf; %取得当前图形窗口的句柄

% set(h,'numbertitle','off') %去掉figure的数字编号
% set(h,'name','Original Data Image-1');%设置figure的名称
%figure();
% figure('NumberTitle', 'off', 'Name', 'Original Data Image-2');
% pcshow([x(:),y(:),z(:)]);
%进行去燥滤波
%http://blog.csdn.net/sdochengxu1993/article/details/46661381 
%Matlab 2015a 中 pointCloud类相关知识！
%AAA=pointCloud([x(:),y(:),z(:)]);
%ptCloudB = pcdenoise(AAA);

%figure('NumberTitle', 'off', 'Name', 'Denoised Data image');;
%pcshow(ptCloudB);
%title('Denoised Data image (Pcdenoise Fuction)');

%dlmwrite('quzao12.txt', ptCloudB.Location, 'precision', '%6f', 'delimiter', '\t');
%%f 固定小数点位置的数据形式，如%6.2f，数据输出长度为6（包括小数点），小数点后的长度为2.
end