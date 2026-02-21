\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{locusjournal}[2025/01/14 LOCUS Journal Research Article Template]
\LoadClass[a4paper,12pt]{article}

% Required Packages
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath,amssymb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage[most]{tcolorbox}
\RequirePackage{multicol}
\RequirePackage{authblk}
\RequirePackage{caption}
\RequirePackage{enumitem}
\RequirePackage[backend=bibtex]{biblatex}
\RequirePackage{microtype}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{array}
% \RequirePackage{longtable}
\RequirePackage{tabularx}
% \RequirePackage{ltablex}
\RequirePackage{threeparttable}
\RequirePackage{stfloats}
\RequirePackage{newtxtext}  % For Times New Roman text font
\RequirePackage{newtxmath}  % For matching math font

% Define LOCUS Journal colors
\definecolor{locusblue}{RGB}{42,186,220}
\definecolor{locuslight}{RGB}{240,240,245}

% Hyperref setup
\hypersetup{
    colorlinks=true,
    linkcolor=locusblue,
    filecolor=locusblue,
    urlcolor=locusblue,
    citecolor=locusblue,
    pdfstartview={FitH},
    pdfpagelayout=SinglePage
}

% Optimized page layout with reduced spacing
\geometry{
    top=2cm,
    bottom=2cm,
    left=1.5cm,
    right=1.5cm,
    headsep=0.15cm,
    headheight=12pt,
    footskip=0.8cm,
    includeheadfoot,
    marginparwidth=0pt,
    marginparsep=0pt,
    columnsep=0.5cm
}

% Header and Footer Setup
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0.3pt}
\fancyhead{}
\fancyfoot{}
\fancyhead[L]{\footnotesize\textit{\textcolor{locusblue}{\textbf{LOCUS Research Symposium 2026}}}}
%\fancyhead[R]{\footnotesize\thepage}
\fancyfoot[L]{\footnotesize \href{www.locus.com.np}{www.locus.com.np}}
\fancyfoot[R]{\footnotesize\thepage}

% First page style
\fancypagestyle{firstpage}{%
    \fancyhf{}
    \lhead{\raisebox{-0.1\height}{\includegraphics[width=80pt]{locus_logo.pdf}}}
    \rhead{\footnotesize\textcolor{locusblue}{\textbf{LOCUS Research Symposium 2026}}}
    \lfoot{\footnotesize \href{www.locus.com.np}{www.locus.com.np}}
    \rfoot{\footnotesize\thepage}
    \renewcommand{\headrulewidth}{0.3pt}
    \renewcommand{\footrulewidth}{0.3pt}
}

% Reduced section spacing
\titlespacing*{\section}{0pt}{1.5ex plus 0.5ex minus 0.2ex}{1ex plus 0.2ex minus 0.2ex}
\titlespacing*{\subsection}{0pt}{1.3ex plus 0.3ex minus 0.2ex}{0.8ex plus 0.2ex minus 0.2ex}
\titlespacing*{\subsubsection}{0pt}{1.2ex plus 0.2ex minus 0.2ex}{0.6ex plus 0.2ex minus 0.2ex}

% Section Formatting with reduced spacing
\titleformat{\section}
    {\large\bfseries\color{locusblue}}
    {\thesection.}
    {0.8em}
    {}

\titleformat{\subsection}
    {\normalsize\bfseries}
    {\thesubsection.}
    {0.8em}
    {}

\titleformat{\subsubsection}
    {\normalsize\itshape}
    {\thesubsubsection.}
    {0.8em}
    {}

% Compact caption settings
\captionsetup{
    font=small,
    labelfont=bf,
    textfont=it,
    justification=centering,
    margin=6pt,
    singlelinecheck=true,
    skip=4pt
}

% Reduced table spacing
\setlength{\tabcolsep}{4pt}
\renewcommand{\arraystretch}{1.1}

% Define abstract and keywords with reduced spacing
\renewcommand{\abstract}[1]{\def\@abstract{#1}}
\newcommand{\keywords}[1]{\def\@keywords{#1}}
\setcounter{Maxaffil}{0}
\renewcommand\Affilfont{\itshape\small}

% Custom title page with reduced spacing
\renewcommand{\maketitle}{%
    \thispagestyle{firstpage}
    \vspace*{0.3cm}
    \begin{center}
        {\Large\bfseries\color{locusblue} \@title \par}
        \vspace{0.8em}
        {\@author}
        \vspace{0.5em}
        {\footnotesize \@date \par}
    \end{center}
    
    \begin{tcolorbox}[
        colframe=locusblue,
        colback=locuslight,
        arc=2mm,
        boxrule=0.4mm,
        left=6pt,
        right=6pt,
        top=4pt,
        bottom=4pt
    ]
        \textbf{Abstract:} \@abstract
    \end{tcolorbox}
    
    \vspace{0.5em}
    \textbf{Keywords:} \@keywords
    \vspace{1em}
    
    \begin{multicols}{2}
}

% End document class
\AtEndDocument{
    \end{multicols}
}

% % Bibliography style
% \ExecuteBibliographyOptions{
%     sorting=none,
%     maxbibnames=99,
%     doi=false,
%     isbn=false,
%     url=false,
%     backend=biber
% }

% Compact list spacing
\setlist{itemsep=0.3em, parsep=0pt, topsep=0.3em, partopsep=0pt}
\setlist[enumerate]{label=\arabic*.}
\setlist[itemize]{label=$\bullet$}

% Table of contents depth
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

% Float placement optimization
\renewcommand{\topfraction}{0.9}
\renewcommand{\bottomfraction}{0.8}
\renewcommand{\textfraction}{0.07}
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}

% Column types for tables
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}

% Prevent orphans and widows
\clubpenalty=10000
\widowpenalty=10000
\displaywidowpenalty=10000