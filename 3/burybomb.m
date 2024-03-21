function burybomb()
global UIFigure nowbomb GameSize BombNum init BombSet BombCnt BombSearch chack mark temp StartPoint buttongroup ResBomb bombimg dieimg liveimg markimg successimg cyrimg
% 埋雷函数
%   此处显示详细说明
bm=BombNum;
while bm % 随机放置BombNum个雷
    x = randi(GameSize);
    y = randi(GameSize);
    if BombSet(x,y) == 0
        BombSet(x,y) = 1;
        bm = bm - 1;
    end
end


% 移走第一个位置及附近的雷
for i=StartPoint(1)-1:StartPoint(1)+1
    for j=StartPoint(2)-1:StartPoint(2)+1
        if i > 0 && j > 0 && i <= GameSize && j<= GameSize
            while BombSet(i,j) == 1
                x = randi(GameSize);
                y = randi(GameSize);
                if BombSet(x,y) == 0 && abs(x-i) > 1 && abs(y-j) > 1
                    BombSet(i,j) = 0;
                    BombSet(x,y) = 1;
                    break;
                end
            end
        end
    end
end
end

