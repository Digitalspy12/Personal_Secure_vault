
# Simple & Secure Password & Data Management

A lightweight and secure solution for managing passwords and sensitive data — built for individuals and teams.

---

## 🚀 How to Use

Padloc includes multiple components, but to run your own instance locally you only need the **Server** and the **Web Client**. Setting it up is straightforward:

```bash
git clone git@github.com:padloc/padloc.git
cd padloc
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
NODE_OPTIONS=--openssl-legacy-provider npm run dev
```

This will start:

* The backend server (default: **[http://localhost:3000](http://localhost:3000)**)
* The PWA client (default: **[http://localhost:8080](http://localhost:8080)**)

