#!/bin/bash
# =======================================================
# 🎮 BASHCRAWL: MOD WORKSHOP (开发用逐脚本编辑预览工具)
# =======================================================

GAME_DIR="$(cd "$(dirname "${BASH_SOURCE}")/entrance" && pwd)"
cd "$GAME_DIR" || exit 1

# 自动收集所有以 #!/bin/bash 开头的游戏脚本（排除全局艺术库自身）
FILES=()
while IFS= read -r f; do
    FILES+=("$f")
done < <(grep -rl '^#!/bin/bash' . 2>/dev/null | grep -v '^\./art\.sh$' | sort)

for FILE in "${FILES[@]}"; do
    [ -z "$FILE" ] && continue
    REL="${FILE#./}"
    [ -f "$REL" ] || continue

    while true; do
        clear
        echo -e "\033[1;33m====================================================\033[0m"
        echo -e "\033[1;32mTarget: $REL\033[0m"
        echo -e "\033[1;33m====================================================\033[0m"
        echo -e "\033[1;36m[Original Content]:\033[0m"
        cat "$REL"
        echo -e "\033[1;33m----------------------------------------------------\033[0m"

        DIR_REL="$(dirname "$REL")"
        UP_PATH=""
        if [ "$DIR_REL" != "." ]; then
            N=$(echo "$DIR_REL" | tr -cd '/' | wc -c)
            for ((i=0; i<=N; i++)); do UP_PATH="../$UP_PATH"; done
        fi

        echo -e "💡 Code to paste at top:"
        echo -e "\033[1;35msource \"\$(cd \"\$(dirname \"\${BASH_SOURCE}\")\" && pwd)/${UP_PATH}art.sh\"\033[0m"
        echo -e "\033[1;33m----------------------------------------------------\033[0m"

        echo "Options:"
        echo "1) Edit (nano)"
        echo "2) Skip"
        echo "3) Exit"
        read -p "Choose (1/2/3): " CHOICE

        if [ "$CHOICE" == "1" ]; then
            nano "$REL"
            chmod +x "$REL"

            clear
            echo -e "\033[1;35m[Workshop] Launching Preview (Safe Mode)...\033[0m"
            echo -e "\033[1;33m----------------------------------------------------\033[0m"
            (cd "$(dirname "$REL")" && bash "./$(basename "$REL")")
            echo -e "\033[1;33m----------------------------------------------------\033[0m"
            read -p "Satisfied with the preview result? [Y/N]: " PREVIEW_CHOICE

            if [[ "$PREVIEW_CHOICE" =~ ^[Yy]$ || -z "$PREVIEW_CHOICE" ]]; then
                echo -e "\033[1;32m[Locked] -> $REL\033[0m"
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
