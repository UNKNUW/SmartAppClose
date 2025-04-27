# SmartAppClose - Info Khusus untuk Android 11 Users

Pada beberapa perangkat Android 11, ada kemungkinan modul **gagal** atau **error** saat proses flashing menggunakan KernelSU / Magisk.

Maka ikuti langkah manual berikut:

---

### 1. Push Manual Modul
- Extract file ZIP modul SmartAppClose ke internal
- buat folder baru `smartappclose` di :
  ```
  /data/adb/modules/
  ```
  
 
- Push hasil extract tadi ke `smartappclose/`:
  ```
  /data/adb/modules/
  ```
  

### 2. Set Ulang Permission
Pastikan permission file benar:
  ```
- service.sh -rw-r-r
- module.prop -rw-r-r
- gamelist.txt -rw-r-r
- whitelist.txt -rw-r-r
  ```

### 3. Reboot Perangkat

### 4. Enjoying Gaming

---

## Penyebab
- Android 11 memiliki security policy yang lebih ketat untuk perubahan direktori `/data/adb/modules/` secara otomatis.
- Permission default saat flash terkadang tidak terset dengan benar.

---

## Kesimpulan
- Jika mengalami error di Android 11, lakukan langkah manual ini.
- Setelah fix, modul akan aktif dan berjalan normal.

---

Dibuat oleh  
[@unknuw](https://t.me/unknuw) x [ChatGPT](https://chat.openai.com)
