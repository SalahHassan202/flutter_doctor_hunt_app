

# Doctor Hunt 

A clean, modern Flutter UI for a medical app inspired by the original Figma design.

Live doctor sessions
Search & find doctors
Featured & popular doctors UI
Fully responsive screens
Designed with neat reusable widgets

Figma link: [https://www.figma.com/design/brfXAZeaGd1exTmVhpFt91/Doctor_hunt?node-id=0-1&p=f&t=aIJGAUBpay9RbjO6-0](https://www.figma.com/design/brfXAZeaGd1exTmVhpFt91/Doctor_hunt?node-id=0-1&p=f&t=aIJGAUBpay9RbjO6-0)

---

## Features

* Beautiful **Home, Search, Live Chat & Profile screens**
* Smooth horizontal lists (Live & Featured doctors)
* Clean UI components & widgets
* Designed for easy scaling & modification
* No backend yet — UI-focused

---

## Screens Covered

✔️ Splash Screen with gradient
✔️ Home Screen (Live, Popular & Featured)
✔️ Find Doctors
✔️ Live Doctor Chat
✔️ Reusable cards & widgets

---

## 🧠 Why This Project?

This Flutter UI kit is:

**Easy to understand** — perfect for beginners
**Modular** — each widget reusable
**Pixel perfect** based on Figma design
Ready for future backend integration

---

## 🛠 Installation

```bash
git clone https://github.com/yourusername/doctor_hunt.git
cd doctor_hunt
flutter pub get
flutter run
```

---

## Assets

Put your design images in:

```
assets/
  splash_screen.jpg
  logo.png
  live_doctor_0.png
  popular_doctor_1.png
  featured_doctor_0.png
  avatar.png
  .....
```

And update `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/
```

---

## Structure

```
lib/
 ├─ home_screen/
 │   ├─ widgets/
 │   │   ├─ live_doctor_card.dart
 │   │   ├─ popular_doctor.dart
 │   │   ├─ featured_doctor.dart
 │   │   └─ ...
 │   └─ home_screen.dart
 ├─ onboarding/
 ├─ splash/
 └─ main.dart
```

---

##  Next Steps

Add backend API
Implement doctor booking
Add push notifications
Dark mode support

---

## Credits

Design inspired from Figma — [https://www.figma.com/design/brfXAZeaGd1exTmVhpFt91/Doctor_hunt?node-id=0-1&p=f&t=aIJGAUBpay9RbjO6-0](https://www.figma.com/design/brfXAZeaGd1exTmVhpFt91/Doctor_hunt?node-id=0-1&p=f&t=aIJGAUBpay9RbjO6-0)

---