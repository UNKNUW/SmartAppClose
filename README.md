# Smart App Close (Gaming Mode) v1.3

## Deskripsi Modul
Smart App Close adalah modul berbasis KernelSU / Magisk yang dirancang khusus untuk meningkatkan performa gaming di Android dengan cara **menutup otomatis aplikasi-aplikasi di background** yang tidak dibutuhkan saat game dijalankan. Modul ini sangat berguna untuk perangkat dengan RAM terbatas agar fokus resource tetap ke game yang sedang dimainkan.

## Download
**[Download (v1.3)](https://github.com/johnwick278/SmartAppClose/releases/latest)**

---

## Fitur v1.3
- Deteksi aplikasi game berdasarkan nama package di `gamelist.txt`
- Menutup semua aplikasi yang tidak ada di `whitelist.txt`
- Deteksi game aktif menggunakan kombinasi `pidof` dan `top`
- Logging ke file `/data/local/tmp/smartappclose_log.txt`

---

## Manfaat Utama
- **Meningkatkan performa game** dengan membebaskan RAM dari aplikasi latar belakang
- **Multitasking lebih ringan**, karena hanya aplikasi penting (whitelist) yang tetap hidup
- **Penggunaan daya lebih efisien** saat bermain game

---

## Kelebihan v1.3
- Kill apps efektif saat game di `gamelist` dijalankan
- Struktur modul ringan dan sederhana
- Kompatibel di berbagai ROM: AOSP, MIUI, HyperOS, dll

---

## Kekurangan v1.3
- Kill tetap terjadi meskipun game hanya berada di background
- Belum mendukung auto-reload konfigurasi (butuh reboot jika edit `whitelist`/`gamelist`)
- Belum mendeteksi apakah game sedang foreground atau tidak

---

## Cara Penggunaan
1. Flash modul via KernelSU Next / Magisk / KernelSU
2. Buka direktori:
   ```
   /data/adb/modules/smartappclose/system/etc/smartappclose/
   ```
3. Edit file:
   - `whitelist.txt` : berisi package app yang tidak ingin ditutup
   - `gamelist.txt` : berisi package game yang ingin memicu proses clean
4. Reboot perangkat (untuk v1.3)

---

## Catatan
- Modul ini hanya melakukan force-close saat game dari `gamelist.txt` terdeteksi berjalan (meskipun tidak harus foreground).
- Cocok untuk user yang butuh RAM lega tanpa menggunakan app tambahan seperti task killer.

---

## Author
Made with pride by **@unknuw x ChatGPT**
