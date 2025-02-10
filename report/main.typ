#import "conf.typ": *
#import "math.typ": *

#show: conf.with(
  title: "Projet Semestre 2",
  author: "CELLE Guillian, GALLOUX Nils, PLANCHE Tom",
  class: "ING 39",
  subtitle: "RATP",
  logo: image("assets/cnam_logo.svg"),
  start-date: datetime(day: 7, month: 2, year: 2025),
  main-color: "#C4122E",
)

= Introduction
#underline[*Contexte du projet :*] Dans le cadre de notre formation, nous avons pour mission de développer un projet complet, de sa définition à sa réalisation, en passant par sa conception, spécification, organisation, et choix technologiques. Ce projet nous permet de mettre en pratique nos compétences acquises et de travailler en équipe pour répondre à un besoin concret.
\ \
#underline[*Objectif :*] L'objectif de ce projet est de créer une plateforme de gestion de transport urbain qui intègre toutes les facettes du transport en milieu urbain. Cette plateforme vise à optimiser les méthodes d'accès aux informations de transport pour les utilisateurs, en leur offrant des fonctionnalités avancées telles que la recherche de stations, le calcul d'itinéraires, et la gestion des perturbations en temps réel.
\ \
#underline[*Importance du projet :*] Dans un contexte où la mobilité urbaine est en constante évolution, il est crucial de disposer d'outils performants et intuitifs pour faciliter les déplacements quotidiens. Notre plateforme se veut être une solution complète, capable de répondre aux besoins variés des utilisateurs, qu'ils soient voyageurs réguliers ou touristes.
\ \
#underline[*Organisation du document :*] Ce document est structuré pour présenter les différentes étapes de notre projet, depuis la définition des besoins jusqu'à la réalisation technique. Chaque section détaille les spécifications, les choix technologiques, et les méthodes d'organisation que nous avons adoptés pour mener à bien ce projet.
\ \
En développant cette plateforme, nous espérons non seulement répondre aux attentes des utilisateurs, mais aussi contribuer à l'amélioration de l'expérience de transport urbain.

#pagebreak()
= Définition précise des besoins du client
#underline[*Objectif :*] Rédiger un texte descriptif d'une page qui décrit précisément ce que le client attend de la plateforme de gestion de transport urbain.
\ \
    Dans le cadre de notre projet, nous souhaitons développer une plateforme de gestion de transport urbain qui répond aux besoins des utilisateurs en intégrant toutes les facettes du transport urbain et en proposant des méthodes d’accès optimisées.\
Voici une description détaillée des besoins identifiés :
\ \
- #underline[*Affichage des lignes de transport :*] Les utilisateurs doivent pouvoir consulter facilement les lignes de métro, bus, RER, et trains (y compris ceux gérés par la SNCF) disponibles dans leur ville. Cela inclut la visualisation des trajets et des arrêts sur une carte interactive.

- #underline[*Recherche de station :*] La plateforme doit permettre de rechercher des stations par nom, proximité géographique, et mode de transport. Les utilisateurs doivent pouvoir trouver rapidement la station la plus proche de leur emplacement actuel ou d'une adresse spécifique.

- #underline[*Calcul de trajectoires :*] Il est essentiel de pouvoir calculer des itinéraires en fonction du mode de transport choisi (métro, bus, RER, train, ou une combinaison de ces modes). Les utilisateurs doivent obtenir des recommandations d'itinéraires optimisés en termes de temps et de distance.

- #underline[*Prise en compte du temps de trajet :*] Le système doit estimer précisément le temps de trajet en fonction du mode de transport utilisé, en tenant compte des horaires et des fréquences de passage. Les utilisateurs doivent être informés des temps de trajet en conditions normales et en cas de perturbations.

- #underline[*Prise en compte des temps de correspondance :*] Les temps de correspondance entre différents modes de transport doivent être intégrés dans le calcul des itinéraires. Les utilisateurs doivent être guidés pour minimiser les temps d'attente lors des changements de ligne ou de mode de transport.

- #underline[*Affichage de la trajectoire :*] L'itinéraire recommandé doit être affiché étape par étape, avec des indications claires sur les temps de trajet et les correspondances. Une carte interactive doit permettre de visualiser le trajet complet.

-  #underline[*Prise en compte des problèmes sur le réseau :*] La plateforme doit informer en temps réel les utilisateurs des perturbations sur le réseau (travaux, retards, grèves, etc.). Les notifications doivent être envoyées pour prévenir des modifications d'itinéraires ou des retards potentiels.

- #underline[*Proposition de lieux à visiter :*] Enfin, pour améliorer l'expérience utilisateur, la plateforme doit proposer des lieux d'intérêt ou des restaurants à visiter à proximité des sorties de métro ou des arrêts de bus. Ces recommandations doivent être personnalisables en fonction des préférences de l'utilisateur.
\ \
En répondant à ces besoins, notre plateforme vise à offrir une solution complète et intuitive pour faciliter les déplacements urbains et améliorer la satisfaction des utilisateurs.

#pagebreak()

= Spécification des besoins
#underline[*Objectif :*] Traduire les besoins du client en spécifications techniques et fonctionnelles.
\ \
#underline[*Contexte du système :*] La plateforme de gestion de transport urbain vise à intégrer divers modes de transport (métro, bus, RER, train) pour offrir une solution complète aux utilisateurs. Elle doit interagir avec des systèmes externes tels que des API de transport pour obtenir des données en temps réel et des bases de données géographiques pour la cartographie.
\ \
#underline[*Fonctionnalités principales :*]

1. #underline[*Affichage des lignes de transport :*]
   - Visualisation des lignes de métro, bus, RER, et trains sur une carte interactive.
   - Mise à jour en temps réel des informations sur les lignes (horaires, perturbations).

2. #underline[*Recherche de station :*]
   - Recherche par nom de station, proximité géographique, et mode de transport.
   - Fonctionnalité de géolocalisation pour trouver les stations les plus proches.

3. #underline[*Calcul de trajectoires :*]
   - Algorithmes de calcul d'itinéraires optimisés en fonction du mode de transport.
   - Prise en compte des préférences utilisateur (itinéraire le plus rapide, le moins de correspondances, etc.).

4. #underline[*Temps de trajet et correspondances :*]
   - Estimation précise des temps de trajet et des temps de correspondance.
   - Notifications en temps réel des modifications d'horaires ou de trajets.

5. #underline[*Affichage de la trajectoire :*]
   - Visualisation étape par étape de l'itinéraire sur une carte.
   - Indications claires sur les étapes du trajet, les temps estimés, et les correspondances.

6. #underline[*Gestion des perturbations :*]
   - Système de notification en temps réel des perturbations sur le réseau.
   - Propositions d'itinéraires alternatifs en cas de perturbations.

7. #underline[*Proposition de lieux à visiter :*]
   - Recommandations de lieux d'intérêt ou de restaurants à proximité des sorties de métro ou des arrêts de bus.
   - Personnalisation des recommandations en fonction des préférences de l'utilisateur.
\ \
#underline[*Acteurs principaux :*]

- #underline[*Voyageurs réguliers :*] Utilisateurs quotidiens du réseau de transport qui ont besoin d'informations précises et à jour.
- #underline[*Touristes :*] Utilisateurs occasionnels qui recherchent des informations sur les attractions locales et les moyens de transport.
- #underline[*Gestionnaires de réseau :*] Administrateurs qui surveillent et gèrent les perturbations et les mises à jour du réseau.
\ \
#underline[*Risques et solutions :*]

- #underline[*Données incorrectes :*] Utilisation de sources de données fiables et vérification régulière des informations.
- #underline[*Temps de réponse lent :*] Optimisation des algorithmes de calcul et utilisation de serveurs performants.
- #underline[*Pannes de serveur :*] Mise en place de solutions de redondance et de plans de continuité.
\ \
#underline[*Cas d'utilisation initiaux :*]

1. #underline[*Recherche d'itinéraire quotidien :*] Un utilisateur recherche le meilleur itinéraire pour se rendre au travail en tenant compte des perturbations éventuelles.
2. #underline[*Découverte touristique :*] Un touriste cherche des attractions à visiter près de sa station de métro et des recommandations de restaurants.
3. #underline[*Gestion de perturbation :*] Un gestionnaire de réseau reçoit une alerte de perturbation et met à jour les informations en temps réel pour les utilisateurs.
\ \
En définissant ces spécifications, nous posons les bases techniques et fonctionnelles nécessaires pour développer une plateforme de gestion de transport urbain efficace et répondant aux besoins des utilisateurs.
