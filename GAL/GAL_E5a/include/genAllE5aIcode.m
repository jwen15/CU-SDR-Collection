for i = 1:50
    e5aI_pri(i, :) = generateE5aIcode(i, 1);
%     e5aI_tier(i,:) = generateE5aIcode(i, 2);
end

% e5aI_tier = (e5aI_tier + 1)/2;
e5aI_pri = (e5aI_pri + 1) / 2;

% dlmwrite('CODE_GAL_E5aI_primary_50_10230.txt', e5aI_pri, 'delimiter', '', 'newline', 'pc');
% dlmwrite('CODE_GAL_E5aI_tiered_50_204600.txt', e5aI_tier, 'delimiter', '', 'newline', 'pc');

for i = 1:50
    e5aQ_pri(i, :) = generateE5aQcode(i, 1);
%     e5aQ_tier(i,:) = generateE5aIcode(i, 2);
end

% e5aQ_tier = (e5aI_tier + 1)/2;
e5aQ_pri = (e5aQ_pri + 1) / 2;

% dlmwrite('CODE_GAL_E5aQ_primary_50_10230.txt', e5aQ_pri, 'delimiter', '', 'newline', 'pc');


for i = 1:50
    e5aQ_sec(i, :) = generateE5aQ_secondary(i);
%     e5aQ_tier(i,:) = generateE5aIcode(i, 2);
end

% e5aQ_tier = (e5aI_tier + 1)/2;
e5aQ_sec = (e5aQ_sec + 1) / 2;

dlmwrite('CODE_GAL_E5aQ_secondary_50_100.txt', e5aQ_sec, 'delimiter', '', 'newline', 'pc');

