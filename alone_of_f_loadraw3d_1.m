function [  ] =alone_of_f_loadraw3d_1(P,pointsize11)
%����ԭʼ���ݲ���ʾ��ά����ԭʼͼ����RGB.
%���滹���Խ��е��Ƶ��˲�����
%scatter3(x,y,z,'.',c) % c Ϊ��ɫ�����x,y,z������ͬ
 
%���ӣ�
%x=[4229042.63      4230585.02    4231384.96    4231773.63    4233028.58    4233296.71    4235869.68    4236288.29];
%y=[431695.4   441585.8      432745.6 436933.7      428734.4       431946.3 428705.0      432999.5];
%z=[1.019 1.023      1.011      1.022      1.020      1.022      1.022      1.023];
%scatter3(x,y,z)
%ע��x,y,z�����ǵȳ��ȵ����ԣ��������ȳ���ʸ����
%----------------------------------------------------
%%%%%%%��������%%%%%%%%%%%%%%%%%%%%%%
 P = load('xyz.txt'); %��������
 pointsize11=2;
 % --------------------------------------------
%x,y,z������
x=P(:,1);
y=P(:,2);
z=P(:,3);
  figure('NumberTitle', 'off', 'Name', '3D Point Cloud'); 

plot3(x,y,z,'.','MarkerSize',pointsize11,'color',[96 96 96]/255);    % MarkerSize ��ʾ��Ĵ�С��b.��ʾ���ĵ㡣
% title('��ά��������ͼ��')
grid on
% h=gcf; %ȡ�õ�ǰͼ�δ��ڵľ��

% set(h,'numbertitle','off') %ȥ��figure�����ֱ��
% set(h,'name','Original Data Image-1');%����figure������
%figure();
% figure('NumberTitle', 'off', 'Name', 'Original Data Image-2');
% pcshow([x(:),y(:),z(:)]);
%����ȥ���˲�
%http://blog.csdn.net/sdochengxu1993/article/details/46661381 
%Matlab 2015a �� pointCloud�����֪ʶ��
%AAA=pointCloud([x(:),y(:),z(:)]);
%ptCloudB = pcdenoise(AAA);

%figure('NumberTitle', 'off', 'Name', 'Denoised Data image');;
%pcshow(ptCloudB);
%title('Denoised Data image (Pcdenoise Fuction)');

%dlmwrite('quzao12.txt', ptCloudB.Location, 'precision', '%6f', 'delimiter', '\t');
%%f �̶�С����λ�õ�������ʽ����%6.2f�������������Ϊ6������С���㣩��С�����ĳ���Ϊ2.
end