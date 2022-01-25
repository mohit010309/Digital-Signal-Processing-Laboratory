% 19ucc023
% Mohit Akhouri
% Experiment 7 - Observation 5

% This code will call the Simulink Model 'Simulink_Observation_5' and
% perform DCT based compression of given audio input file 'input.wav'

% It also performs the IDCT and we get back the reconstructed audio wave

sim('Simulink_Observation_5'); % Calling the Simulink Model
[x,fs] = audioread('input.wav'); % For calculation of sampling frequency of input.wav

sound(x,fs);

% Plot of Original Sound signal input.wav
figure;
plot(out.Orig_Audio.data);
xlabel('time(t) ->');
ylabel('x(t) ->');
title('19ucc023 - Mohit Akhouri','Plot of Original Sound wave input.wav');
grid on;

% Plot of DCT of input.wav obtained via Simulink Model
figure;
plot(out.DCT_Audio.data);
xlabel('frequency (Hz) ->');
ylabel('x_{DCT}(f) ->');
title('19ucc023 - Mohit Akhouri','Plot of DCT of Sound Wave input.wav obtained via Simulink Model');
grid on;

audiowrite('Obs5_DCT_AudioWave.wav',out.DCT_Audio.data,fs); % Writing DCT_AudioWave to audio file

% Plot of compressed reconstructed audio signal
figure;
plot(out.Compressed_Audio.data);
xlabel('time(t) ->');
ylabel('x_{IDCT}(t) ->');
title('19ucc023 - Mohit Akhouri','Plot of Reconstructed Original Sound wave obtained via Simulink Model');
grid on;

audiowrite('Obs5_Compressed_Audio.wav',out.Compressed_Audio.data,fs); % Writing Compressed audio signal to audio file
sound(out.Compressed_Audio.data,fs); % Hearing Compressed sound from speakers
