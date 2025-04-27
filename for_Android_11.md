![Fix Android 11 Logo](./logo_android11_fix.png)

# SmartAppClose - Petunjuk untuk Android 11 Users
...

## SmartAppClose - Info Khusus untuk Android 11 Users

Pada beberapa perangkat Android 11, ada kemungkinan modul **gagal** atau **error** saat proses flashing menggunakan KernelSU / Magisk.

Maka ikuti langkah-langkah berikut:

---

### 1. Push Manual Modul
- Extract file ZIP modul SmartAppClose ke internal
- buat folder baru `smartappclose` di :
  ```
  /data/adb/modules/
  ```
  
 
- Push hasil extract tadi ke :
  ```
  /data/adb/modules/smartappclose/
  ```
  

### 2. Set Ulang Permission
Pastikan permission file benar:
  ```
- service.sh -rw-r-r
- module.prop -rw-r-r
- gamelist.txt -rw-r-r
- whitelist.txt -rw-r-r
  ```

### 3. Reboot Device

### 4. Akses:
   ```
   /data/adb/modules/smartappclose/system/etc/smartappclose/
   ```
### 5. Edit file:
   - `whitelist.txt`: aplikasi yang tidak ingin ditutup
   - `gamelist.txt`: aplikasi game yang memicu Force-Close background 
     
### 6. Enjoying Gaming

---

## Penyebab
- Android 11 memiliki security policy yang lebih ketat untuk perubahan direktori `/data/adb/modules/` secara otomatis.
- Permission default saat flash terkadang tidak terset dengan benar.

---

## Kesimpulan
- Jika mengalami error di Android 11, lakukan langkah manual ini.
- Setelah fix, modul akan aktif dan berjalan normal.

---
> **Note:** 
> Kalau belum punya Root Explorer atau MT Manager, bisa download dari [Play Store](https://play.google.com/store) atau website resmi.
---

Dibuat oleh  
[@unknuw](https://t.me/unknuw) x [ChatGPT](https://chat.openai.com)
