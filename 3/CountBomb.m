function CountBomb()
global GameSize BombNum init BombSet BombCnt BombSearch chack mark temp StartPoint buttongroup ResBomb bombimg dieimg liveimg markimg successimg cyrimg
global BS;
% 埋完雷之后数雷
% 计算九宫格雷数 生成BombCnt
BS=padarray(BombSet,[1,1]); 
for i = 2:GameSize+1
    for j = 2:GameSize+1
        BombCnt(i-1,j-1) = sum(sum(BS(i-1:i+1,j-1:j+1)));
    end
end
end

