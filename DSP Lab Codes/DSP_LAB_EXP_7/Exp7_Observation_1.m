% 19ucc023
% Mohit Akhouri
% Experiment 7 - Observation 1

% In this code , we take the input of an audio signal
% We calculate the 1D-DCT ( via inbuilt function dct ) to obtain the
% compressed audio wave
% Later on , we calculate the inbuilt IDCT of the compressed wave to get
% the reconstructed approx. Original Sound signal

clc;
clear all;
close all;

[x,fs] = audioread('input.wav'); % Reading of audio file 'input.wav'

% Plot of Original Sound wave 'input.wav'
figure;
plot(x);
xlabel('time(t) ->');
ylabel('x(t) ->');
title('19ucc023 - Mohit Akhouri','Plot of Original Sound wave input.wav');
grid on;

dct_audio = dct(x); % Calculation of DCT of input.wav via INBUILT DCT - Compression of audio file

% Plot of INBUILT DCT of input.wav
figure;
plot(dct_audio);
xlabel('frequency (Hz) ->');
ylabel('x_{DCT}(f) ->');
title('19ucc023 - Mohit Akhouri','Plot of DCT of Sound Wave input.wav obtained via INBUILT FUNCTION');
grid on;

audiowrite('Obs1_DCT.wav',dct_audio,fs); % Writing dct_audio to audio file

idct_audio = idct(dct_audio); % Reconstructed Approx. Original audio wave via INBUILT IDCT

% Plot of Reconstructed Audio wave
figure;
plot(idct_audio);
xlabel('time(t) ->');
ylabel('x_{IDCT}(t) ->');
title('19ucc023 - Mohit Akhouri','Plot of Reconstructed Original Sound wave obtained via INBUILT IDCT');
grid on;

audiowrite('Obs1_IDCT.wav',idct_audio,fs); % Writing Reconstructed audio wave to a audio file
