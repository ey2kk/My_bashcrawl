# 🎮 My_bashcrawl: ASCII-ART Edition

This is an advanced, high-immersion visual overhaul and educational reinforcement of the classic CLI text-adventure game **Bashcrawl**. 

---

## 📜 Credits & Eternal Gratitude

This repository is a heavily customized, unsanctioned magical deviation built directly upon the amazing open-source foundation of the original game. **The entire core gameplay loop, text chronicles, secret paths, and underlying command-line educational concepts are 100% based on the brilliant work of the original creators.** We stand firmly on the shoulders of giants.

* **Original Game Project & Authors:** To explore the baseline, pristine dry-text legacy version of the game, or to contribute your own custom dungeon rooms, please visit the origin version.(https://gitlab.com/slackermedia/bashcrawl)

---

## 🔮 The Philosophy & Motivation

The original *Bashcrawl* is a masterpiece engineered to teach core POSIX (Linux, BSD, UNIX) terminal operations through directory navigation. However, wandering through absolute darkness with raw un-styled text lines occasionally detached modern apprentices from the narrative weight of a true dungeon crawl.

**My Vision:** I meticulously embedded a complete ecosystem of **ASCII Art cinematic sequences** into the terminal. Every boss encounter awakening, every holy purification altar, and every long-forgotten scroll now manifests with intense character layouts and vibrant ANSI multi-color enchantments. This visual escalation bridges the raw interface of terminal syntax with the immersive tension of a hardcore desktop RPG, vastly elevating the learning experience without altering a single byte of the original puzzle logic.

---

## ⚡ Epic Enhancements & Key Differences

This edition introduces critical stability fixes and intelligent educational filters to streamline your mystical journey:

### 1. The Interceptor Wall: Code-Leak Prevention (The Law of POSIX)
* **The Problem:** In the legacy game, players frequently ruined their own immersion or accidentally peeked at game triggers by using `cat` on executable encounter scripts (monsters, interactive mechanics).
* **The Magic:** This mod introduces an intelligent global **Cat Radar Filter**. If a player attempts to `cat` an active script (e.g., `statue`, `ghost`), the terminal instantly wipes the screen and flashes an authoritative warning explaining the stark educational difference between inspecting text (`cat`) versus physically triggering an application (`./`).
  
### 2. Elimination of the Legacy Stack-Overflow Freeze (Stability Overhaul)
* **The Bug:** The original final boss fight against `nyarlathotep` suffered from a deep, catastrophic code-recursion architecture error. Consecutive combat loops exponentially multiplied the function call-stack, resulting in an inevitable terminal crash/freeze (Stack Overflow) mid-battle.
* **The Fix:** I completely eradicated this multi-year legacy bug by modernizing the function convergence logic. The final epic clash now runs at 100% industrial stability.


---

## 🕹️ Try It on Your Machine (How to Play)

To start your mystical journey and unleash the enhanced visual illusions, follow these steps:

### For Standard Linux & WSL (Windows Subsystem for Linux)
1. Clone or download this repository to your machine.
2. Navigate to the game root directory and execute the customized master shell launcher:
   ```bash
   ./start.sh
   ```
3. The iron gates will groan softly, your terminal configuration will lock into place, and you will be automatically escorted into the `entrance` room with `ls` automatically cast!

### For Legacy Manual Drag-and-Drop
1. Open a terminal emulator.
2. Type the letters `cd ` into the terminal (with a space at the end).
3. Drag and drop the `entrance` directory from this folder into your terminal window, then press `RETURN`.
4. Your very first move is very important. Type this into your terminal to read the scroll:
   ```bash
   cat scroll
   ```
   May the gods save you.

---

## ⚠️ CRITICAL NOTES FOR macOS X (Permission Defiance)

It appears that there is a problem with the standard `Archive Utility` that is called from `Finder` when a zip archive is double-clicked to extract to the current folder, if you're downloading the archive from GitHub/GitLab rather than using git's `clone` facility. You may find that all of the files in the destination folder are forcibly set to be executable. This will cause great confusion as you play the game as intended, because every plain text file will be indistinguishable from executable scripts (`ls -F` will show stars `*` on everything!).

**To unpack the archive correctly on macOS without breaking the educational flags:**

1. Open your favorite terminal emulator app (e.g., `Terminal.app` or `iTerm2`).
2. Navigate to the directory where you want to unpack the zip archive:
   ```bash
   cd /path/to/destination
   ```
3. Type `unzip ` (that's 'unzip' followed by one or more *spaces*).
4. From the `Finder`, drag the downloaded zip file to your terminal emulator window to paste the absolute path, resulting in:
   ```bash
   unzip /Users/\${USER}/Downloads/bashcrawl-master.zip
   ```
5. Press `Enter` to unpack the contents cleanly to the current directory.
6. Change directory into the enchanted `entrance`:
   ```bash
   cd bashcrawl-master/entrance
   ```
At this point, you're safely in the game! Have fun!
