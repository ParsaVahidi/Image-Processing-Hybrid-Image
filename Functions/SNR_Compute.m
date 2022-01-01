function [SNR] = SNR_Compute(signal, reconstructed_signal)
% [SNR] = SNR_Compute(signal, reconstructed_signal)
% 
% SNR_Compute calculates the logarithm of signal to noise ratio. 
% 
% In this function you need to compute the logarith of the ratio of the 
% average squared of the signal to the average square noise.
% 
% Inputs:
% 
% signal: Original signal
% 
% reconstructed_signal: Reconstructed signal which is equal to the original
%                       signal plus some noise
% Outputs:
% 
% SNR = SNR value in dB


SNR                  = 0;
reconstructed_signal = reconstructed_signal(:);
signal               = signal(:);


if ( length(signal) ~= length(reconstructed_signal) )
    error(message('Matrix dimensions must agree'));
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%                              Write your code here                              %%%%%%%
%%%%%%%                                      _||_                                      %%%%%%%
%%%%%%%                                      \  /                                      %%%%%%%
%%%%%%%                                       \/                                       %%%%%%%

% % for computing SNR first we calculate sum of output squares for output
% % energy and for noise energy we calculate sum of sqaures od differeces
% %between outpuy and input signals.so we must compute 
% %10*log10(Eout/Enoise)

SNR         = -sqrt(2);
SNR = 10.*log10(sum(reconstructed_signal.^2)/sum((reconstructed_signal-signal).^2));

%%%%%%%                                       /\                                       %%%%%%%
%%%%%%%                                      /  \                                      %%%%%%%
%%%%%%%                                       ||                                       %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
