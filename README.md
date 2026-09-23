# Voice / Audio Splitter Studio 🎵

เครื่องมือตัดและแบ่งไฟล์เสียงขนาดใหญ่ความเร็วสูงผ่าน Web Browser ทำงานแบบ **100% Client-side** ปลอดภัย ความเป็นส่วนตัวสูง ไม่มีการอัปโหลดไฟล์เสียงขึ้นเซิร์ฟเวอร์

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Client-Side](https://img.shields.io/badge/Privacy-100%25%20Client--Side-green.svg)
![Platform](https://img.shields.io/badge/Platform-Desktop%20%7C%20Tablet%20%7C%20Mobile-orange.svg)

---

## ✨ คุณสมบัติเด่น (Features)

- 🔒 **100% Client-Side Privacy:** ประมวลผลและตัดแบ่งไฟล์เสียงบนเครื่องของผู้ใช้โดยตรง ข้อมูลไม่หลุดออกนอกเครื่อง
- ⚡ **Lossless Direct MP3 Slicing:** สำหรับไฟล์ MP3 สามารถตัดระดับเฟรม (Byte-level MP3 Frame Slicing) ได้รวดเร็ว โดยไม่สูญเสียคุณภาพเสียง
- 🎚️ **Interactive Waveform with Cut Pins:** 
  - กราฟคลื่นเสียงความละเอียดสูง ปรับระดับสีเทาดำสไตล์สตูดิโอ
  - เส้นแบ่งรอยตัดสีแดงแบบ Interactive สามารถคลิกลาก (Drag & Drop) เพื่อปรับตำแหน่งได้ตามต้องการ
  - คลื่นและเส้นบอกสถานะความคืบหน้าแบบ 60fps Smooth Animation
- 🔍 **Zoom & Waveform Navigation:** ปรับซูมกราฟคลื่นเสียงได้ 1x, 2x, 4x เพื่อดูรายละเอียดรอยต่อของเสียง
- 🎧 **Instant Audition & Playhead:** คลิกบนคลื่นเสียงเพื่อฟังเสียงตัวอย่าง พรีวิวช่วงรอยตัดก่อนดาวน์โหลดจริง
- 📱 **Responsive Multi-Device Layout:**
  - **Desktop:** หน้าจอ Pro Studio แบบจัดเต็ม พร้อม Keyboard Shortcuts (<kbd>Space</kbd>, <kbd>Ctrl+Z</kbd>, <kbd>Ctrl+Y</kbd>)
  - **Tablet & Mobile:** ปรับหน้าจอให้รองรับ Touch Gestures (ลากเส้นตัดด้วยนิ้ว, แตะ 1 ครั้งเพื่อฟัง, แตะ 2 ครั้งเพื่อเพิ่มจุดตัด) พร้อมปุ่มขนาดใหญ่ Thumb-friendly
- 📦 **Export Options:**
  - ดาวน์โหลดทีละท่อน หรือดาวน์โหลดรวมเป็นไฟล์ ZIP
  - กำหนดรูปแบบชื่อไฟล์แบบไดนามิก (เช่น `{name}_part_{num}_{start}-{end}`)
  - Micro-fade (20ms) ป้องกันเสียงแคร็ก/ป๊อป (De-clicking) ตรงรอยต่อ

---

## 🚀 วิธีการใช้งาน (Getting Started)

### วิธีที่ 1: เปิดใช้งานผ่าน Local Server (แนะนำ)
ดับเบิลคลิกไฟล์:
```
launch_audio_splitter.bat
```
ระบบจะเปิดเว็บเบราว์เซอร์ไปยัง `http://localhost:8000` อัตโนมัติ

### วิธีที่ 2: เปิดไฟล์ HTML โดยตรง
ดับเบิลคลิกเปิดไฟล์ `index.html` หรือ `text.html` บนเบราว์เซอร์ (Chrome, Edge, Firefox, Safari) ได้ทันที

---

## 🛠️ โครงสร้างไฟล์ (Project Structure)

```
voice_spliter/
├── index.html                  # ไฟล์หลักของเว็บแอปพลิเคชัน
├── text.html                   # ไฟล์สำเนาของแอปพลิเคชัน
├── mpg123-decoder.min.js       # โมดูลถอดรหัสเสียง WebAssembly (Offline MP3 Decoder)
├── launch_audio_splitter.bat   # สคริปต์เปิด Local Server อัตโนมัติบน Windows
├── README.md                   # เอกสารประกอบโครงการ
└── .gitignore                  # Git Ignore configuration
```

---

## 📜 ใบอนุญาต (License)

โครงการนี้เผยแพร่ภายใต้ [MIT License](LICENSE)
