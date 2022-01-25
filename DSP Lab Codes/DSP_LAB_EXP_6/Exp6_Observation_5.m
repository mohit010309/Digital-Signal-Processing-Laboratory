% 19ucc023
% Mohit Akhouri
% Experiment 6 - Observation 5

% ALGORITHM :
% This code will use the model "Simulink_Observation_5" and calculate the
% DCT of the received image signal for four different cases by knocking off
% 16,32,48 and 56 coeffcients

sim('Simulink_Observation_5'); % calling the simulink model

N = 256; % Total size of image ( 256 rows with 256 columns )
output_case_1 = zeros(N,N); % Output for case 1 = top 48/64 coefficients
output_case_2 = zeros(N,N); % Output for case 2 = top 32/64 coefficients
output_case_3 = zeros(N,N); % Output for case 3 = top 16/64 coefficients
output_case_4 = zeros(N,N); % Output for case 4 = top 8/64 coefficients

[output_case_1,output_case_2,output_case_3,output_case_4] = DCT_2D(out.y1.data,out.y2.data,out.y3.data,out.y4.data);

% Plot of Figures for case 1 and case 2
figure;
subplot(1,2,1);
imshow(uint8(output_case_1));
title('Compressed Image obtained via SIMULINK MODEL for Case 1 - top 48/64 coefficients kept');
subplot(1,2,2);
imshow(uint8(output_case_2));
title('Compressed Image obtained via SIMULINK MODEL for Case 2 - top 32/64 coefficients kept');
sgtitle('19ucc023 - Mohit Akhouri');

% Plot of Figures for case 3 and case 4
figure;
subplot(1,2,1);
imshow(uint8(output_case_3));
title('Compressed Image obtained via SIMULINK MODEL for Case 3 - top 16/64 coefficients kept');
subplot(1,2,2);
imshow(uint8(output_case_4));
title('Compressed Image obtained via SIMULINK MODEL for Case 4 - top 8/64 coefficients kept');
sgtitle('19ucc023 - Mohit Akhouri');
