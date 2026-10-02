# Analisis Galat (Error Analysis) Metode Numerik

Repositori ini berisi implementasi komputasi numerik menggunakan **GNU Octave / MATLAB** untuk menganalisis tingkat galat (error) pada berbagai metode hampiran matematis. Program ini difokuskan pada perhitungan hampiran Deret Taylor dan simulasi akumulasi galat pembulatan pada deret pecahan.

**Disusun oleh:**
* **Nama:** Agis Lentera Pratama
* **NIM:** L0325016
* **Program Studi:** Informatika, Universitas Sebelas Maret

---

## 📌 Deskripsi Proyek
Tugas ini mendemonstrasikan perbandingan antara nilai eksak matematis dengan nilai hampiran algoritmik, serta membuktikan bagaimana pemilihan metode komputasi (seperti *looping* konvensional vs. vektorisasi) sangat memengaruhi kemunculan *round-off error* pada *floating-point*. 

Proyek ini mencakup tiga studi kasus utama:
1. **Aproksimasi Eksponensial:** Menghitung hampiran $e^{0.3}$ menggunakan Deret Taylor dengan variasi orde polinomial $n = \{0, 1, 2, 3, 4\}$.
2. **Deret Harmonik:** Mengevaluasi deret pecahan $\frac{1}{1} + \frac{1}{2} + \dots + \frac{1}{20}$ menggunakan tiga arsitektur kode berbeda (Eksak Teoritis, Pembulatan 2 Desimal, dan Vektorisasi Array).
3. **Aproksimasi Trigonometri:** Menghitung deret Maclaurin (bolak-balik) untuk fungsi $\sin(1)$ dengan batas iterasi $N = \{1, 2, 3, 4, 5\}$ guna melihat kecepatan konvergensi iterasi.

---

## 🛠️ Persyaratan Sistem
Untuk menjalankan *source code* pada repositori ini, pastikan sistem Anda telah terinstal salah satu dari perangkat lunak berikut:
* **GNU Octave** (Versi 5.x atau lebih baru)
* **MATLAB** 

---

## 🚀 Cara Penggunaan
1. *Clone* repositori ini ke dalam direktori lokal Anda:
   ```bash
   git clone [[https://github.com/username-anda/nama-repo.git](https://github.com/username-anda/nama-repo.git)](https://github.com/agislenterapratama-stack/Praktikum-Metode-Numerik-4)
