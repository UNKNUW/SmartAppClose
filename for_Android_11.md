# SmartAppClose - Info Khusus untuk Android 11 Users

Pada beberapa perangkat Android 11, ada kemungkinan modul **gagal aktif** atau **error** setelah proses flashing menggunakan KernelSU / Magisk.

Jika setelah flash:
- Modul tidak aktif
- Tidak ada perubahan
- Log `/data/local/tmp/smartappclose_log.txt` kosong

Maka ikuti langkah manual berikut:

---

## Cara Manual Fix Modul di Android 11

### 1. Push Manual Modul
- Extract file ZIP modul SmartAppClose.
- Push folder `smartappclose/` ke:
  ```
  /data/adb/modules/
  ```
  Gunakan perintah:
  ```bash
  adb push smartappclose /data/adb/modules/
  ```

### 2. Set Ulang Permission
Pastikan permission file/folder benar:
```bash
adb shell
su
chmod -R 755 /data/adb/modules/smartappclose/
chmod 644 /data/adb/modules/smartappclose/module.prop
chmod 755 /data/adb/modules/smartappclose/service.sh
```

### 3. Reboot Perangkat
Setelah semua permission disesuaikan, lakukan reboot manual:
```bash
adb reboot
```

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
