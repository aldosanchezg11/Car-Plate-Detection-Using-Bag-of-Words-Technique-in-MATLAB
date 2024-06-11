function letter = letter_detection(snap)
    load NewTemp.mat NewTemp
    snap = imresize(snap, [42 24]);
    rec = zeros(1, length(NewTemp));
    
    for n = 1:length(NewTemp)
        rec(n) = corr2(NewTemp{1,n}, snap);
    end
    
    [~, ind] = max(rec);
    display(ind);
    
    letters = {'A', 'A', 'B', 'B', 'C', 'D', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'O', 'P', 'P', 'Q', 'Q', 'R', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '4', '5', '6', '6', '6', '7', '8', '8', '8', '9'};
    
    if ind <= length(letters)
        letter = letters{ind};
    else
        letter = '0';
    end
end
