% =======================================================
% Nama  : AGIS LENTERA PRATAMA
% NIM   : L0325016
% Topik : Perhitungan Analisis Galat (Metode Numerik)
% =======================================================

clc; clear;

%% 1. Perhitungan Galat e^0.3 Menggunakan Deret Taylor
disp('=== 1. Galat Deret Taylor e^0.3 ===');
x = 0.3;
eksak_e = exp(x);
fprintf('Nilai eksak e^0.3 = %.8f\n\n', eksak_e);

n_vals_1 = [0, 1, 2, 3, 4];
fprintf(' n | Hasil Hampiran | Galat Mutlak\n');
fprintf('-----------------------------------\n');

for i = 1:length(n_vals_1)
    n = n_vals_1(i);
    hampiran = 0;
    for j = 0:n
        hampiran = hampiran + (x^j) / factorial(j);
    end
    galat = abs(eksak_e - hampiran);
    fprintf(' %d | %.8f       | %.8f\n', n, hampiran, galat);
end
fprintf('\n');


%% 2. Perhitungan Galat Deret Harmonik (1/1 + 1/2 + ... + 1/20)
disp('=== 2. Galat Deret Harmonik ===');
n_max = 20;

% Nilai acuan (dihitung menggunakan presisi tinggi bawaan / eksak secara komputasi)
eksak_harm = 0;
for i = 1:n_max
    eksak_harm = eksak_harm + 1/i;
end
fprintf('Nilai acuan eksak = %.9f\n\n', eksak_harm);

% a. Perhitungan secara eksak (Secara teori tidak ada pemotongan, disimulasikan sama dengan nilai acuan)
hasil_a = eksak_harm;
galat_a = abs(eksak_harm - hasil_a);

% b. Masing-masing pembagian dibulatkan (Diasumsikan pembulatan 2 angka desimal untuk simulasi round-off error)
hasil_b = 0;
for i = 1:n_max
    hasil_b = hasil_b + round((1/i) * 100) / 100;
end
galat_b = abs(eksak_harm - hasil_b);

% c. Tanpa looping (menggunakan fungsi sum dan operasi vektor)
array_pembagi = 1:n_max;
hasil_c = sum(1 ./ array_pembagi);
galat_c = abs(eksak_harm - hasil_c);

fprintf('Metode                  | Hasil Hampiran | Galat Mutlak\n');
fprintf('-------------------------------------------------------\n');
fprintf('a. Eksak (Teoritis)     | %.9f    | %.9f\n', hasil_a, galat_a);
fprintf('b. Pembulatan (2 des)   | %.9f    | %.9f\n', hasil_b, galat_b);
fprintf('c. Tanpa Looping (sum)  | %.9f    | %.9f\n', hasil_c, galat_c);
fprintf('\n');


%% 3. Perhitungan Galat sin(x) Menggunakan Deret Taylor
disp('=== 3. Galat Deret Taylor sin(1) ===');
x_sin = 1;
eksak_sin = sin(x_sin);
fprintf('Nilai eksak sin(1) = %.8f\n\n', eksak_sin);

N_vals_3 = [1, 2, 3, 4, 5];
fprintf(' N | Hasil Hampiran | Galat Mutlak\n');
fprintf('-----------------------------------\n');

for i = 1:length(N_vals_3)
    N = N_vals_3(i);
    hampiran_sin = 0;
    for n = 0:N
        suku = ((-1)^n * x_sin^(2*n + 1)) / factorial(2*n + 1);
        hampiran_sin = hampiran_sin + suku;
    end
    galat_sin = abs(eksak_sin - hampiran_sin);
    fprintf(' %d | %.8f       | %.8f\n', N, hampiran_sin, galat_sin);
end
