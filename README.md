# PPGEB template

> This repository contains a document template for final coursework, dissertation, and thesis for the Undergraduate and Graduate Programs in Biomedical Engineering at the Federal University of Uberlândia.

## Preview

|Cover | Contents | Content example |
| :---: | :---: | :---: |
| <img width="604" height="858" alt="image" src="https://github.com/user-attachments/assets/7cb45013-5846-41a7-8f07-7305253d956a" /> |  <img width="604" height="858" alt="image" src="https://github.com/user-attachments/assets/ebf06bc7-d77c-41c2-957d-496f7a1539fd" /> | <img width="604" height="858" alt="image" src="https://github.com/user-attachments/assets/a2f3a869-1cf0-4ef5-b87f-0197a621342f" /> |

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

#### Requirements

- **LaTeX distribution**:  
  - Linux/macOS: TeX Live  
  - Windows: MiKTeX

- **PDF compiler**:  
  - `pdflatex` or `lualatex`  
  - Recommended: `latexmk` for automatic compilation of multiple passes

- *LaTeX editor*:
  - a LaTeX or code editor, like [TeX MAKER](https://www.xm1math.net/texmaker/), [TeXStudio](https://www.texstudio.org) or [VSCodium](https://vscodium.com)
  -       
- **Required LaTeX packages** (usually included in standard distributions):  
  - `graphicx` (for including images)  
  - `subcaption` (for subfigures)  
  - `amsmath`, `amssymb` (for math symbols)  
  - `tcolorbox` (for boxes and highlights)
  - `hyperref` (for urls)
  - `longtable`, `tabularx`, `xltabular` (for tables)
    
- **Bibliography management**:  
  - a reference manager like [Jabref](https://www.jabref.org)


