# Personal CV

This CV is based on [Awesome-LaTeX-CV](https://github.com/huajh/awesome-latex-cv), with intention for job application.

## Setup

This latex CV template uses `luatex` engine and needs [fontawesome Package version 4.6.3.2.](http://www.ctan.org/tex-archive/fonts/fontawesome) or higher version.

For Windows: TeXLive 2013 or higher version is recommendered.

For ArchLinux:

```sh
sudo pacman -S texlive texlive-langenglish minted biber pdftk dblatex latex2html latex2rtf
```

## Build PDF

From Terminal Emulator or Command Line, change to project folder and run:

```sh
make all
```

and to clean

```sh
make clean
```

