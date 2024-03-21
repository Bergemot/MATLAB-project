function leave
answer=questdlg('确定退出扫雷?','提示','确定','取消','取消'); % 后悔药提示
switch answer
    case '确定'
        close(gcf);
    case '取消'
        return
end

end

