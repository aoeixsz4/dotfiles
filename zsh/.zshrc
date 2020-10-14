# Just switch on Powerlevel10k for rxvt
OS=$(uname -s)
if [[ "$TERM" =~ '^rxvt' ]] && [[ "$OS" == "Linux" ]]; then
    # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
    # Initialization code that may require console input (password prompts, [y/n]
    # confirmations, etc.) must go above this block; everything else may go below.
    if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
      source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    fi

    source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

    # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    # without the below definition, gpg signing fails,
    # albeit only if git calls gpg ... ¯\_(ツ)_/¯
    export GPG_TTY=$TTY
else
    # Lines configured by zsh-newuser-install
    HISTFILE=~/.histfile
    HISTSIZE=1000
    SAVEHIST=1000
    setopt autocd extendedglob notify
    unsetopt beep
    bindkey -v

    autoload -Uz compinit promptinit
    compinit
    promptinit
    prompt adam2
fi

# put splicehack in the path
export PATH=$HOME/bin:$HOME/.cargo/bin:$PATH
export RUST_BACKTRACE=1
export RUST_LOG=debug
alias ls='ls --color=auto'
gh-clone () {
    git clone github:$*
}

