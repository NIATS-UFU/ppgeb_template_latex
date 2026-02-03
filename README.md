<div id="home" align="left"></div>

# PPGEB-UFU template

> This repository contains a document template for final coursework, dissertation, and thesis for the Undergraduate and Graduate Programs in Biomedical Engineering at the Federal University of Uberlândia.

## 🪄 Preview

|Cover | Contents | Content example |
| :---: | :---: | :---: |
| <img width="605" height="860" alt="image" src="https://github.com/user-attachments/assets/7cb45013-5846-41a7-8f07-7305253d956a" /> |  <img width="600" height="858" alt="image" src="https://github.com/user-attachments/assets/ebf06bc7-d77c-41c2-957d-496f7a1539fd" /> | <img width="600" height="858" alt="image" src="https://github.com/user-attachments/assets/a2f3a869-1cf0-4ef5-b87f-0197a621342f" /> |

## 🗂 Project structure

```text
project-root/
│   .gitignore                       # This file can be removed
│   main.pdf                         # Final document example 
│   main.tex                         # Main LaTeX file
│   ppgeb.cls                        # Custom document class
│   README.md                        # This file can be removed
│   titlepage.tex
│   tree.txt
│
├───chapters   # Document chapters
│       chapter_conclusion.tex
│       chapter_discussion.tex
│       chapter_introduction.tex
│       chapter_methods.tex
│       chapter_results.tex
│
├───figs              # Directory containing the figures used
│   │   LogoUFU.pdf
│   │
│   └───template      # This folder is intended solely for documents pertaining to the institution's logo, defense minutes, and catalog cards
   
│           AtaDeDefesa.pdf
│           FichaCatalografica.pdf
│           Logo.pdf
│
├───postextual
│       appendix1.tex
│
├───pretextual
│       abstract.tex
│       acknowledgements.tex
│       glossary.tex
│       preamble.tex
│
└───references
        ref.bib
```

## 📄 Generating the final document

This LaTeX template can be compiled to PDF either **locally** on your computer or using [**Overleaf**](https://www.overleaf.com/) online.

### 1. Using Overleaf

1. Upload the repository to [**Overleaf**](https://www.overleaf.com/).
2. Open `main.tex`.
3. Click **Recompile** to generate the PDF.
4. The output PDF will appear in the Overleaf preview.

### 2. Local compilation

To compile the document locally, make sure the following requirements are met:

#### 🪛 Requirements

- **LaTeX distribution**:  
  - Linux/macOS: [TeX Live](https://www.tug.org/texlive/)  
  - Windows: [MiKTeX](https://miktex.org)

- **PDF compiler**:  
  - `pdflatex` or `lualatex`  
  - Recommended: `latexmk` for automatic compilation of multiple passes

- **LaTeX editor**:
  - a LaTeX or code editor, such as [TeX MAKER](https://www.xm1math.net/texmaker/), [TeXStudio](https://www.texstudio.org) or [VSCodium](https://vscodium.com)
          
- **Required LaTeX packages** (most of them are included in standard LaTeX distributions):  
  - `graphicx` (for including images)  
  - `subcaption` (for subfigures)  
  - `amsmath`, `amssymb` (for math symbols)  
  - `tcolorbox` (for boxes and highlights)
  - `hyperref` (for urls)
  - `longtable`, `tabularx`, `xltabular` (for tables)
  - `listings` (for source code formatting)
    
- **Bibliography management**:  
  - a reference manager like [Jabref](https://www.jabref.org)

#### ⚡Useful shortcuts to make your life easier

This template uses the `glossaries` package to generate glossaries and acronyms. When compiling the document **locally**, you can configure a custom command to run `makeglossaries` directly from the editor menu.

- **🔧 How to configure in TeX MAKER**
     1. Open TeX MAKER
     2. Go to: `Users` → `User commands` → `Edit user commands`
     3. Add a new command with the following settings:
        - Menu item name: `makeglossaries`
        - Command: `makeglossaries %`

In addition, you can configure a shortcut to automatically compile the document using `latexmk`.  
       
- **🔧 How to configure in TeX MAKER**
     1. Open TeX MAKER
     2. Go to: `Users` → `User commands` → `Edit user commands`
     3. Add a new command with the following settings:
        - Menu item name: `latexmk`
        - Command: `latexmk -synctex=1 -interaction=nonstopmode -bibtex -pdf  %.tex | "C:/Program Files/Adobe/Acrobat DC/Acrobat/Acrobat.exe" %.pdf`

⚠️ **Atention:** In this case, you can specify the absolute path to your PDF reader executable (e.g., `C:/Program Files/Adobe/Acrobat DC/Acrobat/Acrobat.exe`).

## 🍰 How to Contribute
If you would like to contribute, please follow these steps:

1. Fork this repository.
2. Create a new branch for your changes (`git checkout -b feature-name`).
3. Make your changes and commit them (`git commit -m "📝 Describe your changes"`).
4. Push the branch to your fork (`git push origin feature-name`).
5. Open a pull request on the main repository.

## 📬 Questions?

If you have any questions or need help using this template, feel free to open an issue or contact the repository maintainer.

<div> 
  <a href = "mailto:arianacabral57@ufu.br"><img src="https://img.shields.io/badge/-UFU-%23337?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
 <a href = "mailto:adriano@ufu.br"><img src="https://img.shields.io/badge/-UFU-%23337?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
</div>


<div align="right">
    <b><a href="#home">▲ top</a></b>
</div>
