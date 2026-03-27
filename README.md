# 📱 Task Manager App (Flutter)

## 📌 Опис

Task Manager — це Flutter додаток для управління задачами з авторизацією, підтримкою offline режиму та кешуванням даних.

Додаток побудований з використанням сучасних підходів:
- Clean Architecture
- State management (Riverpod)
- REST API (Dio)
- Local storage (Hive)
- Secure storage для токенів

---

## 🚀 Функціонал

### 🔐 Авторизація
- Login (mock)
- Збереження токена в `flutter_secure_storage`
- Автологін при запуску додатку
- Logout

### 📋 Задачі
- Отримання списку задач з API (JSONPlaceholder)
- Відображення списку задач
- Перегляд статусу (completed / active)

### 📡 Offline режим
- Кешування GET-запитів через Hive
- Відображення задач без інтернету

---

## 🛠️ Технічний стек

- Flutter
- Riverpod (state management)
- Dio (HTTP client)
- Hive (local cache)
- flutter_secure_storage (token storage)

---

## 📁 Архітектура
lib/
├── core/
│ ├── network/
│ ├── storage/
│ └── error/
├── features/
│ ├── auth/
│ └── tasks/
└── shared/


Архітектура побудована за принципами Clean Architecture:
- **data** — робота з API та кешем
- **domain** — бізнес логіка
- **presentation** — UI + state management

---

## ⚙️ Установка та запуск

### 1. Клонувати репозиторій
```bash
git clone https://github.com/your-username/task-manager.git

cd task-manager
```

### 2. Встановити залежності
```bash
flutter pub get
```

### 3. Запустити додаток
```bash
flutter run
```

---

## 🔑 Дані для входу
```bash
Username: test
Password: 1234
```
