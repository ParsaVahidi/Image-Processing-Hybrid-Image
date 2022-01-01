function [m_filtered] = Matrix_Col_Filter(m, filt)
% [m_filtered] = Matrix_Col_Filter(m, filt)
% 
% Matrix_Col_Filter filters columns of a matrix with 'filt'. This function
% regards each column of a Matrix M as an 1D signal and filters each column
% with the filter which has frequency response 'filt'.
% 
% Inputs:
% 
% m:            a*b matrix to be filtered
% 
% filt:         c*1 vecotr which is the impulse resopnse of the filter
% 
% Outputs:
% 
% m_filtered:   (a + c - 1) * b matrix which is the result of applying convolving 
%               'filter' to the colmuns of m 


m_filtered          = zeros(size(m, 1) + length(filt) - 1, size(m, 2));

if (size(filt,2) ~= 1)
    if(size(filt,1) == 1)
        filt        = filt';
    else
        error(message('Filter must be vector'));
    end
end



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%                              Write your code here                              %%%%%%%
%%%%%%%                                      _||_                                      %%%%%%%
%%%%%%%                                      \  /                                      %%%%%%%
%%%%%%%                                       \/                                       %%%%%%%


% you need to filter the columns of the matrix 'm' with the impulse
% response 'filt'. The implemenattion SHOULD BE BASED ON FFT AND IFFT!
% The output matrix is called 'm_filtered' 

% % for filtering each column of matrix m we should compute convolution of
% % each column with filt.in another way we can use dft and idft to do this
% % with multiplyin dft's of these two signals with lenght wich is greater
% % than or equal to sum of lenght of those two vectors and then compute
% % the inverse dft of output as following

 m_filtered          = zeros( length(filt)+size(m,1)-1  ,  size(m,2));
 for i = 1:size(m_filtered,2)
     m_filtered(:,i) = ifft(fft(filt',size(m_filtered,1)).*fft(m(:,i)',size(m_filtered,1)));
 end


%%%%%%%                                       /\                                       %%%%%%%
%%%%%%%                                      /  \                                      %%%%%%%
%%%%%%%                                       ||                                       %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
