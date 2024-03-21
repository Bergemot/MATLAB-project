function SearchZero(x,y)
global UIFigure nowbomb GameSize BombNum init BombSet BombCnt BombSearch chack mark temp StartPoint buttongroup ResBomb bombimg dieimg liveimg markimg successimg cyrimg
% 目的是实现当玩家点击九宫格范围都没有雷的按钮时 把周围的零格也点开
BombSearch(x,y)=1; % 更新拓展矩阵
% 标记零格
set(buttongroup(x,y),'Enable','off');
set(buttongroup(x,y),'string',' ');
% 拓展
for i=x-1:x+1
    for j=y-1:y+1
        if i>0 && j>0 && i<=GameSize && j<=GameSize
            chack(x,y)=1; % 更新点击矩阵
            mark(x,y)=1; % 更新标记矩阵
            if BombSearch(i,j) == 1
                continue;
            elseif BombCnt(i,j)==0
                SearchZero(i,j);
            else
                set(buttongroup(i,j),'Enable','off');
                set(buttongroup(i,j),'string',BombCnt(i,j));
            end
        end
    end
end
end