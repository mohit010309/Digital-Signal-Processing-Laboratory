% 19ucc023
% Mohit Akhouri
% Experiment 7 - Observation 2

% In this code , we take the input of an audio signal
% We calculate the 1D-DCT ( via user-defined function myCompression ) to obtain the
% compressed audio wave
% Later on , we calculate the user-defined IDCT ( myDeCompression ) of the compressed wave to get
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

dct_audio_userdefined = myCompression(x); % Calculation of DCT of input.wav via USER-DEFINED DCT (myCompression.m) - Compression of audio file
dct_audio_inbuilt = dct(x); % Calculation of DCT of input.wav via INBUILT DCT - Compression of audio file

% Plot of USER-DEFINED DCT of input.wav
figure;
subplot(2,1,1);
plot(dct_audio_userdefined);
xlabel('frequency (Hz) ->');
ylabel('x_{DCT}(f) ->');
title('Plot of DCT of Sound Wave input.wav obtained via USER-DEFINED FUNCTION');
grid on;

% Plot of INBUILT DCT of input.wav
subplot(2,1,2);
plot(dct_audio_inbuilt);
xlabel('frequency (Hz) ->');
ylabel('x_{DCT}(f) ->');
title('Plot of DCT of Sound Wave input.wav obtained via INBUILT FUNCTION');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

audiowrite('Obs2_DCT.wav',dct_audio_userdefined,fs); % Writing dct_audio to audio file

idct_audio_userdefined = myDeCompression(dct_audio_userdefined); % Reconstructed Approx. Original audio wave via USER-DEFINED IDCT
idct_audio_inbuilt = idct(dct_audio_inbuilt); % Reconstructed Approx. Original audio wave via INBUILT IDCT

% Plot of Reconstructed Audio wave via USER-DEFINED IDCT
figure;
subplot(2,1,1);
plot(idct_audio_userdefined);
xlabel('time(t) ->');
ylabel('x_{IDCT}(t) ->');
title('Plot of Reconstructed Original Sound wave obtained via USER-DEFINED IDCT');
grid on;

% Plot of Reconstructed Audio wave via INBUILT IDCT
subplot(2,1,2);
plot(idct_audio_inbuilt);
xlabel('time(t) ->');
ylabel('x_{IDCT}(t) ->');
title('Plot of Reconstructed Original Sound wave obtained via INBUILT IDCT');
grid on;
sgtitle('19ucc023 - Mohit Akhouri');

audiowrite('Obs2_IDCT.wav',idct_audio_userdefined,fs);
