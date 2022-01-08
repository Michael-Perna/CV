% ----MINIMAL REQUIREMENT-------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}  % Specifiy Latex format
\ProvidesClass{curriculum}[2021/12/28 My custom CV class] % Document class name. Should be the same as the <documentname>.cls
% ------------------------------------------------------------------------------
% ------------------------------------------------------------------------------
% ----RECUIRED PACKAGES---------------------------------------------------------
\RequirePackage{xifthen}      % provides \isempty test
\RequirePackage{changepage}   % adjustwith{environment} who margins are changed
\RequirePackage{graphicx}     % \includegraphics{pitcure
\RequirePackage{fancyhdr}     % Here used to change page numbering style
\RequirePackage{lastpage}     % Give the page number
\RequirePackage{setspace}     % Set inteline space
% ----BASE LAYOUT RULES---------------------------------------------------------
\LoadClass[a4paper]{article}

% ----NEW LAYOUT RULES----------------------------------------------------------
% FONT
\RequirePackage[sfdefault]{raleway}

% Margin
\RequirePackage{geometry}

\geometry{%
  a4paper,
  left = 20mm,
  right= 20mm,
  top  = 0mm,
  bottom = 20mm,
  marginparwidth = 0mm,
}
% Page numbering
% to remove all the headers and footers:
\pagestyle{empty}

% change the page-numbering style for all the pages
% without section name:
\pagestyle{fancy}
\fancyhf{}

\rfoot{\sffamily\centering\fontseries{b}\selectfont\thepage \hspace{1pt} \fontseries{m}\selectfont\textbackslash \hspace{1pt} \pageref{LastPage}}

% paragraph indent
\setlength{\parindent}{0em} % -> no paragraph indent
% Interline vspace
\setstretch{1.25}


% Add top margin for new page
\newcommand{\AddTopMargin}{%
  \newgeometry{%
  left = 20mm,
  right= 20mm,
  top  = 20mm,
  bottom = 20mm,
  marginparwidth = 0mm,
  }%
}

% CUSTOMIZED DOCUMENT
% ----SECTION-------------------------------------------------------------------
\renewcommand{\section}{%
  \vspace{20pt}%
  \fontsize{15}{15}\fontseries{b}\selectfont\raggedright\textbackslash\hspace{-2mm}
}

% ----HEADER--------------------------------------------------------------------
\newcommand*{\header}[7]{%
  \sffamily%
    \begin{adjustwidth}{-20mm}{-20mm}
    \begin{flushright}
      %\frame{%
      \begin{minipage}[c][40mm]{0.40\linewidth}\centering%
        % First Name
        \fontsize{45}{45}\fontseries{b}\selectfont #1\vspace{-27pt}

        % Family Name
        \hspace{20pt}\fontsize{50}{50}\fontseries{m}\selectfont #2
      \end{minipage}
      %}
    % Conact information
      %\frame{%
      \begin{minipage}[c][40mm]{0.35\linewidth}\raggedleft%
        \setstretch{1.8}{\fontsize{10}{10}\fontseries{m}\selectfont % Change font
        {Email \textbf{#3}}\\
        {Phone \textbf{#4}}\\
        {Github \textbf{#5}}\\
        {LinkedIn \textbf{#6}}}
      \end{minipage}
      %}%
        % Personal Foto
      %\frame{%
      \begin{minipage}{40mm}\raggedleft
        \includegraphics[width=40mm,angle=270,origin=c]{#7}
      \end{minipage}%}
    \end{flushright}
  \end{adjustwidth}
}

% ----STRENGHTS DESCRIPTION-----------------------------------------------------
\newcommand{\strenghts}[4]{
  \hspace{18mm}
  \begin{minipage}[c][30mm]{0.8\linewidth}\raggedright%
    \begin{minipage}[c][30mm]{17mm}
      \fontsize{85}{85}\fontseries{m}\selectfont<
    \end{minipage}
      \begin{minipage}[c][30mm]{#1}%
          \begin{flushleft}
          \fontsize{10}{10}\fontseries{b}\selectfont
          #2\vspace{5pt}\\
          #3\vspace{5pt}\\
          #4
        \end{flushleft}
    \end{minipage}
    \begin{minipage}[c][30mm]{17mm}\raggedright
      \fontsize{85}{85}\fontseries{m}\selectfont>
    \end{minipage}
  \end{minipage}}

% ----SCHOOL--------------------------------------------------------------------
\newcommand{\school}[4][]{%
  \begin{minipage}[]{0.29\textwidth}
    \hspace{10pt}
    \itshape\fontseries{m}\fontsize{10}{10}\selectfont#2 - #3
  \end{minipage}
  \begin{minipage}[t]{0.7\textwidth}
    \fontseries{b}\fontsize{10}{10}\selectfont#4
    {\ifthenelse{\isempty{#1}}{}{\\\fontseries{m}\selectfont#1\vspace{6pt}}}
  \end{minipage}
}

% ----WORK----------------------------------------------------------------------
\newcommand{\work}[4]{%
  \begin{minipage}[]{0.29\textwidth}
    \hspace{10pt}
    \itshape\fontseries{m}\fontsize{10}{10}\selectfont#1 - #2
  \end{minipage}
  \begin{minipage}[t]{0.7\textwidth}
    \fontseries{b}\fontsize{10}{10}\selectfont#3\\
    \fontseries{m}\selectfont#4\vspace{6pt}
  \end{minipage}
}

% ----PROJECT-------------------------------------------------------------------
\newcommand{\competence}[2]{
  \vspace{6pt}
  \centerline{%
  \hspace{10pt}
  \begin{minipage}[t]{\textwidth}
    \fontseries{b}\fontsize{10}{10}\selectfont#1\\
    \fontseries{m}\selectfont#2\vspace{6pt}
  \end{minipage}
}}

% ----PROJECT-------------------------------------------------------------------
\newcommand{\award}[2]{
  \vspace{6pt}
  \centerline{%
  \hspace{10pt}
  \begin{minipage}[t]{\textwidth}
    \fontseries{b}\fontsize{10}{10}\selectfont#1\\
    \fontseries{m}\selectfont#2\vspace{6pt}
  \end{minipage}
}}

% ----LANGUAGES-----------------------------------------------------------------
\newcommand{\tongue}[3][]{%
  \vspace{6pt}
  \begin{minipage}[t]{0.20\textwidth}
    \hspace{10pt}\fontseries{m}\fontsize{10}{10}\selectfont#2:
  \end{minipage}
  \begin{minipage}[t]{0.7\textwidth}
    \fontseries{b}\fontsize{10}{10}\selectfont#3
    {\ifthenelse{\isempty{#1}}{}{\fontseries{m}\fontsize{10}{10}\selectfont#1}}
  \end{minipage}
}

% ----PERSONAL DATA-------------------------------------------------------------
\newcommand{\personaldata}[3][]{%
  \vspace{6pt}
  \begin{minipage}[t]{0.20\textwidth}
    \hspace{10pt}\fontseries{m}\fontsize{10}{10}\selectfont#2:
  \end{minipage}
  \begin{minipage}[t]{0.7\textwidth}
    \fontseries{b}\fontsize{10}{10}\selectfont#3
    {\ifthenelse{\isempty{#1}}{}{\fontseries{m}\fontsize{10}{10}\selectfont#1\vspace{6pt}}}
  \end{minipage}
}
