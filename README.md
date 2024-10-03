# Dotfiles

Проект предназначен для хранения конфигураций в разных операционных системах

# Установка

Настройте `bash alias` для управления файлами конфигураций. Это всё тот же git, но с небольной настройкой по целевым папкам

```sh
alias cf="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
```

## For Linux

``` sh
git clone --bare https://github.com/anufriev-dev/dotfiles.git ~/dotfiles
```

# Использование

Для того чтобы применить конфигурационные файлы, просто переключитесь на нужную ветку


```sh
cf switch linux-pacman-kde
```

>[!IMPORTANT]
>Перед тем как переключится, я надеюсь вы сделали бэкап нужных вам конфигураций

```sh
cf switch linux-pacman-kde -f
```


На этом этапе в вашей системе уже установлены все конфигурационные файлы, осталось установить недостающие программы

>[!IMPORTANT]
>В самом начале выполнения скрипта, вас попросят ввети пароль для администратора 1 раз


```sh
bash ~/dotfiles/.main/install.sh
```

# Краткое описание

Система строится на ветках

Ветка `master` базовая для всех веток

Далее идёт операционная система, для которой предназначен набор файлов
`linux`, `windows`, `macos`


Конфигурация Linux состоит из 3-х основных веток

1) Ветка `linux` - базовая ветка, подходит для любой системы Linux.
2) Втека `linux-[package-manager]` - специфична для основного __пакетного менеджера__ системы
3) Ветка `linux-[package-manager]-[gui]` - специфична для основного __пакетного менеджера__ и __графической оболочки__ системы


# Набор правил

В каждой ветке есть определённый набор [файлов](map.json). Эти файлы можно и нужно изменять __только в этих ветках__.
