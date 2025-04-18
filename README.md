# 0xlrivo's Linux Development Settings

> my entire linux development configuration settings for terminal-only experience

## oh-my-zsh
> simply install it from the [official homepage](https://ohmyz.sh/)

### git commands
Here I'll report the foundamental ones I'll probably need to remember:
- `gst` : git status
- `gcam`: git commit --all --message
- `gp`  : git push 
- `glog`: git log --oneline -- decorate --graph
- `glg` : git log --stat

Anyways the full list is [here](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)

## NVIM
To setup nvim you simply need to create a symlink inside ~/.config that points to the nvim/ in this directory

```bash
ln -s ~/.lrivo-linux-config/nvim ~/.config/nvim
```
