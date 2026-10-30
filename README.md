# 🎬 YT-Downloader-For-Windows

**A simple YouTube video and audio downloader for Windows, powered by Python, yt-dlp and FFmpeg.**

Download YouTube videos directly from Command Prompt using a simple `.bat` launcher. No complicated commands needed every time!

🔗 **GitHub Repository:**  
https://github.com/jamieduk/YT-Downloader-For-Windows

---

## ✨ Features

- 📥 Download YouTube videos using yt-dlp.
- 🐍 Powered by Python.
- 🎞️ Uses FFmpeg for video and audio processing.
- ⚡ Simple batch-file interface.
- 🔄 Easy installation and updating.
- 🎵 Supports audio extraction.
- 🖥️ Designed for Windows.

---

## 🚀 Quick Start

### 1. Download

Clone or download this repository:

```cmd
git clone https://github.com/jamieduk/YT-Downloader-For-Windows.git
```

Alternatively, download the ZIP from GitHub and extract it.

### 2. Install Dependencies

Open the project folder and run:

```cmd
setup.bat
```

This installs the required components.

### 3. Download Videos

Run:

```cmd
dl.bat
```

When prompted, paste your YouTube URL and press **Enter**.

That's it! yt-dlp will handle the download.

---

## 🛠️ Manual Setup

If you prefer installing everything manually, run these commands in Command Prompt.

**Install FFmpeg:**

```cmd
winget install --id Gyan.FFmpeg.Essentials -e
```

**Install / Update yt-dlp:**

```cmd
py -m pip install -U "yt-dlp[default]"
```

**Check FFmpeg installation:**

```cmd
ffmpeg -version
```

**Check yt-dlp installation:**

```cmd
py -m yt_dlp --version
```

---

## 📥 Manual Download Usage

Download a video by running:

```cmd
py -m yt_dlp "VIDEO_URL"
```

Example:

```cmd
py -m yt_dlp "https://youtu.be/-n50uo8so4U"
```

### Example Track

Try downloading this video:

https://youtu.be/9IWBJnFoo5s

---

## 🔧 Troubleshooting

### Missing Audio in MP4 Files?

Sometimes the downloaded MP4 may not contain the expected audio stream.

This can happen when video and audio are downloaded as separate formats and aren't correctly merged.

**Important:** Check the original `.webm` file before deleting anything. It may contain the audio you need.

### Fix an MP4 Using the Original WEBM Audio

If you have a video without audio and a WEBM file containing the correct audio, try:

```cmd
ffmpeg -i "video.mp4" -i "video.webm" -map 0:v:0 -map 1:a:0 -c:v copy -c:a aac -b:a 192k "video_fixed.mp4"
```

This:
- Takes the video stream from `video.mp4`.
- Takes the audio stream from `video.webm`.
- Copies the video without re-encoding.
- Converts the audio to AAC.
- Creates a new file called `video_fixed.mp4`.

### Extract Audio as MP3

If you only want the audio as a separate MP3:

```cmd
ffmpeg -i "video.webm" -vn -q:a 2 "audio.mp3"
```

---

## 💡 Important: Install FFmpeg First!

**The easiest way to avoid audio merging problems is to install FFmpeg before downloading videos.**

Run:

```cmd
winget install --id Gyan.FFmpeg.Essentials -e
```

FFmpeg allows yt-dlp to merge separate video and audio streams automatically when required.

If FFmpeg was installed while Command Prompt was already open, close and reopen the terminal so Windows can refresh its PATH.

---

## 📋 Requirements

| Component | Purpose |
|---|---|
| Windows | Operating system |
| Python | Runs yt-dlp |
| yt-dlp | Downloads videos |
| FFmpeg | Merges and processes audio/video |
| winget | Installs FFmpeg automatically |

---

## 📂 Project Files

```text
YT-Downloader-For-Windows/
│
├── setup.bat       # Installs required dependencies
├── dl.bat          # Starts the interactive downloader
└── README.md       # Project documentation
```

---

## ❤️ Credits

- [yt-dlp](https://github.com/yt-dlp/yt-dlp) – YouTube downloader.
- [FFmpeg](https://ffmpeg.org/) – Audio and video processing.
- [Python](https://www.python.org/) – Python runtime.
- [Gyan FFmpeg Builds](https://www.gyan.dev/ffmpeg/builds/) – Windows FFmpeg builds.

---

## ⚖️ Disclaimer

This project is provided for educational and personal use.

Please respect copyright laws, YouTube's Terms of Service, and the rights of content creators. Only download content you have permission to download.

---

**⭐ Enjoy downloading!**
