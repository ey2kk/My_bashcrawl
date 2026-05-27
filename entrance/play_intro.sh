#!/bin/bash
# 1. 自动引入全局艺术库（2层绝对路径雷达精准校准，0%出错率）
source "$(cd "$(dirname "${BASH_SOURCE}")" && pwd)/../art.sh"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

clear

# ===================== 🧱 🎬 第一幕：远古地下城铁闸大门重型封锁（100% 绝对垂直对称） =====================
echo -e "${CYAN}"
echo '             .------------------------------------------.             '
echo '            /  \       [ DEEP DARK ANCIENT CATACOMBS ] /  \            '
echo '           /____\_____________________________________/____\           '
echo '           |  ||    ||    ||    ||    ||    ||    ||    ||  |           '
echo '           |  ||    ||    ||    ||    ||    ||    ||    ||  |           '
echo '           |--|*====*====*====*====*====*====*====*====*--|           '
echo '           |  ||    ||    ||    ||    ||    ||    ||    ||  |           '
echo '           |  ||    ||    ||    ||    ||    ||    ||    ||  |           '
echo '           |--|*====*====*====*====*====*====*====*====*--|           '
echo '           |  ||    ||    ||    ||    ||    ||    ||    ||  |           '
echo '           \________________________________________________/           '
echo -e "${NC}"

echo " You stand before the threshold of the forgotten abyss."
echo -e " The iron gates groans softly. It is ${RED}pitch black${NC} inside these deep catacombs..."
echo ""
echo -e "${CYAN}----------------------------------------------------------------------${NC}"
echo ""
# 🌟 故事分屏交互锚点 1
echo -e -n " 👉 ${CYAN}PRESS [ENTER] TO OPEN THE GATES AND STEP INTO THE DARKNESS...${NC}"
read -s -r

# ===================== 🌌 🎬 第二幕：黑暗低语！四周由密到疏星流 夹击 远古预言 =====================
clear
echo -e "${PURPLE}"
echo ' *******  ****  **  *                                         *  **  ****  ******* '
echo '  *****    ***   *                                             *   ***    *****  '
echo '   ***      *                                                       *      ***   '
echo '                 .----------------------------------------.              '
echo ' ***  **  *    ./                                          \.    *  **  ***'
echo '  **   *       |     It is pitch black in these tunnels...  |       *   **  '
echo '   *           |     But fear not, apprentice wizard!       |          *   '
echo '   *           |     You possess a cosmic, magical spell    |          *   '
echo '   *           |     that can list all hidden objects       |          *   '
echo '   *           |     contained right within any dark room.  |          *   '
echo '  **   *       \                                            /       *   **  '
echo ' ***  **  *     `\                                        /`     *  **  ***'
echo '                 `----------------------------------------`              '
echo '   ***      *                                                       *      ***   '
echo '  *****    ***   *                                             *   ***    *****  '
echo ' *******  ****  **  *                                         *  **  ****  ******* '
echo -e "${NC}"
echo ""
# 🌟 故事分屏交互锚点 2
echo -e -n " 👉 ${CYAN}PRESS [ENTER] TO AWAKEN YOUR FIRST TWO COMMAND SPELLS...${NC}"
read -s -r
# ===================== 📜 🎬 第三幕：法则觉醒！高亮黄金基础大教程卷轴（ls 与 cd 终极附魔） =====================
clear
echo -e "${CYAN}"
echo ' *******  ****  **  *                                         *  **  ****  ******* '
echo -e "${NC}"
echo '    ************************************************************'
echo '   *                                                          *'
echo -e "   *  🔮 ${YELLOW}THE LAWS OF THE COMMAND LINE REVEALED:${NC}                *"
echo '   *                                                          *'
echo -e "   *  To SEE clearly in the utter dark, type:                 *"
echo -e "   *     👉  ${GREEN}ls${NC}                                                *"
echo '   *                                                          *'
echo -e "   *  To MOVE around and travel through rooms, type:           *"
echo -e "   *     👉  ${GREEN}cd <directory>${NC}                                    *"
echo '   *                                                          *'
echo '   *  ------------------------------------------------------  *'
echo '   *  🔥 REAL TIME CASTING EXAMPLE:                            *'
echo '   *                                                          *'
echo -e "   *     ${YELLOW}\$ ls${NC}             (Reveal the secrets of this room)    *"
echo -e "   *     ${YELLOW}\$ cd cellar${NC}      (Instantly step into the cellar)     *"
echo '   *                                                          *'
echo -e "   *  ⚠️  Remember to cast ${GREEN}\`ls\`${NC} immediately when you enter   *"
echo '   *     any brand new room! Good luck, wizard.               *'
echo '   *                                                          *'
echo '    ************************************************************'
echo ''

# 终章底端粒子闭合线
echo -e "${CYAN}"
echo ' *******  ****  **  *                                         *  **  ****  ******* '
echo -e "${NC}"
echo ""
exit 0

