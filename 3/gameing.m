function gameing(temp)
global UIFigure startbutton nowbomb GameSize BombNum init BombSet BombCnt BombSearch chack mark  StartPoint buttongroup ResBomb bombimg dieimg liveimg markimg successimg cyrimg
   
tmp=num2str(temp);
switch tmp
    % 踩到雷 游戏失败
    case '1' 
        set(startbutton,'Cdata',dieimg);
        for i=1:GameSize
            for j=1:GameSize
                if BombSet(i,j)==1
                    set(buttongroup(i,j),'Cdata',bombimg);
                else
                    set(buttongroup(i,j),'string',' ');
                end
            end
        end
        msgbox('游戏失败','扫雷','custom',cyrimg);
        
    % 所有雷都被标记 游戏成功
    case '2'
         msgbox('游戏胜利','扫雷','custom',successimg);
    % 初始化游戏
    otherwise
        set(startbutton,'Cdata',liveimg);
        BombSet=zeros(7); % bomb分布矩阵 0：没有雷 1：有雷
        BombCnt=zeros(7); % bomb接临矩阵 数字代表周围九宫格含雷数量
        BombSearch=zeros(7); % 拓展矩阵 0：未被拓展函数进行search 1：已经被拓展函数search
        chack=zeros(7); % 左键点击矩阵 0：没有被玩家左键点开 1：已经被玩家左键点开
        mark=zeros(7); % 右键标记矩阵 0：没有被玩家右键标记 1：已经被玩家右键标记
        init=0;
        % 显示剩余雷个数
        nowbomb=uicontrol('Parent',UIFigure,...
            'BackgroundColor','#6c7055',...
            'Style','Text',...
            'String',num2str(BombNum),...
            'Position',[155,405,30,30],...
            'FontWeight','bold',...
            'FontSize',15,...
            'ForegroundColor','#ffffff');
        % 生成按钮方阵
        for i = 1:GameSize
            for j = 1:GameSize
                buttongroup(GameSize+1-j,i) = uicontrol('Parent',UIFigure,...
                    'FontSize',20,...
                    'BackgroundColor','#b2b59e',...
                    'Style','pushbutton',...
                    'Position',[146+(50*(i-1)),50+(50*(j-1)),50,50],...
                    'UserData',[GameSize+1-j,i],...
                    'ButtondownFcn','rightclick',... % 右键回调函数
                    'CallBack','leftclick');         % 左键回调函数
            end
        end
        
end

