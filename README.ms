# 🎮 Unity 2D Foundations Suite: Mechanics & Physics Simulation

A collection of interactive 2D prototypes developed in **Unity 6** using **C#** and scripted via **VS Code**. This repository serves as a practical showcase of fundamental game development principles, focusing on vector mathematics, 2D physics manipulation, custom movement vectors, and real-time transform rotations.

---

## 📅 Project Metadata
* **Development Target:** Unity 6 (6000.4.4f1) with DX11 Support
* **Scripting Environment:** C# / Visual Studio Code
* **Core Concepts:** Transform manipulation, 2D Rigidbodies, Vector math, Time-based rotation mapping.

---

## 🧩 Suite Modules & Technical Architecture

### 1️⃣ 2D Track Racing Prototype (Top-Down Car Physics)
A simulation of top-down vehicle steering mechanics maneuvering along a predefined circuit track layout. 
* **Physics & Kinematics:** Implements custom input axes mapping to alter velocity parameters without losing momentum.
* **Scene Architecture:** Uses isolated $2D\ Colliders$ and strict sorting layers to maintain background rendering stability.

![Track Racing Module](screenshots/track_game.jpg)
*Visual layout of the top-down 2D driving circuit and active vehicle assets inside the Game view.*

---

### 2️⃣ Dynamic Analog Clock Simulation
A programmatic implementation of a functional clock using custom graphics asset mapping and time-slice conversion formulas.
* **Mathematical Operations:** Translates system time data (`System.DateTime`) into precise physical rotation values. The hands rotate on the Z-axis using mathematical ratios where the angles change uniformly based on active frame updates.
* **Component Structure:** Independent hierarchical attachments for the `hourHand` and `minuteHand` transforms operating under a central clock hub controller.

![Analog Clock Module](screenshots/analog_clock.jpg)
*The system hierarchy and transform setup rendering the functional analog timepieces within the Scene viewport.*

---

## 🛠️ Toolchain & Requirements

* **Game Engine:** Unity 6 LTS
* **Graphics API:** Universal Render Pipeline (URP) / Standard 2D Digital Suite
* **Code Compiler:** Visual Studio Code (OmniSharp / C# Dev Kit extension enabled)

---

## 📂 Repository Layout

```text
├── Assets/
│   ├── Scenes/             # Contains SampleScene environments
│   ├── Sprites/            # Graphical representations for track elements, cars, and clock hands
│   └── Scripts/            # Core C# logic behavioral classes (CarController.cs, ClockManager.cs)
├── screenshots/            # Visual documentation repository files
│   ├── track_game.jpg
│   └── analog_clock.jpg
└── README.md