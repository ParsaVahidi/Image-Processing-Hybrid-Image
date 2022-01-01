function [y] = Block_Digram_Implementation(h1, h2, h3, h4, x)
% [y] = Block_Digram_Implementation(h1, h2, h3, h4)
% 
% This function implements the block diagram provided in the readme file.
% 
% Before implementing this function you need to have implemented the
% function 'Matrix_Col_Filter' since you will need it in this script.
% 
% Inputs:
% 
% h1: impulse response of filter h1
% 
% h2: impulse response of filter h2
% 
% h3: impulse response of filter h3
% 
% h4: impulse response of filter h4
% 
% x : input signal to the block diagram
% 
% Output:
% 
% y : output signal of diagram






% Analysis filtering
x1  = Matrix_Col_Filter(x',h1)';
x2  = Matrix_Col_Filter(x',h2)';




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%                              Write your code here                              %%%%%%%
%%%%%%%                                      _||_                                      %%%%%%%
%%%%%%%                                      \  /                                      %%%%%%%
%%%%%%%                                       \/                                       %%%%%%%


%x3  = zeros(size(x1,1),2*ceil(size(x1,2)/2));
%x4  = zeros(size(x2,1),2*ceil(size(x2,2)/2));

% % to implement the block diagram which required we use upsample and
% % downsample functions of MATLAB.but we should notice that if the lenght
% % of input vector is an odd number we should add a zero sample in the last


% downsample and upsample x1 and x2 to generate x3 and x4

x3  = zeros(size(x1,1),size(x1,2));
x4  = zeros(size(x2,1),size(x2,2));
x3=(upsample(downsample(x1',2),2))';
x4=(upsample(downsample(x2',2),2))';

if rem(size(x1,2),2) == 0
    x3=[x3 0] ;
 end

 if rem(size(x2,2),2) == 0
      x4=[x4 0] ;
  end

%%%%%%%                                       /\                                       %%%%%%%
%%%%%%%                                      /  \                                      %%%%%%%
%%%%%%%                                       ||                                       %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% Synthesis filtering
y1  = Matrix_Col_Filter(x3',h3)';
y2  = Matrix_Col_Filter(x4',h4)';


% unifying the size
y1  = Matrix_Center(y1, size(x));
y2  = Matrix_Center(y2, size(x));


% adding the highpass and lowpass components
y   = y1 + y2;