% ------------- %
% Classe hecppt %
% ------------- %
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hecppt}[2018/02/09 v0.1 Classe pour des presentations beamer avec l'image de marque HEC Montreal]

% ------------------ %
% Valeurs booléennes %
% ------------------ %
\newif\ifdebutSection
\newif\ifgabarita
\newif\ifgabaritb
\newif\ifgabaritc
\newif\ifgabaritd
\newif\ifgabarite

% ------------------ %
% Valeurs par défaut %
% ------------------ %
\gabaritafalse
\gabaritbfalse
\gabaritcfalse
\gabaritdfalse
\gabaritefalse

% ---------------------------------------------------- %
% Commandes pour les noms de fichiers d'images de fond %
% ---------------------------------------------------- %
\newcommand{\HECbgfile}{}
\newcommand{\HECsectionbgfile}{}

% ------------------------------------ %
% Déclaration des options de la classe %
% ------------------------------------ %
\DeclareOption{gabarita}{%
	\renewcommand{\HECbgfile}{background-a.eps}
	\renewcommand{\HECsectionbgfile}{section-background-a.eps}
	\gabaritatrue
}
\DeclareOption{gabaritb}{%
	\renewcommand{\HECbgfile}{background-b.eps}
	\renewcommand{\HECsectionbgfile}{section-background-b.eps}
	\gabaritatrue
}
\DeclareOption{gabaritc}{%
	\renewcommand{\HECbgfile}{background-c.eps}
	\renewcommand{\HECsectionbgfile}{section-background-c.eps}
	\gabaritatrue
}
\DeclareOption{gabaritd}{%
	\renewcommand{\HECbgfile}{background-d.eps}
	\renewcommand{\HECsectionbgfile}{section-background-d.eps}
	\gabaritatrue
}
\DeclareOption{gabarite}{%
	\renewcommand{\HECbgfile}{background-e.eps}
	\renewcommand{\HECsectionbgfile}{section-background-e.eps}
	\gabaritatrue
}

% ----------------------- %
% Chargement de la classe %
% ----------------------- %
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ExecuteOptions{}
\ProcessOptions
\LoadClass{beamer}

% -------------------- %
% Mode et thème beamer %
% -------------------- %
\mode<presentation>
\usetheme{HECMtl}

% --------------- %
% Packages requis %
% --------------- %
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{xcolor}
\RequirePackage{graphicx}
\RequirePackage[abs]{overpic}
\RequirePackage{babel}
\RequirePackage{amsmath}
\RequirePackage{mathpazo}
\RequirePackage[overload]{textcase}
\RequirePackage{nameref}

% --------------------- %
% Settings pour overpic %
% --------------------- %
\graphicspath{{img/}}
\setlength\unitlength{1mm}

% ------------------- %
% Nouvelles commandes %
% ------------------- %
\newcommand{\couleur}[1]{%
	\colorbox{#1}{\makebox[0.9\textwidth]{\color{white} #1}}
}
\newcommand{\HECPIEDDEPAGE}{}
\newcommand*{\HECauteur}[1]{%
	\author{#1}
	\renewcommand{\HECPIEDDEPAGE}{\MakeUppercase{#1}}
}
\newcommand{\pageTitre}{%
	{%
		\setbeamertemplate{footline}{}
		\begin{frame}
		\titlepage
	\end{frame}
	\addtocounter{framenumber}{-1}
}
}
\makeatletter
\newcommand*{\nomsectioncourante}{\@currentlabelname}
\makeatother

% ----------------------- %
% Nouveaux environnements %
% ----------------------- %
\newenvironment{HECimagesstitre}[1]{%
	\vspace{-2.2mm}
	\begin{block}{#1}
		\begin{figure}
}{%
		\end{figure}
	\end{block}
}
\newenvironment{HECcomparaison}[1]{%
	\begin{column}[t]{.5\textwidth}
		\vspace{-7mm}		
		\begin{block}{#1}
}{%
		\end{block}
	\end{column}
}
\newenvironment{HEClegende}[1]{%
	\begin{column}[t]{.36\textwidth}
		\vspace{-7mm}
		\begin{block}{#1}
}{%
		\end{block}
	\end{column}
}
\newenvironment{HECcontenuLegende}{%
	\begin{column}[t]{.64\textwidth}
		\vspace{-7mm}
}{%
	\end{column}
}