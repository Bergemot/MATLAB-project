function rightclick
% 玩家右键点击按钮
global UIFigure nowbomb GameSize BombNum init BombSet BombCnt BombSearch chack mark  StartPoint buttongroup ResBomb bombimg dieimg liveimg markimg successimg cyrimg

eab=get(gco,'Enable');
if eab(2)=='f'
    return
end
str = get(gco,'String');
pos = get(gco,'UserData');
% 标记或取消标记
if(isempty(str))
    set(gco,'String',' ');
    set(gco,'Cdata',markimg);
    set(gco,'CallBack','');
    mark(pos(1),pos(2)) = 1;
else
    set(gco,'String','');
    set(gco,'Cdata',[]);
    set(gco,'CallBack','leftclick');
    mark(pos(1),pos(2)) = 0;
end
% 更新剩余雷数
ResBomb=BombNum-sum(mark(:));
set(nowbomb,'String',num2str(ResBomb));
if mark==BombSet
    gameing(2);
end
end

