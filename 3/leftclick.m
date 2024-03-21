function leftclick
% 玩家左键点击按钮
global UIFigure nowbomb GameSize BombNum init BombSet BombCnt BombSearch chack mark  StartPoint buttongroup ResBomb bombimg dieimg liveimg markimg successimg cyrimg

if init==0 % 第一次按下按钮 埋雷
    StartPoint = get(gco,'UserData'); % 记录第一次点击的位置
    burybomb();
    CountBomb();
    init=1;
end
pos = get(gco,'UserData'); % 获取点击的按钮位置
if BombSet(pos(1),pos(2))==0
    set(gco,'string',BombCnt(pos(1),pos(2)));
    set(gco,'Enable','off');
    chack(pos(1),pos(2))=1;
else % 点到雷
    set(gco,'Cdata',bombimg)
    gameing(1);
end
if sum(chack(:)) == GameSize*GameSize*BombNum
    gameing(2);
end
end
