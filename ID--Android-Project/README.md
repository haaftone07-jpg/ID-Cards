# ID - WebView Wrapper

A professional, lightweight Android WebView wrapper for the [PrintTech ID Cards](https://printtechidcards.netlify.app/) platform. This application allows users to access the full functionality of the web dashboard within a native Android environment.

## 🚀 Features
- **Full-Screen Experience:** Optimized WebView for mobile usage.
- **Hardware Support:** Integrated support for camera, location, and file storage.
- **CI/CD Ready:** Automated APK generation via GitHub Actions.

## 🛠 Required Permissions
To ensure full functionality of the web platform (such as capturing photos for IDs or downloading generated files), the app requests the following permissions:
- `INTERNET`: To load the web content.
- `CAMERA`: For capturing ID photos directly via the web interface.
- `ACCESS_FINE_LOCATION`: For location-based features.
- `READ_EXTERNAL_STORAGE` & `WRITE_EXTERNAL_STORAGE`: For uploading assets and downloading generated ID cards.
- `RECORD_AUDIO`: For multimedia support if required by the platform.

---

## 📦 How to Get the APK

### Method 1: GitHub Actions (Recommended & Easiest)
You don’t need to install Android Studio to get the APK. This repository is configured to build the app automatically.

1. **Create a new repository** on your GitHub account.
2. **Upload all files** from this project folder to your new repository.
3. Navigate to the **"Actions"** tab at the top of your repository page.
4. You will see a workflow named **"Build Android APK"** running. Wait approximately 2-3 minutes for it to finish.
5. Click on the **completed run**, scroll down to the **"Artifacts"** section, and click to download your ready-to-install APK.

### Method 2: Manual Build (For Developers)
If you wish to modify the code or build locally:
1. Clone this repository.
2. Open the project in **Android Studio**.
3. Sync Project with Gradle Files.
4. Click **Run** (Green play button) or go to `Build > Build Bundle(s) / APK(s) > Build APK(s)`.

---

## ⚙️ Configuration
The app is currently configured to point to:
`https://printtechidcards.netlify.app/`

To change the URL, modify the `URL` constant in the `MainActivity.java` (or equivalent) file.

## 📄 License
This project is provided "as-is" for the purpose of wrapping the PrintTech ID Cards web service. Please ensure compliance with the website's terms of service.