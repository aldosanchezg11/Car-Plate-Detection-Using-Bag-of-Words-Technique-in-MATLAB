% Alphabet Characters
alphabet = 'A':'Z';
alphabetPath = "C:\Users\52222\OneDrive\Documents\MATLAB\ProyectVA\Alpha\";
numAlphabet = length(alphabet);

% Preallocate cell array for efficiency
NewTemp = cell(1, numAlphabet + 10);

% Read alphabet images
for i = 1:numAlphabet
    NewTemp{i} = imread(fullfile(alphabetPath, alphabet(i) + ".bmp"));
end

% Numerical Characters
numbers = '0':'9';
numNumbers = length(numbers);

% Read number images
for i = 1:numNumbers
    NewTemp{numAlphabet + i} = imread(fullfile(alphabetPath, numbers(i) + ".bmp"));
end

% Save templates
save('NewTemp', 'NewTemp')
