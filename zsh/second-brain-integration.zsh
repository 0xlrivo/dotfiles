# ZSH integration for my second brain's workflow with Neovim and Obsidian
# requires the env variable SB_PATH to be defined in .zshrc

# cd into the second brain
alias sb="cd $SB_PATH"
# open the second brain in neovim (need to cd for fuzzy finder)
alias vsb="cd $SB_PATH; nvim ."
# opens or create today's daily note
alias sbdaily='nvim "$SB_PATH/daily-notes/$(date "+%Y-%m-%d").md"'
# quick capture in the inbox
alias sbcap='nvim "$SB_PATH/00-inbox/$(date "+%Y-%m-%d-%H%M")-quick.md"'

# quick capture in the inbox with a custom title
sbcapf() {
  local title="$*"
  local file="$SB_PATH/00-inbox/$(date "+%Y-%m-%d")-${title// /-}.md"
  cd $SB_PATH
  nvim "$file"
}

# help message
sbhelp() {
	echo "ZSH's integration for my second brain"
	echo "sb\t cd into the second brain's main folder"
	echo "vsb\t open the second brain in neovim"
	echo "sbdaily\t open today's daily note in neovim"
	echo "sbcap\t creates a timestamped quick capture note in neovim"
	echo "sbcapf\t sbcap with a custom title"
}
