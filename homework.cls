\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}
\LoadClass{article}

% --- Document layout --- %
\RequirePackage[margin=1in]{geometry}
\setlength{\parindent}{1em}

% Sets the title to the top left
\renewcommand\maketitle{
    \parindent=0pt
    
    {\bf
    {\@title\par}
    {\@author\par}
    {\today\par}
    \vspace{1em}}
}

% --- Section formatting --- %
\RequirePackage[explicit]{titlesec}
\titleformat{\section}[hang]
    {\bfseries\normalsize}{}{0pt}
    {#1\quad\thesection:}[]

% Questions
\newcommand{\question}{
    \section{Question}
}

% Sub-questions
\renewcommand*{\thesubsection}{\alph{subsection}}
\titleformat{\subsection}[runin]
    {\bfseries\normalsize}{}{0pt}
    {\thesubsection)}[]

\renewenvironment{quote}
    {\list{}{\leftmargin=0.5in\vspace{-3em}}\item[]%
    \item\relax}
    {\vspace{-1em}\endlist}
  
\newenvironment{sub-question}
    {\begin{quote}\subsection{}}
    {\end{quote}}
    