This package provides the hecppt class, a class based on beamer
and compatible with LaTeX. With this class, students and employees
at HEC Montréal will be able to build presentations themed with
the University's trademark.

LICENCE

LaTeX Project Public License, version 1.3c or (at your option) any
later version.

VERSION

0.1

*** The rest of this file is in French ***

DESCRIPTION

La classe hecppt a été conçue afin de permettre à la communauté HEC Montréal
de pouvoir créer des présentations avec le système de composition de documents
LaTeX et la classe de document beamer tout en respectant l'image de marque de 
l'université conçue par le Studio de design graphique. Tout comme les gabarits	
Microsoft Powerpoint élaborés par le Studio, cette classe propose cinq gabarits 
différents à utiliser.

CONTENU DE L'ARCHIVE

- hecppt.ins : le fichier d'installation de la classe
- hecppt.dtx : le code source documenté de la classe
- hecppt.pdf : la documentation de la classe
- README.md : le présent fichier
- <img/> : un répertoire d'images nécessaires à la production des présentations

INSTALLATION DE LA CLASSE

Suivez les étapes suivantes pour installer la classe :
1. Créez-vous un répertoire de travail.
2. Décompressez l'archive .zip dans votre répertoire de travail.
3. Ouvrez un éditeur de ligne de commande.
4. Changez de répertoire pour atteindre votre répertoire de travail.
5. Saisissez la commande suivante dans l'éditeur :

	latex hecppt.ins
	
La commande générera plusieurs fichiers :

1. la classe elle-même :
	- hecppt.cls
	
2. les fichiers du thème beamer HEC Montréal :
	- beamerthemeHECMtl.sty
	- beamercolorthemeHECMtl.sty
	- beamerfontthemeHECMtl.sty
	- beamerouterthemeHECMtl.sty
	- beamerinnerthemeHECMtl.sty
	
3. un gabarit de base :
	- gabarit.tex
	
DOCUMENTATION

La documentation jointe à cette classe a pour but de vous permettre
de travailler avec la classe hecthese. Elle n'a pas pour objectif de
vous apprendre à travailler avec beamer.

Pour apprendre à travailler avec beamer, vous pouvez consulter la
document du package, disponible sur le site du CTAN :

https://ctan.org/pkg/beamer