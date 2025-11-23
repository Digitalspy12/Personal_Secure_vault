
# Simple & Secure Password & Data Management

A lightweight and secure solution for managing passwords and sensitive data — built for individuals and teams.

---

## 🚀 How to Use

Padloc includes multiple components, but to run your own instance locally you only need the **Server** and the **Web Client**. Setting it up is straightforward:

```bash
git clone 
cd folder name
npm ci
npm start
````

The web client will now be available at:

👉 **[http://localhost:8080](http://localhost:8080)**

More detailed guides for deploying a production instance and building custom desktop/mobile apps will be provided soon.

---

## 🛠️ Development

### Setup

Prepare your development environment:

```bash
git clone 
cd Personal_secure_vault/packages/pwa
npm ci
```

(This may take a moment — a great time for a ☕️ break!)


---

### Dev Mode

To start development mode, run:

```bash
npm run dev
NODE_OPTIONS=--openssl-legacy-provider npm run dev   -- Ubuntu 
```

This will start:

* The backend server (default: **[http://localhost:3000](http://localhost:3000)**)
* The PWA client (default: **[http://localhost:8080](http://localhost:8080)**)



This version is written specifically for:

* Windows 10/11
* PowerShell users
* NVM + Node
* Old Webpack projects
* The PWA located in:
  `packages/pwa/`

---


# 🚀 Windows Setup Guide for PWA (Padloc)

A step-by-step guide for setting up and running the PWA on **Windows**.

---

## ✅ 1. Navigate to the PWA Folder

Because your folders have **spaces** and an **apostrophe**, always use quotes:

```powershell
cd "C:\Users\user\Downloads\shido\AK Agency's\Personal_Secure_vault\packages\pwa"
```

List contents:

```powershell
ls
```

---

## ✅ 2. Install NVM (Node Version Manager)

Download NVM for Windows:
👉 [https://github.com/coreybutler/nvm-windows/releases](https://github.com/coreybutler/nvm-windows/releases)

Download the file: **nvm-setup.exe**
Install with default settings.

### After installation restart PowerShell, then check:

```powershell
nvm version
```

---

## ✅ 3. Install the Correct Node Version

Check available versions:

```powershell
nvm list available
```

Most Webpack-based PWAs use Node 16 or 18. Install one:

```powershell
nvm install 18
nvm use 18
```

Verify:

```powershell
node -v
npm -v
```

---

## ✅ 4. Install Dependencies

Inside the PWA folder:

```powershell
npm install
```

This installs everything from `package.json`.

---

## ⚠️ 5. Fixing OpenSSL Error on Windows

DO NOT use this (Linux/macOS only):

```
NODE_OPTIONS=--openssl-legacy-provider npm run dev
```

### Instead, use the Windows PowerShell version:

```powershell
$Env:NODE_OPTIONS="--openssl-legacy-provider"; npm run dev
```

Optional (permanent setting):

```powershell
setx NODE_OPTIONS "--openssl-legacy-provider"
```

---

## 🔧 6. Fixing `"webpack not recognized"` on Windows

If you see:

```
'webpack' is not recognized as an internal or external command
```

Install webpack locally:

```powershell
npm install --save-dev webpack webpack-cli
```

If it still fails, install globally:

```powershell
npm install -g webpack webpack-cli
```

---

## ▶️ 7. Start the Dev Server

Inside the PWA folder, run:

```powershell
$Env:NODE_OPTIONS="--openssl-legacy-provider"; npm run dev
```

Success looks like:

```
ℹ ｢wds｣: Project is running at http://localhost:xxxx
```

You can now visit your PWA in the browser.

---

## 🎯 Summary of Commands (Copy/Paste)

```powershell
cd "C:\Users\user\Downloads\shido\AK Agency's\Personal_Secure_vault\packages\pwa"
nvm install 18
nvm use 18
npm install
npm install --save-dev webpack webpack-cli
$Env:NODE_OPTIONS="--openssl-legacy-provider"; npm run dev
```


