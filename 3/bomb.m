global UIFigure startbutton nowbomb GameSize BombNum leaveimg init BombSet BombCnt BombSearch chack mark temp StartPoint buttongroup ResBomb bombimg dieimg liveimg markimg successimg cyrimg
% 读入照片
bombimg=imread('bomb.jpg');
bombimg=imresize(bombimg,0.2);
dieimg=imread('die.jpg');
dieimg=imresize(dieimg,0.2);
liveimg=imread('live.jpg');
liveimg=imresize(liveimg,0.2);
markimg=imread('mark.jpg');
markimg=imresize(markimg,0.2);
successimg=imread('success.jpg');
cyrimg=imread('cry.jpg');
leaveimg=imread('leave.jpg');
leaveimg=imresize(leaveimg,0.2);
% 初始化gameboard
GameSize = 7;                           % 地图大小
BombNum = 15;                           % 雷的个数
buttongroup=zeros(GameSize);            % button矩阵

% 创建图窗
UIFigure=figure('Name','扫雷' , ...     
    'position',[100,100,648,480],...
    'Color','#6c7055');

% 生成开始按钮
startbutton=uicontrol('Parent',UIFigure,...
            'Style','pushbutton',...
            'Position',[296,412,50,50],...
            'CallBack','restart',...
            'FontSize',15,...
            'FontWeight','bold',...
            'BackgroundColor','#b2b59e',...
            'CData',liveimg);
        
% 生成离开按钮
leavebutton=uicontrol('Parent',UIFigure,...
            'Style','pushbutton',...
            'Position',[446,412,50,50],...
            'CallBack','leave',...
            'FontSize',15,...
            'FontWeight','bold',...
            'BackgroundColor','#b2b59e',...
            'CData',leaveimg); 
% 开始
gameing(0);
