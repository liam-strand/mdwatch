# mdwatch
 
A toolset that allows work to be easily written and compiled in markdown.

## Dependencies

- [`pandoc`](https://pandoc.org/installing.html)
- [`fswatch`](https://emcrisostomo.github.io/fswatch/getting.html)
- [LaTeX](https://www.latex-project.org/get/)

## Installation

1. Make sure all dependencies are installed
2. Add `mdwatch/bin` to `PATH`

## Usage

1. Run `mdwatch.sh <FILENAME> &` to run the script in the background
2. Whenever the markdown file is saved, it will compile into a PDF of the same name.
3. When done, run `fg` to foreground `mdwatch.sh` then kill the process.

## FAQs

### What is `pandoc` and where can I get it?

`pandoc` is a markup document conversion program. It can convert pretty much anything into pretty much anything else. For example, Markdown to HTML, or $\LaTeX$ to Microsoft Word.

I use Homebrew on macOS, so I ran `brew install pandoc`. Most package managers include `pandoc`, so I would recommend looking there first before manually installing it.

### What is `fswatch` and where can I get it?

`fswatch` is a program that allows a script to be run when a file changes. It is a very powerful tool and we are just scratching the surface of its capability with this project.

I use Homebrew on macOS, so I ran `brew install fswatch`. Many package managers include `fswatch`, so I would recommend looking there first before manually installing it.

### How do I add `mdwatch/bin` to `PATH`?

The best way to do this is by adding a line to the `.zshrc`, `.bashrc`, `.cshrc` or similar that appends that directory to `PATH`.

For example, on my system, I have `mdwatch` on my desktop at `~/Desktop/mdwatch` and I use `zsh` as my shell. So, in my `.zshrc` file, I have added the line:

```zsh
export PATH="~/Desktop/mdwatch/bin:$PATH"
``` 

This tells the shell to look in `~/Desktop/mdwatch/bin` when I try to run a command.

test
