export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lukerandall"
export XDG_RUNTIME_DIR=/run/user/1000

plugins=(git zsh-autosuggestions)
export PATH=$PATH:/opt/resolve
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=green'

source $ZSH/oh-my-zsh.sh



# V�rifier si fastfetch est d�j� lanc�
# V�rifier si fastfetch est d�j� lanc� dans ce terminal
LOCKFILE="$HOME/.fastfetch_lock"

# Si le fichier de verrouillage n'existe pas, on lance fastfetch et cr�e le fichier de verrouillage
if [ ! -f "$LOCKFILE" ]; then
    touch "$LOCKFILE"  # Cr�e le fichier de verrouillage
    fastfetch
fi

# Supprimer le fichier de verrouillage � la fermeture du terminal
trap 'rm -f "$LOCKFILE"' EXIT
