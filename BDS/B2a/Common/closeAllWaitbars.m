function closeAllWaitbars()
    % Find all waitbar objects
    wbHandles = findall(0, 'Type', 'figure', 'Tag', 'TMWWaitbar');
    % Close each waitbar
    for i = 1:length(wbHandles)
        delete(wbHandles(i));
    end
end