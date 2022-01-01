 %% Frequency_Response
 % In this script you need to plot the magnitude of the FFT of the four
 %  
 % filters h1,h2,h3 & h4 in a single figure.
 %
 % Specify what type of filter each of h1,h2,h3 and h4 are in your report
 
 %H = zeros(size(h));
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%                              Write your code here                              %%%%%%%
%%%%%%%                                      _||_                                      %%%%%%%
%%%%%%%                                      \  /                                      %%%%%%%
%%%%%%%                                       \/                                       %%%%%%%

H           = zeros(size(h , 1) , 10 * size(h, 2));
for i = 1:4
    G(i,:) = fft(h(i,:),10*size(h,2));
    H(i,:) = abs(G(i,:))./max(abs(G(i,:)));

plot((H(i,:)));
end


%%%%%%%                                       /\                                       %%%%%%%
%%%%%%%                                      /  \                                      %%%%%%%
%%%%%%%                                       ||                                       %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
