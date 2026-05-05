# ArchConfigs (Bare Repo Setup)

Мои дотфайлы для **Arch Linux**. Управление через Bare-репозиторий

---

## Как развернуть у себя

1. Добавь алиас в свой конфиг шелла (.zshrc или .bashrc):
```bash
alias gitconfig='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

2. Склонируй репозиторий в папку:
```bash
mkdir ~/.dotfiles && git clone --bare https://github.com/mrover41/ArchConfigs.git $HOME/.dotfiles
```

3. Разверни репозиторий
```bash
gitconfig checkout
```

### 1. Алиас
Добавь эту строку в свой `.bashrc` или `.zshrc`:
```bash
alias gitconfig='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

### 2. Шоб небыло лишних логов
```bash
gitconfig config --local status.showUntrackedFiles no
```
