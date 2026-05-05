# ArchConfigs (Bare Repo Setup)

Мои дотфайлы для **Arch Linux**. Управление через Bare-репозиторий

---

## Как развернуть у себя

1. Добавь алиас в конфиг шелла (.zshrc или .bashrc):
```bash
alias gitconfig='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

2. Склонируй репозиторий в папку:
```bash
mkdir ~/.dotfiles & git clone --bare https://github.com/mrover41/ArchConfigs.git ~/.dotfiles
```

3. Разверни репозиторий
```bash
gitconfig checkout
```

### 1. Алиас (Еще раз естли у кого-то дименция)
Добавь эту строку в `.bashrc` или `.zshrc`:
```bash
alias gitconfig='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

### 2. Шоб небыло лишних логов
```bash
gitconfig config --local status.showUntrackedFiles no
```
