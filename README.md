# 🩺 සෞඛ්‍යදාන (SAUKYADANA) - Web-Based Advance Emergency Ambulance Hiring Portal

![SAUKYADANA Logo](Project-Materials/logo.png)

A **web-based emergency ambulance hiring portal** designed to provide **fast, secure, and user-friendly access** to ambulance services in Sri Lanka.  
SAUKYADANA allows users to **book ambulances without registration**, track them in real-time, and communicate efficiently with medical service providers.

---

## 🚀 Features

- **Emergency Booking Without Account**: Users can request an ambulance using **ID, phone number, or name**.
- **Real-Time Ambulance Tracking**: Track ambulance location during emergencies.
- **Live Chat & Chatbot Support**: Instant assistance for users’ queries.
- **Admin Dashboard**: Manage bookings, update content, generate reports, and track ambulance status.
- **Secure & Privacy-Focused**: All user data is encrypted and securely handled.
- **Responsive UI**: Works on **desktop, tablet, and mobile devices**.

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
- **Booking Person / Booking In-Charge**
  - Make ambulance bookings
  - Track ambulance location during emergencies

### Functionalities

- Ambulance booking & management  
- Real-time location tracking  
- Chat and automated responses  
- Report generation and email notifications  

### Non-Functional Requirements

- Performance: Low-latency ambulance tracking  
- Security: Data encryption and secure login for admin  
- Accessibility: Mobile-friendly design for rural areas  

---

## 📈 System Architecture

```text
User -> Web Portal -> Admin Dashboard -> Ambulance Tracking API -> Database
