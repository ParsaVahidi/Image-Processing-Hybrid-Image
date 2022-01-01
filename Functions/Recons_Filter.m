%% Recons_Filter 
% This script designs the reconstruction filters
%
% As indicated in the project readme file, you have to derive h3 and h4 by
%
% hand. h3 and h4 will be functions of h1 and h2.
%
% When this script is finished running you must have two new
%
% varibales called h3 and h4 which are the reconstruction filters you
%
% have designed. 






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%                              Write your code here                              %%%%%%%
%%%%%%%                                      _||_                                      %%%%%%%
%%%%%%%                                      \  /                                      %%%%%%%
%%%%%%%                                       \/                                       %%%%%%%

% generate 'h3' and 'h4' filters here

% % I have mentioned the algorithm of designing h3 and h4
% % using h1,h2 in the report file
h3          = zeros(size(h2));
h4          = zeros(size(h1));
    for i = 1:size(h1,2)
        h3(i) = ((-1)^(i))*h2(i);
        h4(i) = (-1)*((-1)^(i))*h1(i);
    end

%%%%%%%                                       /\                                       %%%%%%%
%%%%%%%                                      /  \                                      %%%%%%%
%%%%%%%                                       ||                                       %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%