# 🎵 Private Lavalink Server v4

Optimized for **Render.com** (Docker, 512MB RAM Tuning, Zero Buffer & Lossless Audio).

### Pre-configured Features:
- 🚀 **YouTube Support**: Powered by official `dev.lavalink.youtube:youtube-plugin:1.11.5`
- 🟢 **Spotify Support**: Powered by `com.github.topi314.lavasrc:lavasrc-plugin:4.8.3`
- ⚡ **Zero-Buffer & High Audio Quality**: Tuned Opus 8 + 3-second frame buffers
- 🛡️ **Render Free Tier Optimized**: Java heap locked to `-Xmx400m` to prevent `OOMKilled` crashes

---

## 🚀 One-Click Deploy to Render

Click the button below to deploy your private Lavalink server to Render:

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/Bunnysh17/lavalink-server)

---

## 🤖 Connect to Discord Bot

In your bot configuration (e.g. `config.js` or Shoukaku/Poru/Lavalink-Client):

```javascript
nodes: [
  {
    name: 'MY-RENDER-LAVALINK',
    url: 'YOUR-SERVICE-NAME.onrender.com:443', // Without https://
    auth: 'youshallnotpass', // Or your custom password
    secure: true // SSL enabled on Render
  }
]
```
