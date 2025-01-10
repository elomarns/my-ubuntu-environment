# My Ubuntu Environment

My goal with this repository is to store as much of my Ubuntu environment as possible, enabling me to easily restore it on a fresh Ubuntu installation with a single command.

This was inspired by [Omakub](https://github.com/basecamp/omakub), but I don’t aim for it to be as general or configurable. What I’ve included here reflects my personal preferences, and the installation script is designed to apply them with minimal interaction. Therefore, I don’t expect it to be particularly useful to anyone other than myself.

## Install

To use it, simply run the command below on a freshly installed Ubuntu system:

```bash
wget -qO- https://raw.githubusercontent.com/elomarns/my-ubuntu-environment/main/boot.sh | NAME="Your Name" EMAIL="your.email@example.com" bash
```
