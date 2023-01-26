FROM archlinux:latest

COPY emacs.exp /tmp
RUN pacman -Sy
RUN pacman -S --noconfirm emacs-nox git expect fd ripgrep
RUN git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
RUN expect /tmp/emacs.exp
COPY config/ /root/.doom.d/