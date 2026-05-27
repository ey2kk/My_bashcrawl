#!/bin/bash

FILES=(
"./.rift/arena/pit/corpse"
"./.rift/arena/pit/drum"
"./.rift/arena/pit/drummer"
"./.rift/arena/pit/end"
"./.rift/arena/pit/graduation_log.txt"
"./.rift/arena/pit/nyarlathotep"
"./.rift/arena/pit/platinum"
"./.rift/arena/pit/scroll"
"./.rift/arena/pit/treasure"
"./.rift/arena/pit/wizard-light"
"./.rift/arena/scroll"
"./.rift/box"
"./.rift/scroll"
"./.rift/spire/mezzanine/button"
"./.rift/spire/mezzanine/window"
"./.rift/spire/scroll"
"./cellar/armoury/chamber/pieces"
"./cellar/armoury/chamber/scroll"
"./cellar/armoury/chamber/spell"
"./cellar/armoury/chamber/treasure"
"./cellar/armoury/goblin"
"./cellar/armoury/potion"
"./cellar/armoury/scroll"
"./cellar/armoury/treasure"
"./cellar/scroll"
"./cellar/treasure"
"./chapel/.bless"
"./chapel/altar"
"./chapel/courtyard/aviary/crystal"
"./chapel/courtyard/aviary/penguin"
"./chapel/courtyard/aviary/scroll"
"./chapel/courtyard/fountain"
"./chapel/courtyard/rags"
"./chapel/courtyard/scroll"
"./chapel/scroll"
"./scrap"
"./scroll"
"./test_goblin"
"./vault/.bless"
"./vault/glass"
"./vault/scroll"
"./vault/stronghold/goblet"
"./vault/stronghold/nursery/potion"
"./vault/stronghold/nursery/scroll"
"./vault/stronghold/nursery/spell"
"./vault/stronghold/orb1"
"./vault/stronghold/orb2"
"./vault/stronghold/orb3"
"./vault/stronghold/scroll"
)

ENTRANCE_DIR="$(cd "$(dirname "${BASH_SOURCE}")" && pwd)"

for FILE in "${FILES[@]}"; do
    if [ ! -f "$FILE" ]; then continue; fi

    while true; do
        clear
        echo -e "\033[1;33m====================================================\033[0m"
        echo -e "\033[1;32mTarget: $FILE\033[0m"
        echo -e "\033[1;33m====================================================\033[0m"
        echo -e "\033[1;36m[Original Content]:\033[0m"
        cat "$FILE"
        echo -e "\033[1;33m----------------------------------------------------\033[0m"

        DEPTH=$(echo "$FILE" | tr -cd '/' | wc -c)
        UP_PATH=""
        for ((i=1; i<DEPTH; i++)); do UP_PATH="../$UP_PATH"; done
        
        echo -e "💡 Code to paste at top:"
        echo -e "\033[1;35msource \"\$(cd \"\$(dirname \"\${BASH_SOURCE}\")\" && pwd)/${UP_PATH}art.sh\"\033[0m"
        echo -e "\033[1;33m----------------------------------------------------\033[0m"

        echo "Options:"
        echo "1) Edit (nano)"
        echo "2) Skip"
        echo "3) Exit"
        read -p "Choose (1/2/3): " CHOICE

        if [ "$CHOICE" == "1" ]; then
            nano "$FILE"
            chmod +x "$FILE"
            
            clear
            echo -e "\033[1;35m[Workshop] Launching Preview (Safe Mode)...\033[0m"
            echo -e "\033[1;33m----------------------------------------------------\033[0m"
            
            # 🌟 核心防卡死进化：切换到脚本所在子目录，执行后强行中断进程释放控制权
            ABS_PATH="${ENTRANCE_DIR}/${FILE#./}"
            DIR_PATH="$(dirname "$ABS_PATH")"
            FILE_NAME="$(basename "$ABS_PATH")"
            
            (cd "$DIR_PATH" && bash "./$FILE_NAME")
            
            echo -e "\033[1;33m----------------------------------------------------\033[0m"
            read -p "Satisfied with the preview result? [Y/N]: " PREVIEW_CHOICE
            
            if [[ "$PREVIEW_CHOICE" =~ ^[Yy]$ || -z "$PREVIEW_CHOICE" ]]; then
                echo -e "\033[1;32m[Locked] -> $FILE\033[0m"
                break 
            fi
        elif [ "$CHOICE" == "2" ]; then
            break 
        elif [ "$CHOICE" == "3" ]; then
            exit 0
        else
            echo "Invalid input."
            sleep 1
        fi
    done
done
echo "All done!"
