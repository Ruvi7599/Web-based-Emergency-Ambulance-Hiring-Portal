# 🩺 සෞඛ්‍යදාන (SAUKYADANA) - Web-Based Advance Emergency Ambulance Hiring Portal  

<p align="center">
  <img src="Project-Materials/Transparent-logo.png" alt="SAUKYADANA Logo" width="400"/>
</p>

A **web-based emergency ambulance hiring portal** designed to provide **fast, secure, and user-friendly access** to ambulance services in Sri Lanka.  
SAUKYADANA allows users to **book ambulances without registration**, track them in real-time, and communicate efficiently with medical service providers.

---

## 🚀 Features

- **Emergency Booking Without Account**: Users can request an ambulance using **ID, phone number, or name**.  
- **Real-Time Ambulance Tracking**: Track ambulance status and progress live.  
- **Live Chat & Chatbot Support**: Instant assistance for users’ queries.  
- **Admin Dashboard**: Manage bookings, track ambulances, generate reports.  
- **Secure & Privacy-Focused**: All user data is encrypted and securely handled.  
- **Responsive UI**: Works seamlessly on **desktop, tablet, and mobile devices**.  

---

## 🖼️ User Interfaces (Screenshots)

### 🏠 Home Page  
![Home 01](home_01.png)  
![Home 02](home_02.png)  

### 🚑 Hire an Ambulance  
![Hire Ambulance](hire_ambulance.png)  

### 📍 Ambulance Tracking  
![Ambulance Tracking](ambulance_track.png)  
![Booking Details](booking_details_ambulance.png)  

### 📊 Admin Dashboard  
![Admin Dashboard](admindashbaord.png)  

### 💬 Communication  
- **Live Chat Signup**  
  ![Live Chat Signup](Saukyadana_livechat_signup.png)  

- **Chatbox (User List)**  
  ![Chatbox](chatbox.png)  

- **Chat View**  
  ![Chat View](chat-view.png)  

- **Chatbot Assistant**  
  ![Chatbot](chatbot.png)  

---

## 🛠️ Tech Stack

| Frontend | Backend | Database | Other |
|----------|---------|----------|-------|
| HTML5, CSS3, JavaScript, Bootstrap/Tailwind | PHP | MySQL | Live Chat, Email Gateway, SLF4J Logging |

---

## 📂 System Components

### User Roles
- **Administrator**
  - Manage ambulance bookings  
  - Handle live chat and chatbot responses  
  - Update web content and generate reports  
- **Booking Person / In-Charge**
  - Make ambulance bookings  
  - Track ambulance location  

### Functionalities
- Ambulance booking & management  
- Real-time tracking  
- Live chat + Chatbot assistance  
- Report generation & notifications  

### Non-Functional Requirements
- **Performance**: Low-latency ambulance tracking  
- **Security**: Data encryption + secure admin login  
- **Accessibility**: Mobile-friendly design for rural areas  

---

## 📈 System Architecture

```text
User -> Web Portal -> Admin Dashboard -> Ambulance Tracking API -> Database
