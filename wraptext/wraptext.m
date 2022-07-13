function newstr = wraptext(str, len)
%WRAPTEXT Wraps a character array to a specific length
%
% This function intelligently wraps a character array to a certain number
% of characters, breaking across existing spaces or newlines.
%
% Input variables:
%
%  str:     character array
%
%  len:     maximum length of lines in wrapped text
%
% Output variables:
%
%  newstr:  cell array of character arrays, wrapped text

% Copyright 2021 Kelly Kearney

newstr = {};
while length(str) > len
   linenew = str(1:len);
   linenew = regexprep(linenew, '\s+(\S*)$', '');

   newstr = [newstr; linenew];
   str = strtrim(str(length(linenew)+1:end));

end
newstr = [newstr; str];