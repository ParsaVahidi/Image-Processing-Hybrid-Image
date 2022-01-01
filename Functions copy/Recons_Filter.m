%% Recons_Filter 
% This script designs the reconstruction filters
%
% When this script is finished running you must have two new
%
% varibales called h3 and h4 which are the reconstruction filters you
%
% have designed as discussedd in the readme file






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%                                                                                %%%%%%%
%%%%%%%                                      _||_                                      %%%%%%%
%%%%%%%                                      \  /                                      %%%%%%%
%%%%%%%                                       \/                                       %%%%%%%

% 'h3' and 'h4' filters generated here


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