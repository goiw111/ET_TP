#import "@preview/hei-synd-report:0.1.1": *
#import "/metadata.typ": *
#pagebreak()

// https://www.designingbuildings.co.uk/wiki/Electrical_control_systems

=  Introduction
=  Vue d'ensemble des systèmes de contrôle électrique

Un système de contrôle électrique est une interconnexion physique de dispositifs qui influencent le comportement d'autres dispositifs ou systèmes. Un système électronique simple se compose d'une entrée, d'un processus et d'une sortie. Les variables d'entrée et de sortie du système sont des signaux.
 Les pompes de circulation, les compresseurs, les systèmes de fabrication, les installations frigorifiques et les panneaux de contrôle des moteurs sont des exemples de systèmes de ce type.

Les dispositifs d'entrée tels que les capteurs recueillent des informations et y répondent, et contrôlent un processus physique en utilisant de l'énergie électrique sous la forme d'une action de sortie. Les systèmes électroniques peuvent être classés comme étant de nature « causale ». Le signal d'entrée est la « cause » du changement dans le processus ou le fonctionnement du système, tandis que le signal de sortie est l'« effet », la conséquence de la cause. Par exemple, un microphone (dispositif d'entrée) convertit les ondes sonores en signaux électriques qui sont amplifiés par un haut-parleur (dispositif de sortie) produisant des ondes sonores.

Les systèmes électroniques sont généralement représentés comme une série de blocs et de signaux interconnectés. Chaque bloc est représenté avec son propre ensemble d'entrées et de sorties. C'est ce qu'on appelle la représentation par bloc-diagramme.

Les systèmes électriques fonctionnent soit avec des signaux à temps continu (CT), soit avec des signaux à temps discret (DT).

Dans un système à temps continu, les signaux d'entrée sont continus dans le temps. Il s'agit généralement de systèmes analogiques produisant un fonctionnement linéaire avec des signaux d'entrée et de sortie référencés sur une période de temps donnée, par exemple entre 13h00 et 14h00.

Un système DT est un système dans lequel les signaux d'entrée sont continus dans le temps.

=== Système de contrôle en boucle ouverte
  Un système de contrôle en boucle ouverte est un système dans lequel la sortie ne renvoie pas à l'entrée pour corriger les variations. Au lieu de cela, la sortie varie en faisant varier l'entrée. Cela signifie que les conditions externes n'ont pas d'impact sur la sortie du système.
  Un exemple est celui d'une chaudière de chauffage central commandée par minuterie, qui s'allume entre certaines heures prédéfinies, quel que soit le niveau de confort thermique du bâtiment.

  Les systèmes en boucle ouverte présentent l'avantage d'être simples, faciles à construire et généralement stables. Cependant, ils peuvent être imprécis et peu fiables car la sortie n'est pas corrigée automatiquement.

=== Système de contrôle en boucle fermée
Un système de contrôle en boucle fermée est un système dans lequel la sortie a un effet sur l'entrée afin de maintenir une valeur de sortie souhaitée. Il y parvient en fournissant une boucle de rétroaction. Par exemple, une chaudière peut être équipée d'un thermostat qui surveille le niveau de confort thermique d'un bâtiment et envoie un signal de retour pour s'assurer que le régulateur maintient la température réglée.

 Les systèmes en boucle fermée ont l'avantage d'être précis et peuvent être rendus plus ou moins sensibles en fonction de la stabilité requise du système. Cependant, ils sont plus complexes en termes de conception d'un système stable.

// https://processequipmentandcontrols.com/service/electrical-controls/
=== Systèmes de contrôle électrique dans l'industrie
  Les systèmes de contrôle électrique sont en effet essentiels dans les opérations industrielles modernes, offrant un large éventail d'avantages qui améliorent l'efficacité, la sécurité et la durabilité. Voici un aperçu plus détaillé de la manière dont ces systèmes contribuent à divers aspects du travail industriel :

- *Automatisation et production : Améliorer l'efficacité*  
  Les systèmes de contrôle électrique rationalisent les tâches répétitives, réduisant ainsi le besoin d'intervention manuelle. Cela permet non seulement d'accélérer la production, mais aussi de minimiser les erreurs humaines et de garantir une qualité constante. Ces systèmes peuvent contrôler avec précision les machines, garantissant que les opérations sont effectuées à des vitesses optimales et avec une grande précision. Cet aspect est crucial dans les secteurs où la précision est essentielle, comme la fabrication automobile ou l'assemblage électronique. En automatisant les tâches routinières, les employés peuvent se concentrer sur des activités plus complexes et stratégiques, ce qui améliore la productivité globale et l'innovation au sein de l'organisation.

- *Systèmes de surveillance et de sécurité : Protéger vos opérations*  
  Les capacités de surveillance avancées permettent aux systèmes de contrôle électrique de prévoir les défaillances potentielles des équipements avant qu'elles ne se produisent. Cette approche proactive permet d'éviter les temps d'arrêt imprévus et les réparations coûteuses. Des contrôles de sécurité continus et des alertes en temps réel permettent de détecter rapidement toute anomalie, ce qui réduit le risque d'accident et assure la sécurité des travailleurs. Cette approche est particulièrement importante dans les environnements à haut risque tels que les usines chimiques ou les opérations de machinerie lourde.

- *Gestion de l'énergie : Optimiser l'alimentation électrique*
  Les systèmes de contrôle électrique jouent un rôle important dans la gestion de la consommation d'énergie. En optimisant la distribution de l'énergie et en contrôlant les entrées et les sorties, ces systèmes aident les entreprises à réduire le gaspillage d'énergie et les coûts d'électricité. Cela permet non seulement d'améliorer l'efficacité opérationnelle, mais aussi de soutenir les objectifs de développement durable en minimisant l'impact sur l'environnement. Par exemple, dans les grandes installations de fabrication, les systèmes de gestion de l'énergie peuvent équilibrer les charges électriques afin d'éviter les pics de consommation et de réduire l'empreinte carbone globale.

- *Évolutivité et personnalisation*
  L'un des principaux avantages des systèmes de contrôle électrique est leur capacité à s'adapter à des besoins opérationnels spécifiques. Qu'il s'agisse d'une ligne de production à petite échelle ou d'un réseau de distribution d'énergie complexe, ces systèmes peuvent être personnalisés pour répondre aux exigences uniques d'une entreprise. Cette flexibilité garantit qu'au fur et à mesure que les opérations se développent ou changent, les systèmes de contrôle peuvent s'adapter en conséquence, offrant ainsi une valeur et une fiabilité à long terme.

- *Intégration avec les technologies modernes*
  Les systèmes de contrôle électrique s'intègrent souvent de manière transparente à d'autres technologies de pointe, telles que l'Internet des objets (IoT) et l'intelligence artificielle (IA). Cette intégration permet une prise de décision plus intelligente, des analyses prédictives et des capacités de surveillance à distance. Par exemple, les capteurs compatibles avec l'IoT peuvent fournir des données en temps réel sur les performances des équipements, tandis que les algorithmes d'IA peuvent analyser ces données pour optimiser les processus et prévoir les besoins de maintenance.

// https://www.asiabusinessoutlook.com/news/the-evolution-of-programmable-logic-controllers-from-relay-systems-to-smart-control-nwid-7243.html
=  Évolution des systèmes de contrôle : Des relais aux automates
  L'évolution de l'automatisation industrielle, des systèmes à relais aux automates programmables modernes (API), est un voyage fascinant qui met en évidence les progrès de la technologie et les exigences croissantes des industries. Voici un aperçu détaillé des phases clés de cette transformation :

- *Les débuts : Les systèmes à relais*
Avant l'avènement des automates programmables, les industries s'appuyaient fortement sur les systèmes à relais pour l'automatisation et le contrôle. Les relais, qui sont des interrupteurs électromécaniques, étaient utilisés pour ouvrir et fermer des circuits en réponse à des signaux électriques. Ces systèmes ont été largement utilisés dans les usines, les centrales électriques et d'autres environnements industriels au début du 20e siècle. Cependant, les systèmes à relais présentaient des limites importantes :

  - *La complexité* : Les systèmes à relais nécessitaient un câblage important et des circuits complexes. À mesure que le nombre de relais augmentait, les systèmes devenaient de plus en plus difficiles à gérer et à entretenir.

  - *Manque de flexibilité* : La modification d'un système à relais pour s'adapter à des changements dans les processus de production était une tâche fastidieuse. Elle nécessitait souvent un recâblage et des modifications physiques, ce qui était à la fois long et coûteux.

 - *Problèmes de maintenance* : Les relais étant des dispositifs mécaniques, ils étaient sujets à l'usure. Une maintenance fréquente était nécessaire pour maintenir les systèmes opérationnels, ce qui entraînait des temps d'arrêt et une augmentation des coûts.

Malgré ces inconvénients, les systèmes à relais ont constitué l'épine dorsale de l'automatisation industrielle jusqu'à la fin des années 1960. Avec l'expansion des industries et l'augmentation des exigences de production, le besoin de systèmes de contrôle plus efficaces, plus fiables et plus flexibles est devenu évident.

- *La naissance des automates programmables*
Le développement des automates programmables industriels (API) a été motivé par la nécessité de disposer d'une solution d'automatisation plus adaptable et plus efficace. À la fin des années 1960, l'industrie automobile, en particulier, a dû relever des défis pour s'adapter aux changements rapides des processus de fabrication. Les systèmes de relais traditionnels ne suffisaient plus.

En 1968, Dick Morley, souvent considéré comme le « père de l'API », a présenté le premier API, le Modicon 084. Cette innovation a marqué un tournant dans l'automatisation industrielle. Les API ont été conçus pour remplacer les systèmes de relais encombrants et peu flexibles par une solution plus rationnelle et programmable. Les premiers automates programmables offraient plusieurs avantages :

  - *Programmabilité* : Contrairement aux systèmes à relais, qui nécessitaient un recâblage physique, les automates programmables pouvaient être programmés à l'aide d'un logiciel. Cela permettait de modifier et de mettre à jour facilement la logique de contrôle sans devoir procéder à un recâblage important.

  - *Conception compacte* : Les automates programmables sont nettement plus petits que les panneaux à relais, ce qui permet de gagner de la place et de simplifier l'installation.

- *Fiabilité* : Avec moins de pièces mobiles que les relais, les automates programmables sont plus fiables et nécessitent moins d'entretien.

- *Polyvalence* : Les automates programmables peuvent être utilisés dans un large éventail d'applications, depuis des tâches simples comme la commande de l'éclairage jusqu'à des processus complexes comme l'automatisation des chaînes de montage.

=== L'évolution de la technologie des API
L'introduction des premiers automates programmables n'était qu'un début. Au cours des décennies suivantes, la technologie des automates a connu plusieurs évolutions majeures qui ont élargi leurs capacités et leurs applications :

- *Introduction des microprocesseurs (années 1970-1980)*: L'intégration de microprocesseurs dans les automates dans les années 1970 et 1980 a considérablement amélioré leur puissance de traitement et leur vitesse. Cela a permis aux automates de gérer des tâches plus complexes et de contrôler des systèmes plus importants avec une précision et une fiabilité accrues.

- *Programmation par logique Ladder* : La programmation par logique Ladder est devenue la méthode standard de programmation des automates. Conçue pour ressembler aux schémas des circuits logiques à relais, elle a permis aux ingénieurs et techniciens familiarisés avec les systèmes à relais de passer plus facilement à l'utilisation d'automates. La logique Ladder reste largement utilisée aujourd'hui, bien que les automates modernes prennent également en charge d'autres langages de programmation.

- *Communication Capabilities (1980s-1990s):* As industries became more interconnected, the need for communication between different systems grew. In the 1980s and 1990s, PLCs began to be equipped with communication modules, enabling them to connect to other PLCs, computers, and devices. This led to the development of distributed control systems (DCS) and supervisory control and data acquisition (SCADA) systems, which allowed for centralized monitoring and control of multiple processes.

- *Networking and Integration (1990s-2000s):* During the 1990s and 2000s, PLCs became more networked and integrated with other systems. The introduction of industrial Ethernet and other networking protocols enabled PLCs to communicate over long distances and integrate with enterprise-level systems like Manufacturing Execution Systems (MES) and Enterprise Resource Planning (ERP) systems. This integration facilitated real-time data collection, analysis, and decision-making, significantly improving operational efficiency.

= Objectives of the Report

Les objectifs du rapport portant sur l'exploration et la mise en œuvre de trois méthodes de contrôle d'une pompe à eau - contrôle classique par relais, contrôle par API et contrôle par VFD - sont les suivants :

- *Explorer et mettre en œuvre trois méthodes de contrôle*
  - *Commande à relais classique* :
Concevoir, mettre en œuvre et analyser un système de commande à relais traditionnel pour une pompe à eau, en mettant en évidence ses principes de fonctionnement, son câblage et ses caractéristiques opérationnelles.

  - *Commande par automate programmable* :
Développer et mettre en œuvre un système de contrôle basé sur un contrôleur logique programmable (PLC) pour la pompe à eau, en mettant en évidence sa programmabilité, sa flexibilité et sa facilité de modification.

Contrôle basé sur un VFD :
Concevoir et mettre en œuvre un système de contrôle de la pompe à eau basé sur un entraînement à fréquence variable (EFV), en démontrant sa capacité à contrôler la vitesse du moteur et à optimiser la consommation d'énergie.

- *Comparer les performances, les coûts et l'efficacité*
  - *Comparaison des performances* :
Évaluer les performances de chaque méthode de contrôle en terme
  - d'exactitude et de précision dans le contrôle de la pompe à eau :

  - Exactitude et précision dans le contrôle de la pompe à eau.

  - Temps de réponse aux changements dans les exigences opérationnelles.

Fiabilité et robustesse dans différentes conditions de fonctionnement.

  - *Analyse des coûts* :
Comparer les coûts d'installation initiaux, les dépenses de maintenance et les coûts opérationnels à long terme de chaque méthode de contrôle.

  - *Évaluation de l'efficacité* :
Analyser l'efficacité énergétique de chaque méthode, en se concentrant particulièrement sur la consommation d'énergie, les économies d'énergie et l'impact sur l'environnement.

- *Mise en évidence des avantages et des limites*
Identifier les forces et les faiblesses de chaque méthode de contrôle dans le contexte des applications de pompes à eau.

Examiner les scénarios dans lesquels chaque méthode est la plus appropriée en fonction des exigences opérationnelles spécifiques.

- *Fournir des informations pratiques*
Offrir un aperçu pratique du processus de mise en œuvre de chaque méthode de contrôle, y compris les schémas de câblage, la logique de programmation (pour l'automate programmable) et les paramètres de configuration (pour l'entraînement à fréquence variable).

Partager les défis du monde réel et les solutions rencontrées lors de la mise en œuvre de chaque système.

- *Recommander la méthode de contrôle optimale*
Sur la base de la comparaison des performances, du coût et de l'efficacité, recommander la méthode de contrôle la plus appropriée pour des applications spécifiques, telles que les systèmes de pompage d'eau résidentiels, commerciaux ou industriels.

Fournir des lignes directrices pour la sélection de la méthode de contrôle appropriée en fonction de facteurs tels que la complexité du système, l'évolutivité et les contraintes budgétaires.

- *Éduquer et informer*
Sensibiliser les lecteurs aux principes fondamentaux des systèmes de contrôle à base de relais, d'automates programmables et d'EFV.

Fournir une ressource complète aux ingénieurs, techniciens et professionnels de l'industrie pour comprendre les aspects pratiques de la mise en œuvre et de la comparaison de ces méthodes de contrôle.