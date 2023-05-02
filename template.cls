\ProvidesClass{template}[2022/01/18, Seminartemplate, Universitaet der Bundeswehr Muenchen]

\LoadClass[a4paper,12pt,twoside]{book}

% Sinnvolle Pakete
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[ngerman]{babel}
\RequirePackage{color}
\RequirePackage{fp}
\RequirePackage{subcaption}
\RequirePackage{times}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{suffix}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{rotating}
\RequirePackage{enumerate}
\RequirePackage{longtable}
\RequirePackage{textcomp}
\RequirePackage{float}
\RequirePackage{url}
\RequirePackage{caption}
\RequirePackage{longtable}
\RequirePackage{listings}
\lstset{
    basicstyle=\ttfamily\tiny, %\scriptsize
    xleftmargin=4em,
    xrightmargin=3em,
}
\RequirePackage[colorinlistoftodos]{todonotes}
\RequirePackage{verbatim}
\RequirePackage{mathptmx}
\RequirePackage{eurosym}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{pdfpages}
\RequirePackage{fancyhdr}
\RequirePackage[sectionbib,duplicate]{chapterbib}
\RequirePackage[square,numbers,sectionbib]{natbib}



% Seiteneinstellungen
\geometry{verbose,a4paper,tmargin=4cm,bmargin=4cm,lmargin=2.8cm,rmargin=2.8cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\topmargin}{-1.5cm}
\setlength{\textheight}{23cm}
\setlength{\textwidth}{16cm}
\setlength{\headsep}{1cm}
\setlength{\parindent}{0ex}
\setlength{\parskip}{2.0ex plus 0.9ex minus 0.4ex}
\pagenumbering{arabic}

% Abstract
\def\Kurzfassung#1{\textit{#1}}

% Chapter-Autor
\newcommand\chapterauthor[1]{\authortoc{#1}\printchapterauthor{#1}}
\WithSuffix\newcommand\chapterauthor*[1]{\printchapterauthor{#1}}
\makeatletter
\newcommand{\printchapterauthor}[1]{%
  {\parindent0pt\vspace*{-25pt}%
  \linespread{1.1}\large\scshape#1%
  \par\nobreak\vspace*{35pt}}
  \@afterheading%
}
\newcommand{\authortoc}[1]{%
  \addtocontents{toc}{\vskip-10pt}%
  \addtocontents{toc}{%
    \protect\contentsline{chapter}%
    {\hskip1.3em\mdseries\scshape\protect\scriptsize#1}{}{}}
  \addtocontents{toc}{\vskip5pt}%
}
\makeatother

% Aufhübschen
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000
\raggedbottom

\def\UrlBreaks{\do\/\do-}

% Chapter-Bibliographien
%\renewcommand{\StartFinalBibs}{\chapter*{\bibname}%
%\addcontentsline{toc}{chapter}{\bibname}%
%\@mkboth{\bibname}{\bibname}%
%\renewcommand{\bibname}{Literaturverzeichnis für Kapitel \thechapter}}

% Ersten Seiten
\def\frontmatter{
%% Titelblatt
\input{titel.tex}
%% Editor
\thispagestyle{empty}
\input{editor.tex}

%% Inhaltsverzeichnis
\thispagestyle{empty}
\setcounter{tocdepth}{0}
\setcounter{secnumdepth}{3}
\cleardoublepage\pdfbookmark{\contentsname}{toc}\tableofcontents
%\ 
%\cleardoublepage
%\pagestyle{empty}
%\section*{} \newpage
\thispagestyle{empty}
\pagestyle{plain}
}

\endinput
