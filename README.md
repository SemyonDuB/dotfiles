# Dotfiles

These are my configuration files for daily uses on different Linux distributions.
All configuration files require installing specific applications on the system, so I attached a dependencies table.

## Dependencie table
| Config                            | Dependencies                                                                   |
|-----------------------------------|--------------------------------------------------------------------------------|
| [i3wm](.config/i3/config)         | i3wm, pulseaudio, polybar, pactl, brightnessctl, systemd, kitty, rofi, compton |
| [polybar](.config/polybar/config) | polybar, pulseaudio, i3wm, psmisc                                              |
| [nvim](.config/nvim/init.vim)     | neovim, cmake, npm, nodejs                                                     |
| [kitty](.config/kitty/kitty.conf) | kitty                                                                          |
| [ranger](.config/ranger/rc.conf)  | ranger                                                                         |
| [zsh](.zshrc)                     | zsh, oh-my-zsh (submodule)                                                     |

**Fonts**: Source Code Pro, Powerline fonts, Sauce Code Powerline. All fonts available in the **submodule**.
