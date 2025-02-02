## dotfiles

A development environment setup with dotfiles, featuring Neovim (configured with Lua), and Tmux for efficient terminal management, tailored for a streamlined and productive workflow.

## How to Setup

The first step is to clone the repository into your `.config` folder:

```shell
git clone https://github.com/feliperdamaceno/dotfiles.git ~/.config
```

Also make sure to clone `tmux` `tmp` package manager repository to the correct path by running:

```shell
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Once that is done, start `tmux` and run `tmux source ~/.config/tmux/tmux.conf` to acknowledge the changes.

Finally, to fetch its plugins, press `prefix` + `I` (prefix is usually being `ctrl + b`)

For setting up `neovim`, first make sure to have it installed by following instructions from the [official repository](https://github.com/neovim/neovim). Once that's done, simply open it and all the settings and plugins will be automatically loaded.

## Licence

This is an open-source project and is available under the [**MIT License**](LICENSE). You are free to use, modify, and distribute the code in accordance with the terms of the license.

## Contributors

Contributions are highly appreciated! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

[feliperdamaceno](https://github.com/feliperdamaceno)

## Contact me

Linkedin: [feliperdamaceno](https://www.linkedin.com/in/feliperdamaceno)
