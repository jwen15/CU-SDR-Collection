
addpath include               % The software receiver functions
addpath Common                % Common functions between differnt SDR receivers

A = table2array(readtable('b2a_pcode_data.csv'));
settings.codeLength = 10230;

for i = 1:63
    code = generateB2aDataCode(i, settings);
    code = abs((code -1)/2);
    temp = code - A(i, :);
    isAllZero = all(temp(:) == 0);

    if ~isAllZero
        fprintf("code of PRN-%d differs", i);
    end
end


A = table2array(readtable('b2a_pcode_pilot.csv'));
settings.codeLength = 10230;

for i = 1:63
    code = generateB2aPilotCode(i, settings);
    code = abs((code -1)/2);
    temp = code - A(i, :);
    isAllZero = all(temp(:) == 0);

    if ~isAllZero
        fprintf("code of PRN-%d differs", i);
    end
end

