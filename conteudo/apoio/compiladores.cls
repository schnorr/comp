\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{compiladores}
\LoadClass[11pt,portuguese,a4paper]{article}
\RequirePackage[portuguese]{babel}
\RequirePackage{translator}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{textcomp}
\RequirePackage{marvosym}
\RequirePackage{wasysym}
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage{float}
\RequirePackage{wrapfig}
\RequirePackage{soul}
\RequirePackage{amssymb}
\RequirePackage{hyperref}
\RequirePackage{pdfpages}
\RequirePackage{needspace}
\RequirePackage[rubberchapters,clearempty,pagestyles]{titlesec}

\RequirePackage[margin=.8cm,bottom=3cm]{geometry}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage{filecontents}
\RequirePackage{natbib}
\RequirePackage{bibentry}
\RequirePackage{longtable}
\RequirePackage{tabularx}
\RequirePackage{ltxtable}
\RequirePackage{booktabs}
\RequirePackage{color, colortbl}
\RequirePackage{fancyhdr}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{graphics}
\RequirePackage{parskip}
\RequirePackage{xspace}
\RequirePackage{listings}
\RequirePackage{boxedminipage}
\RequirePackage{tikz}
\RequirePackage{ctable}
\usetikzlibrary{automata,positioning}

\RequirePackage{pgfgantt}

\graphicspath{{../img/}{../../img/}{../../../img/}}

\setlength{\headheight}{2cm}

\newcommand{\mycbox}{\tikz{\path[draw=black,fill=white] (0,0) rectangle (.7cm,.7cm);}}

\titleformat{\section}{\large\bfseries}{\thesection}{1em}{}
\titlespacing{\section}{0pt}{*4}{*0.1}
\titlespacing{\subsection}{0pt}{*1}{*0.1}

\newlist{sumula}{enumerate}{1}
\setlist[sumula]{label*=\arabic*.,itemsep=0pt,topsep=0pt,parsep=0pt}
\newlist{avaliacao}{itemize}{1}
\setlist[avaliacao]{label=\textbullet,itemsep=0pt,topsep=0pt,parsep=0pt}
\newlist{experiencias}{itemize}{1}
\setlist[experiencias]{label=\textbullet,itemsep=0pt,topsep=0pt,parsep=0pt}
\newlist{referencia}{itemize}{1}
\setlist[referencia]{label=\textbullet,itemsep=0pt,topsep=0pt,parsep=0pt,leftmargin=1.5em}
\newlist{funcionalidades}{enumerate}{1}
\setlist[funcionalidades]{label*=\arabic*.,itemsep=0pt,topsep=0pt,parsep=0pt}
\newlist{tiposast}{itemize}{1}
\setlist[tiposast]{label=\textbullet,itemsep=0pt,topsep=0pt,parsep=0pt}
\newlist{lista}{itemize}{1}
\setlist[lista]{label=\textbullet,itemsep=0pt,topsep=0pt,parsep=0pt}
\newlist{listanumerada}{enumerate}{1}
\setlist[listanumerada]{label*=\Large\arabic*.,leftmargin=1.3em,itemsep=0.2em,topsep=1em,parsep=1em}
\newlist{sublistanumerada}{enumerate}{1}
\setlist[sublistanumerada]{label*={\bf\large\textsc{\alph*}}.,itemsep=2pt,topsep=2pt,parsep=2pt}
\newlist{listaescolha}{itemize}{1}
\setlist[listaescolha]{label=$\bigcirc$,itemsep=0pt,topsep=0pt,parsep=0pt}
\newlist{listamarcatipo}{itemize}{1}
\setlist[listamarcatipo]{label={\mycbox},itemsep=0pt,topsep=0pt,parsep=0pt}

\newcommand{\MF}{\mathit{M\hspace{-0.4em}F}}
\newcommand{\PS}{\mathit{P}}
\newcommand{\PR}{\mathit{\bf P\hspace{-0.1em}R}}
\newcommand{\TP}{\mathit{T\hspace{-0.3em}P}}
\newcommand{\token}{\emph{token}\xspace}
\newcommand{\tokens}{\emph{tokens}\xspace}
\newcommand{\ascii}{\emph{ASCII}\xspace}
\newcommand{\struct}{\texttt{struct}\xspace}
\newcommand{\K}{{\bf Amarela}\xspace}
\newcommand{\ARROW}{\texttt{=>}}
\newcommand{\ARROWs}{\texttt{->}}
\newcommand{\et}[1]{\texttt{#1}}
\newcommand{\flecha}{$\rightarrow$\xspace}
\newcommand{\concat}{\small{$\vert\vert$}\xspace}
\newcommand{\ve}{$\times$\xspace}
\newcommand{\digito}{\textsc{d}}
\newcommand{\hexa}{\textsc{h}}
\newcommand{\flex}{{\bf Flex}\xspace}
\newcommand{\bison}{{\bf Bison}\xspace}

\newcommand{\pontotempo}[3]{{\scriptsize\textit{[#1pts, #2min, #3]}}}
\newcommand{\ponto}[1]{{\scriptsize\textit{[#1]}}}


\pagestyle{fancyplain}

\rfoot{}
\cfoot{--~\thepage~--}
\lfoot{}
\rhead{}
\lhead{}
\chead{
\begin{tabular}{m{.22\textwidth}m{.70\linewidth}}
\includegraphics[height=1cm]{./img/inf-ufrgs-bw.pdf}\hfill
&
\begin{minipage}{\linewidth}
UFRGS -- Departamento de Informática Aplicada \\
{\bf INF01147 -- Compiladores} -- Prof. Lucas M. Schnorr
\end{minipage}
\end{tabular}
}

\newenvironment{resposta}[1]{%
\medskip
\begin{minipage}{#1}
  {\bf Resposta:} 
}{%
\end{minipage}
\bigskip
}

\newcommand{\exercicioaula}[2]{%
\begin{center}
{\LARGE Lista de Exercícios em Aula \##1} \linebreak
{\bf #2}
\end{center}
}

\input{commondefs}

\ProvidesDictionary{translator-months-dictionary}{Portugues}
\providetranslation{January}{Janeiro}
\providetranslation{February}{Fevereiro}
\providetranslation{March}{Março}
\providetranslation{April}{Abril}
\providetranslation{May}{Maio}
\providetranslation{June}{Junho}
\providetranslation{July}{Julho}
\providetranslation{August}{Agosto}
\providetranslation{September}{Setembro}
\providetranslation{October}{Outubro}
\providetranslation{November}{Novembro}
\providetranslation{December}{Dezembro}
