# dotfiles-sway

### Notes

1. Distribution used is Artix-Linux, which is basically Arch, but with runit instead of systemd.
2. Palette used is included under `theming/`
3. `swaylock` vanilla is not used, instead I use [swaylock-effects](https://github.com/mortie/swaylock-effects).
4. `xsel` is used, which still works with Wayland because of integration.
5. The colorscheme `treesap` I wrote for rofi is just a modified version of the default `gruvbox` theme included.
6. I have a `calc` mode for rofi, which is provided by [rofi-calc](https://github.com/svenstaro/rofi-calc) (and libqalculate).
7. My login and default shell is `fish`.
8. The firefox theme I use is [Philadelphia Eagles Green](https://addons.mozilla.org/en-US/firefox/addon/philadelphia-eagles-green/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search)
9. The fonts used are Fira Mono, Fira Sans, and Font Awesome for icons.

### Acknowledgements

1. [wallgen](https://github.com/SubhrajitPrusty/wallgen) is used for generating fabulous wallpapers of given color schemes,
    I use the following command specifically:

    ```
    wallgen poly -c "#006D77" -c "#EDF6F9" -c "#83C5BE" -c "#006D77" -p 1000 --use-nn --swirl 20 -n ~/media/wall 2000
    ```

2. [Waybar](https://github.com/Alexays/Waybar) is the bar I use. The default config is beautiful enough, I just themed it for my purposes.
