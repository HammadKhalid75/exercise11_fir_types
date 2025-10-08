% h1: FIR Type I (M even, symmetric)
h1 = [1 2 3 4 4 3 2 1]; 

% h2: FIR Type II (M odd, symmetric)
h2 = [1 2 3 4 3 2 1]; 

% h3: FIR Type III (M even, antisymmetric)
h3 = [-1 -2 -3 -4 4 3 2 1]; 

% h4: FIR Type IV (M odd, antisymmetric)
h4 = [-1 -2 -3 0 3 2 1]; 

% Array of impulse responses and titles for looping
h_array = {h1, h2, h3, h4};
title_array = {'FIR1 (Type I)', 'FIR2 (Type II)', 'FIR3 (Type III)', 'FIR4 (Type IV)'};

% Number of FFT points for freqz (must be a power of 2 for efficiency, 512 as per instructions)
N_fft = 512; 

% Create a figure for all plots
figure('Name', 'FIR Filter Results');

% Loop through all four filters
for k = 1:4
    h = h_array{k};
    filter_title = title_array{k};
    
    % [H, w] = freqz(b, a, N_fft) where b=h and a=1 for FIR filters
    [H, w] = freqz(h, 1, N_fft);
    
    % Normalize frequency axis from 0 to 1 (w/pi)
    w_norm = w/pi; 
    
    %% Plot Magnitude Response (Left Column)
    subplot(4, 3, (k-1)*3 + 1); 
    plot(w_norm, abs(H));
    title(sprintf('%s - Magnitude', filter_title));
    xlabel('Frequency, \omega / \pi');
    ylabel('Magnitude');
    grid on;
    
    %% Plot Unwrapped Phase Response (Middle Column)
    % Row k, Column 2
    subplot(4, 3, (k-1)*3 + 2); 
    % Phase response: unwrap(angle(H)) (Step 4)
    plot(w_norm, unwrap(angle(H))); 
    title(sprintf('%s - Unwrapped Phase', filter_title));
    xlabel('Frequency, \omega / \pi');
    ylabel('Phase (radians)');
    grid on;

    %% Plot Pole-Zero Diagram (Right Column)
    % Row k, Column 3
    subplot(4, 3, (k-1)*3 + 3); 
    % Pole-Zero diagram: zplane(h, 1) (Step 4 & 5)
    zplane(h, 1); 
    title(sprintf('%s - Pole-Zero', filter_title));
    
end

% Adjust overall figure appearance for better viewing
sgtitle('FIR Filter Analysis (Types I-IV)');
set(gcf, 'Position', [100, 100, 1000, 800]); % Resize figure window