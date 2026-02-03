% Class identification
%========================================================================
\NeedsTeXFormat{LaTeX2e}[2023/04/24]
\ProvidesClass{ppgeb}[2024/06/24 (v 02.00) - by Prof. Adriano de Oliveira Andrade, PhD (adriano@ufu.br), and modified by Ariana Moura Cabral]

% Inherited class - memoir
%========================================================================
% https://github.com/abntex/biblatex-abnt/blob/dev/doc/biblatex-abnt.pdf
\DeclareOption {numeric} {\PassOptionsToPackage{style=abnt-numeric, comp}{biblatex}}
\DeclareOption {autordata} {\PassOptionsToPackage{style=abnt}{biblatex}}
\DeclareOption {portuguese} {\PassOptionsToPackage{portuguese}{babel}}
\DeclareOption {english} {\PassOptionsToPackage{english}{babel}}
\DeclareOption {article} {\PassOptionsToClass{article}{memoir}}

\PassOptionsToPackage{hyphens}{url}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax

\LoadClass[12pt,oneside,a4paper,final]{memoir}

% Pacotes requeridos
%========================================================================
\RequirePackage [utf8]{inputenc}
\RequirePackage {babel}
\RequirePackage {csquotes}
\RequirePackage {lmodern}
\RequirePackage [T1]{fontenc}
\RequirePackage {amsmath}
\RequirePackage {amsfonts}
\RequirePackage {amssymb}
\RequirePackage [svgnames]{xcolor}
\RequirePackage [colorlinks = true,
hypertexnames=true,
            linkcolor = black,
            urlcolor  = blue,
            citecolor = black,
            anchorcolor = black]{hyperref}
\RequirePackage {graphicx}
\RequirePackage{subcaption}     
\RequirePackage {lipsum} 
\RequirePackage{pdfpages}
\RequirePackage{indentfirst}
\RequirePackage{colortbl}
\RequirePackage{wrapfig}
\RequirePackage{listings}
\RequirePackage[svgnames]{xcolor}
\RequirePackage{minted}
\RequirePackage{algpseudocode}
\RequirePackage{algorithm}
\RequirePackage[ % style = abnt-numeric,
   backend=biber, 
    justify,
    indent,
    repeatfields, % Imprime os campos repetidos na bibliografia, em vez de substituí-los por traços sublineares,
	noslsn, %Oculta as abreviações [s.l], [s.n] e [s.l.: s.n.]
	% backref, % informa em qual página a referência foi citada
	maxnames=100 % ver https://linorg.usp.br/CTAN/macros/latex/contrib/biblatex/doc/biblatex.pdf
    ]{biblatex}

\RequirePackage[acronym,nonumberlist]{glossaries}
\setacronymstyle{long-short}
\glstoctrue
\makeglossaries
%imakeidx
\RequirePackage{imakeidx}
\makeindex[columns=3, title=\indexname, intoc]

\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{xltabular}
\RequirePackage{caption}

\RequirePackage{mathtools}

% set the depth of the table of contents
\maxtocdepth{subsection} % put 3 levels into the ToC
\setsecnumdepth{subsection}

 
\setstocksize{297mm}{210mm}
\settrimmedsize{297mm}{210mm}{*}
\setlrmarginsandblock{3.0cm}{2.0cm}{*}
\setulmarginsandblock{3.0cm}{2.0cm}{*}
\checkandfixthelayout

\captiondelim{ -- }

\OnehalfSpacing


% Title page
%========================================================================
% title
\newcommand{\settitle}[1]{\def\asutitle{#1}}
% author
\newcommand{\setauthor}[1]{\def\asuauthor{#1}}
% defence date
\newcommand{\setdefyear}[1]{\def\asudefyear{#1}}
% Postgraduate program
\newcommand{\setpostgradprogram}[1]{\def\postgradprogram{#1}}
% Faculty
\newcommand{\setfaculty}[1]{\def\faculty{#1}}

% Alphabetical index
\newcommand{\setindexname}[1]{\def\indexname{#1}}

% Set institution name
\newcommand{\setinstname}[1]{\def\instname{#1}}

% Basic thesis info
\newcommand{\setbasicthesisinfo}[1]{\def\basicthesisinfo{#1}}

% Acknowlodgements
\newcommand{\setacknowlodgements}[1]{\def\acknowlodgements{#1}}

% Abstract
\newcommand{\setabstract}[1]{\def\ppgebabstract{#1}}

% graduation date
\newcommand{\setgraddate}[1]{\def\asugraddate{#1}}
% committe chair
\newcommand{\setchair}[1]{\def\asuchair{#1, Chair}}
% committe co-chairs
\newcommand{\setchairs}[2]{%
\def\asuchair{#1, Co-chair \\ #2, Co-chair}}
% other members (separated by \\s)
\newcommand{\setmembers}[1]{\def\asumembers{#1\par}}

\newcommand{\printcoverpage}{{%
\thispagestyle{empty}
\centering
{\DoubleSpacing
	{\large \MakeUppercase{\instname}} \\[0.25 cm]
	{\large \faculty} \\[0.25 cm]
	{\large \postgradprogram} \\[3cm]
    \includegraphics[scale=1.5]{template/Logo.pdf} \\[3cm]
	{\large \asuauthor}\\[3cm]
	{\large \asutitle} \\
    \vspace*{\fill}
	{\large UBERLÂNDIA, MG}\\[0.25 cm]
	{\large \asudefyear}
}
\clearpage}}

\newcommand{\frontpage}{{%
\thispagestyle{empty}
\centering
{\SingleSpace
	{\large \asuauthor} \\[5.00 cm]
	{\large \asutitle} \\[5.00 cm]
\par\noindent
\hspace{8cm}%
 \begin{minipage}{7cm}
\basicthesisinfo
 \end{minipage}

    \vspace*{\fill}
	{\large UBERLÂNDIA, MG}\\[0.25 cm]
	{\large \asudefyear}
}
\clearpage}}

\newcommand{\catalographicsheet}{{%
\thispagestyle{empty}
\centering
\vspace*{\fill}
\includegraphics[scale=1.0, origin=RT]{template/FichaCatalografica.pdf}
\clearpage}}

\newcommand{\minuteofdefence}{{%
\thispagestyle{empty}
\includepdf[pages=-]{template/AtaDeDefesa.pdf}
}}

%%% general macro for Abstract, etc., headings
\newlength{\linespace}
\setlength{\linespace}{\baselineskip}

\newlength{\toptafiddle} \setlength{\toptafiddle}{2\linespace}
\newlength{\topfiddle} \setlength{\topfiddle}{\toptafiddle}

\newcommand*{\pretoctitle}[1]{{\clearpage\centering
\vspace*{-\topfiddle}#1\par}}
\newcommand{\bb}[1]{\mathbb{#1}}

%%% Start the ACKNOWLEDGEMENTS
\newcommand{\printacknowledgements}[1][AGRADECIMENTOS]{{%
\thispagestyle{empty}
%{\pretoctitle{ACKNOWLEDGEMENTS}}
{\pretoctitle{{#1}}} 
\vspace{1cm}
\acknowlodgements
\clearpage
}}

%%% ABSTRACT
\newcommand{\printabstract}[1][RESUMO]{{%
\thispagestyle{empty}
%\addtotextheight{-\botfiddle}%
{\pretoctitle{{#1}}} 
\vspace{1cm}
\ppgebabstract
\clearpage
}}

%% Dedication

\newcommand{\printdedication}[1]{{%
\thispagestyle{empty}
\vspace*{\fill}
\begin{flushright}
\begin{minipage}{10cm}
#1
 \end{minipage}
\end{flushright}
	\clearpage
}}

%%%%%%%%%%%%%%%%% Colouring source code %%%%%%%%%%%%%%%%%

%% colours
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{codebackcolour}{rgb}{0.969, 0.969, 0.969} 

%% custom style
\lstdefinestyle{ppgebstyle}{
    backgroundcolor=\color{codebackcolour},   
    commentstyle=\color{codepurple},
    keywordstyle=\color{NavyBlue},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codegreen},
    basicstyle=\ttfamily\footnotesize\bfseries,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=t,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

% setting up the custom style
\lstset{style=ppgebstyle}

