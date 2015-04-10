# dotfiles

My "not important" dotfiles.

* .vimrc and .vim (make it so I can work)
* .tmux.conf (same)
* .login_conf (freebsd: utf-8 for my user)

For my loosy mind:

```
git clone https://github.com/fleu42/dotfiles
cd dotfiles
ls dot.* | xargs -n1 -P1 -iFILE cp -r FILE ~/
cd && rename -s/dot// dot.*
```

Have a thought for the amazing guys who created these tools ;-).



