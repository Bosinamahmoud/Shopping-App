# 🌸 Bloomify - Flower Shopping App

Bloomify is a beautifully designed Flutter app that allows users to explore and purchase flower bouquets. 
The app offers a smooth onboarding experience, user authentication, and an interactive shopping interface.

---

## 🌼 Project Overview

Bloomify is a Flutter-based mobile application that simulates a flower shopping experience. It includes aesthetic UI elements, custom fonts, image rendering, and smooth transitions between screens. Users can sign up or log in to explore a variety of flower bouquets, add items to their cart, and enjoy exclusive hot offers.

---

## ✨ Features

### 1. Aesthetic Welcome Screen  
- **Static Intro Widget** with:
  - AppBar title with custom styling
  - Row displaying two images (1 local + 1 from the internet)
  - Custom font: `Suwannaphum-Regular` (bold, colored, and with a custom font size)
  - Two buttons:  
    - Sign Up  
    - Sign In  
  - All elements centered with adequate spacing

### 2. Sign Up / Sign In Authentication  
- **Sign-Up Form**  
  - Full Name (First letter must be uppercase)  
  - Email (must include `@`)  
  - Password (minimum 6 characters)  
  - Confirm Password (must match Password)  
  - On valid submission: snackbar appears → "Account created successfully"

- **Sign-In Form**  
  - Email & Password validation  
  - On valid login: snackbar appears → "Account sign-in successfully"

### 3. Smooth App Transition  
- Fading animation between Sign Up / Sign In screens and the main shopping screen.

### 4. Shopping Home Screen  
- AppBar titled: **Our Products**  
- **PageView** to showcase featured bouquets horizontally  
- **GridView** with 2 cards per row:
  - Each card includes:
    - Product image
    - Product title
    - "Add to Cart" icon → shows SnackBar: "Item added to the cart"
- **Hot Offers Section**  
  - Built with `ListView.builder`  
  - 5 scrollable offers with images and descriptions using `Expanded`

---

## 🔧 Setup Instructions

1. **Clone the Repository**  
   ```bash
   [git clone https://github.com/your-username/bloomify.git](https://github.com/Bosinamahmoud/Shopping-App.git)

## 📸 Screenshots

### 🌸 Welcome Screen
![](https://github.com/Bosinamahmoud/Shopping-App/blob/master/assets/Screenshots/Welcome%20Screen.jpg)

### 🔐 Sign In
![](https://github.com/Bosinamahmoud/Shopping-App/blob/master/assets/Screenshots/Sign%20In.jpg)

### 📝 Sign Up
![](https://github.com/Bosinamahmoud/Shopping-App/blob/master/assets/Screenshots/Sign%20Up.jpg)

### 🏠 Home Page 
![](https://github.com/Bosinamahmoud/Shopping-App/blob/master/assets/Screenshots/Home1.jpg)

