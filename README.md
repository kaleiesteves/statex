# State Diagram Latex Template
_How I create PDF diagrams on Mac._

## Required
Assuming you already have brew

1. Install BasicTeX
```bash
brew install --cask basictex
```

2. Add it to PATH
The path you need to provide should be `/Library/TeX/texbin`

I like to edit my PATH variable in _~/.bashrc_ to avoid messy PATH settings.
If you're having issues, it could be due to the order your PATH is set. I've noticed this to be an issue for some brew packages.

3. Update tlmgr
```bash
sudo tlmgr update --self
```
_This should have downloaded with BasicTeX. It needs full system permissions, so only install trusted packages._

3. Get the standalone package for previewing
```bash
sudo tlmgr install standalone preview
```

4. Give the script _doit.sh_ permission to run
```bash
chmod +x doit.sh
```

## Usage
You can just use the Makefile to `make`, `make clean`, and `make clean-all`.
The script _doit.sh_ is really just to streamline my own processes across projects. I know I babble a lot, but when it comes to anything CLI related I will go the extra mile to avoid typing extra buttons.

#### Option A

1. Setup doit
```bash
echo 'alias doit="./doit.sh" >> ~/.bash_aliases.sh'
chmod +x doit.sh
```
Yeah ik ik...

2. Doit
```bash
doit
```
The above will open the PDF in preview after making it, as well as clean the output directory. You can also use `doit clean` to remove the PDF as well.

#### Option B

1. Make
```bash
make
make open
make clean
make clean-all # Also removes PDF
```

That's it!
