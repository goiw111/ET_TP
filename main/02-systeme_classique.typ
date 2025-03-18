#import "@preview/hei-synd-report:0.1.1": *
#import "/metadata.typ": *
#pagebreak()

= Systèmes classiques basés sur des relais
Le mot « discret » signifie individuel ou distinct. En ingénierie, une variable ou une mesure « discrète » se réfère à un état vrai ou faux. Ainsi, un système de contrôle discret est conçu pour fonctionner sur des signaux booléens (« on » ou « off ») fournis par des capteurs discrets tels que des interrupteurs de processus.
Une forme de commande discrète enseignée dans tous les cours d'introduction à l'électronique numérique implique l'utilisation de circuits appelés portes logiques. Ces circuits introduisent un ou plusieurs signaux booléens et émettent un signal booléen selon une règle simple telle que « ET » ou « OU »:

#figure(
  image("/resources/img/gate_01.png",width: 90%),
  caption: ""
)
Les systèmes de contrôle industriels utilisent rarement des portes logiques de manière directe pour les systèmes de contrôle discrets, bien que les concepts fondamentaux de « ET », « OU » et d'autres types de portes soient universellement appliqués. Les fonctions de commande sont plutôt mises en œuvre à l'aide de relais électromécaniques et/ou de dispositifs numériques programmables tels que les automates programmables industriels (API). Ce chapitre se concentre sur l'utilisation pratique de ces deux technologies pour la commande discrète industrielle.

Une fonction « ET » est équivalente à des contacts normalement ouverts connectés en série dans un circuit de commande à relais, car la lampe ne sera alimentée que si l'interrupteur A et l'interrupteur B sont actionnés :
#figure(
  image("/resources/img/gate_02.jpg",width: 90%),
  caption: ""
)
Une fonction « OU » est équivalente à des contacts normalement ouverts connectés en parallèle dans un circuit de commande de relais, car la lampe sera alimentée si l'interrupteur A ou l'interrupteur B est actionné :
#figure(
  image("/resources/img/gate_03.jpg",width: 90%),
  caption: ""
)

La fonction « NOT » est équivalente à un simple contact normalement fermé dans un circuit de commande de relais, car la lampe n'est alimentée que si l'interrupteur n'est pas actionné :

#figure(
  image("/resources/img/gate_04.jpg",width: 90%),
  caption: ""
)

== Les bases des relais de contrôle

#infobox()[Les relais sont des dispositifs électromécaniques magnétiques qui ont deux fonctions principales : 
isoler différentes tensions de circuit et former des réseaux logiques complexes plus importants pour faire fonctionner des machines sans contrôleurs numériques.]

Un relais électromécanique est un interrupteur électrique actionné par une bobine d'électroaimant. En tant que dispositifs de commutation, ils présentent un comportement simple de « marche » et « arrêt », sans états intermédiaires. Les relais sont des dispositifs très utiles, car ils permettent à un seul signal électrique discret (marche/arrêt) de contrôler des niveaux de puissance électrique beaucoup plus importants, et/ou plusieurs signaux de puissance ou de commande qui sont autrement isolés les uns des autres. Par exemple, un relais peut être commandé par un signal basse tension et basse intensité qui passe par une sorte de commutateur délicat (par exemple, un interrupteur de fin de course, un détecteur de proximité, un capteur optique), puis les contacts de commutation de ce relais peuvent être utilisés pour commander un circuit de tension et d'intensité beaucoup plus élevées, et même plusieurs circuits, compte tenu des multiples jeux de contacts de commutation.

=== Symboles schématiques pour les relais
- *Relais unipolaire unidirectionnel (relais SPST)*
Le symbole du schéma électronique d'un relais unipolaire simple (SPST) est illustré ici : 

#figure(
  image("/resources/img/image1_28_1.jpg",width: 60%),
  caption: ""
)

Une bobine de fil enroulée autour d'un noyau ferreux laminé fournit le champ magnétique nécessaire pour actionner le mécanisme de commutation, alimenté par une tension alternative ou continue, selon le modèle. L'influence de cette bobine d'électroaimant sur le(s) contact(s) du relais est représentée par la ligne en pointillés. Ce relais particulier est équipé de contacts de commutation normalement ouverts (NO), ce qui signifie que le commutateur sera à l'état ouvert (off) lorsque la bobine du relais est désexcitée. Rappelons que l'état « normal » d'un interrupteur est l'état de repos sans stimulation. Le contact d'un interrupteur à relais est dans son état « normal » lorsque sa bobine n'est pas alimentée. Un relais unipolaire, unidirectionnel avec un contact de commutation normalement fermé (NC) serait représenté dans un schéma électronique comme suit :

#figure(
  image("/resources/img/image2_28_1.jpg",width: 60%),
  caption: ""
)

Dans le monde du contrôle électrique, les étiquettes « Form-A » et « Form-B » sont synonymes de contacts « normalement ouverts » et « normalement fermés », respectivement. Ainsi, nous aurions pu étiqueter les contacts des relais SPST comme « Forme-A » et « Forme-B », respectivement :

#figure(
  image("/resources/img/image3_28_1.jpg",width: 60%),
  caption: ""
)

- *Relais unipolaire et bipolaire (relais SPDT)*
Une extension de ce thème est le contact de relais unipolaire et bipolaire (SPDT), également connu sous le nom de contact « Form-C ». Ce type d'interrupteur fournit un ensemble de contacts normalement ouverts et normalement fermés en une seule unité, actionnée par la bobine de l'électro-aimant :

#figure(
  image("/resources/img/image4_28_1.jpg",width: 60%),
  caption: ""
)
- *Relais bipolaire à double contact (relais DPDT)*
Une autre extension de ce thème est le contact de relais double pôle, double lance (DPDT). Ce type d'interrupteur fournit deux jeux de contacts de forme C en une seule unité, actionnés simultanément par la bobine de l'électro-aimant :

#figure(
  image("/resources/img/image5_28_1.jpg",width: 60%),
  caption: ""
)

Les relais DPDT sont parmi les types de relais les plus courants dans l'industrie en raison de leur polyvalence. Chaque jeu de contacts de « forme C » offre un choix de contacts normalement ouverts ou normalement fermés, et les deux jeux (deux « pôles ») sont électriquement isolés l'un de l'autre de sorte qu'ils peuvent être utilisés dans des circuits différents.

Deux boîtiers courants pour les relais industriels sont le relais octal et le relais glaçon.  Ces relais se branchent sur des socles multibroches pour faciliter le retrait et le remplacement en cas de défaillance, et contiennent généralement des boîtiers en plastique transparent permettant d'inspecter les éléments fonctionnels. Les photos suivantes montrent un relais octal DPDT prêt à être branché sur son socle, puis dont le couvercle en plastique a été retiré pour exposer les deux jeux de contacts de forme C :

#figure(
  image("/resources/img/ac-28-30-12-2.jpg",width: 60%),
  caption: ""
)

Ces relais se connectent à l'embase avec huit broches : trois pour chacun des deux jeux de contacts de forme C, plus deux autres broches pour les connexions de la bobine. En raison du nombre de broches (8), ce type d'embase de relais est généralement réservé aux connexions de type DPDT.

Une vue rapprochée d'un contact de forme C montre comment la « feuille » métallique mobile entre en contact avec l'un des deux points fixes, le point de contact réel étant constitué par un « bouton » recouvert d'argent à l'extrémité de la feuille. Les photographies suivantes montrent un contact de forme C dans les deux positions :

#figure(
  image("/resources/img/image8_28_1.jpg",width: 38%),
  caption: ""
)
The *“ice cube”* relay is functionally identical, but the pins are arranged in a rectangular pattern, rather than circular around the base. These relays can be found in single and double-pole varieties, and even up to 4 contact sets (4PDT) is fairly common. The below images show a standard From-C DPDT ice cube relay followed by a 4PDT with the matching socket.

#figure(
  image("/resources/img/Pole_1.jpg",width: 60%),
  caption: ""
)

*Schéma de connexion*
Les relais de commande industriels ont généralement des schémas de connexion dessinés quelque part sur l'enveloppe extérieure pour indiquer quelles broches se connectent à quels éléments à l'intérieur du relais. Le style de ces diagrammes peut varier quelque peu, même entre des relais de fonction identique. Prenons par exemple le diagramme illustré ici:

#figure(
  image("/resources/img/image12_28_1.jpg",width: 50%),
  caption: ""
)

=== Circuits de relais et Ladder Diagrams

Les circuits logiques à relais, souvent représentés par des ladder diagrams, sont un élément essentiel des systèmes de contrôle industriel. Ces circuits utilisent des relais et des interrupteurs pour contrôler divers dispositifs électriques en fonction de conditions d'entrée spécifiques. Le format du ladder diagram est populaire car il reflète visuellement la disposition des panneaux de commande à relais physiques, ce qui permet aux ingénieurs et électriciens de comprendre et de résoudre facilement les problèmes. Le diagramme se compose de lignes verticales (L1 et L2) représentant l'alimentation électrique, avec des échelons horizontaux qui les relient, chaque échelon représentant un chemin logique de contrôle. Chaque échelon dans le ladder diagram sert de circuit de commande pour un dispositif de sortie spécifique, tel qu'une lumière, un moteur ou une alarme.

Les dispositifs montrés dans les ladder diagrams comprennent généralement des dispositifs de commande comme des interrupteurs, des capteurs et des relais, qui sont placés entre les rails d'alimentation (L1 et L2). Les dispositifs d'entrée, tels que les boutons-poussoirs ou les interrupteurs de limite, sont utilisés pour déterminer l'état du dispositif de sortie. Ces dispositifs d'entrée sont connectés en série ou en parallèle, selon la logique requise. Un agencement en série signifie que toutes les conditions doivent être vraies (ou "fermées") pour que le dispositif de sortie s'active, tandis qu'un agencement en parallèle permet à la sortie de s'activer si l'une des conditions est remplie. Cette flexibilité fait de la logique à relais un choix idéal pour contrôler une grande variété de machines et de systèmes.

#figure(
  image("/resources/img/Relay_Rack_Ladder_Diagram.gif",width: 50%),
  caption: "Exemple de diagramme logique Ladder"
)

Une caractéristique clé des ladder diagrams est l'utilisation de contacts normalement ouverts (NO) et normalement fermés (NF) pour représenter l'état des interrupteurs ou des relais. Les contacts NO restent ouverts lorsque le dispositif associé est déenergisé et se ferment lorsque le dispositif est énergisé. Les contacts NF, quant à eux, sont fermés lorsque le dispositif est éteint et s'ouvrent lorsqu'il est énergisé. Ce comportement permet de construire des conditions logiques dans le système de commande. Par exemple, un bouton STOP pourrait être câblé en série avec un relais pour empêcher le fonctionnement du système lorsqu'il est pressé, tandis qu'un bouton START pourrait être placé en parallèle avec d'autres éléments de commande pour démarrer le système sous certaines conditions.

Dans un système logique à relais typique, les dispositifs d'entrée et de sortie sont câblés pour contrôler l'état du système. Le bouton START pourrait activer un relais, ce qui, à son tour, fermerait des contacts pour allumer une lumière pilote ou un moteur. À l'inverse, le bouton STOP désactiverait le relais, faisant ouvrir les contacts et éteignant les dispositifs connectés. La beauté de ce système réside dans sa simplicité et sa flexibilité. Plusieurs échelons peuvent être ajoutés pour gérer des besoins de commande plus complexes, tels que des verrouillages, des temporisateurs ou des opérations séquentielles. Chaque échelon est identifié par un numéro de référence unique, et les fils individuels de cet échelon reçoivent des numéros correspondants pour un suivi facile et une maintenance efficace.


#figure(
  image("/resources/img/Relay_Logic2.jpg",width: 50%),
  caption: "Exemple de diagramme logique Ladder"
)

== Contacteurs et relais - Différences et applications
Les relais et les contacteurs sont des composants fondamentaux dans l'automatisation industrielle, largement utilisés pour contrôler des circuits haute tension avec des signaux basse tension. Bien qu'ils fonctionnent sur des principes similaires d'induction électromagnétique, ils ne sont pas interchangeables en raison de leurs différences en termes de conception, d'application et de fonction. Examinons de plus près leurs principes de fonctionnement, leurs différences et les rôles spécifiques des relais et des contacteurs dans les circuits industriels.
#figure(
  image("/resources/img/Con_Relay.jpg",width: 80%),
  caption: ""
)
=== Principes de fonctionnement des relais et des contacteurs

Les relais et les contacteurs fonctionnent tous deux en utilisant une bobine électromagnétique. Lorsqu'un courant passe dans la bobine, un champ magnétique est généré, ce qui déplace un fer-blanc (armature) qui ouvre ou ferme un jeu de contacts, permettant ou interrompant ainsi le passage du courant dans un circuit. En termes simples, ils agissent comme des interrupteurs qui permettent à un circuit de commande basse puissance de contrôler des appareils haute puissance tels que des moteurs, des lumières ou d'autres machines.

Le fonctionnement est similaire : lorsqu'un petit courant passe à travers la bobine, il génère un champ magnétique qui attire ou repousse l'armature, provoquant l'ouverture ou la fermeture des contacts. Cette modification de l'état des contacts permet de contrôler le fonctionnement d'un courant beaucoup plus important dans le circuit principal.

=== Différences entre relais et contacteurs

Bien qu'ils partagent un principe de fonctionnement similaire, les *relais* et les *contacteurs* sont conçus pour des objectifs et des environnements différents.
#figure(
  image("/resources/img/Con_Relay_3.jpg",width: 60%),
  caption: ""
)

1. *Taille et capacité de courant :*
   - *Les relais* sont généralement plus petits et conçus pour commuter des courants faibles, souvent dans des circuits de commande où le courant est relativement faible (par exemple, inférieur à 10-20 ampères). Ils sont couramment utilisés pour des fonctions de commande et de signalisation.
   - *Les contacteurs*, quant à eux, sont conçus pour supporter des courants plus élevés (généralement au-dessus de 10-20 ampères), ce qui les rend idéaux pour la commutation de circuits haute puissance tels que des moteurs, des machines lourdes et des équipements industriels. Les contacteurs sont généralement plus grands, plus robustes et conçus pour supporter l'usure liée à la commutation de circuits de haute puissance.

2. *Configuration des contacts :*
   - *Les relais* ont généralement quelques contacts, généralement un ou deux jeux de contacts normalement ouverts (NO) ou normalement fermés (NF). Leurs contacts sont utilisés principalement dans des circuits de commande où moins de commutations sont nécessaires.
   - *Les contacteurs* ont généralement davantage de contacts (souvent trois ou plus) et sont conçus pour les systèmes électriques triphasés. Leurs contacts sont conçus pour supporter l'arc électrique et l'usure qui se produisent lorsqu'ils commutent des circuits haute puissance.

3. *Durabilité et longévité :*
   - *Les relais* ne sont généralement pas conçus pour supporter des commutations fréquentes dans des applications de haute puissance. Bien qu'ils puissent fonctionner à des fréquences modérées, ils ne sont pas conçus pour les cycles de commutation fréquents rencontrés dans des applications de machines lourdes.
   - *Les contacteurs* sont conçus pour une grande durabilité, capables de supporter des milliers à des millions de cycles de commutation. Les contacts sont conçus pour résister aux arcs électriques générés lors de la commutation de circuits haute puissance, ce qui est fréquent lorsqu'on contrôle des moteurs et des charges lourdes.

4. *Fonctions auxiliaires :*
   - *Les relais* sont souvent utilisés dans des circuits pour des fonctions telles que les temporisations, le contrôle logique et la commutation simple d'appareils de faible puissance. Ils sont souvent équipés de contacts auxiliaires qui permettent des fonctionnalités de commande supplémentaires.
   - *Les contacteurs* sont équipés de contacts auxiliaires plus robustes pour des fonctions spécifiques comme la protection contre les surcharges, le contrôle à distance et la surveillance de l'état, ce qui les rend adaptés aux systèmes industriels plus grands et plus complexes.

5. *Protection et sécurité :*
   - *Les relais* sont généralement plus simples et peuvent manquer de certaines fonctions de protection. Ils sont conçus pour des tâches de commande relativement légères, donc des protections supplémentaires comme des relais de surcharge ou des fusibles sont souvent utilisés en complément des relais.
   - *Les contacteurs* sont souvent équipés de protection contre les surcharges intégrée ou sont conçus pour être associés à des relais de surcharge, assurant ainsi la protection des circuits qu'ils contrôlent. Cela est essentiel dans les environnements industriels où la sécurité des équipements est primordiale.

=== Applications clés

- *Les relais* sont couramment utilisés dans :
  - Les circuits de commande pour commuter des dispositifs plus petits comme des alarmes, des lumières ou des petits moteurs.
  - Les systèmes de commande logique où une fonction simple de marche/arrêt est requise.
  - Les opérations avec retard, où des dispositifs doivent être activés ou désactivés après une durée déterminée.

- *Les contacteurs* sont généralement utilisés dans :
  - La commutation de grandes machines, de moteurs et d'équipements industriels nécessitant des opérations fréquentes de marche/arrêt.
  - Le contrôle de circuits haute puissance dans les systèmes d'automatisation industrielle comme les systèmes de CVC, les convoyeurs ou les pompes industrielles.
  - Les applications nécessitant une opération fréquente et des composants robustes et durables pour gérer des charges importantes.

 *Les symboles* pour les appareils respectifs sont présentés ci-dessous. Les symboles sont utilisés pour représenter les composants dans les schémas électriques et les diagrammes de commande, comme les relais et contacteurs, permettant de les identifier facilement dans les circuits.

#figure(
  image("/resources/img/Relay-Con_Schematic2.jpg",width: 90%),
  caption: ""
)

Bien que les relais et les contacteurs soient des dispositifs électromécaniques utilisés pour contrôler le flux d'électricité dans les circuits, ils remplissent des fonctions différentes dans l'automatisation industrielle. Les relais conviennent aux applications de faible puissance et de commande, tandis que les contacteurs sont conçus pour gérer des opérations de commutation haute puissance et des charges lourdes. Comprendre les différences entre eux est essentiel pour les ingénieurs en automatisation afin de sélectionner le bon composant pour chaque application spécifique. Bien que relais et contacteurs fonctionnent sur des principes électromagnétiques similaires, leurs différences de taille, de configuration de contacts et de durabilité font qu'ils ne peuvent pas être utilisés de manière interchangeable dans tous les scénarios.

\
\

=== Explorer les types de relais électriques

Dans cette section, nous allons vous présenter les différents types de relais et leurs utilisations spécifiques. Voyons ce qu'il en est.

#figure(
  image("/resources/img/bitmap.png",width: 89%),
  caption: "les différents types de relais"
)


#pagebreak()

- *Relais électromagnétique*
  - Qu'est-ce que c'est ? Le type le plus courant, qui utilise un électro-aimant pour ouvrir ou fermer les contacts.
  - Où est-il utilisé ? Largement répandu dans les systèmes de contrôle industriels, les circuits électriques et les applications automobiles.
  - Pourquoi c'est important : Idéal pour les circuits haute tension et les applications lourdes en raison de la fiabilité de sa commutation.

#figure(
  image("/resources/img/electromagnetic-relay.jpg",width: 75%),
  caption: "Relais électromagnétique"
)

- *Relais statique (SSR)*
  - Qu'est-ce que c'est ? Un relais sans pièces mobiles, utilisant des semi-conducteurs au lieu d'un interrupteur mécanique.
  - Domaines d'application : Idéal pour un fonctionnement silencieux dans l'électronique sensible, comme l'automatisation et les machines industrielles.
  - Pourquoi c'est important ? Commutation plus rapide, durée de vie plus longue et absence d'usure grâce à sa nature à l'état solide.
  
#figure(
  image("/resources/img/61+5ptPwX6S.jpg",width: 49%),
  caption: "Relais statique (SSR)"
)

- *Relais thermique*
  - Qu'est-ce que c'est ? Il protège les circuits contre la surchauffe en détectant les hausses de température.
  - Où est-il utilisé ? Principalement dans les circuits de moteur pour éviter les surcharges et les dommages.
  - Pourquoi c'est important ? Indispensable pour protéger les moteurs et assurer la longévité des équipements en coupant l'alimentation en cas de surchauffe. de surchauffe.

#figure(
  image("/resources/img/eqli50bmx8racoqk.jpg",width: 44%),
  caption: "Relais thermique"
)

- *Relais différentiel*
  - Qu'est-ce que c'est ? Un relais qui compare les courants d'entrée et de sortie pour détecter les défauts.
  - Où l'utilise-t-on ? Protection des transformateurs, des générateurs et des sous-stations électriques.
  - Pourquoi c'est important ? Essentiel pour prévenir les dommages en identifiant rapidement les défauts électriques.

#figure(
  image("/resources/img/56173_1.jpg",width: 50%),
  caption: "Relais différentiel"
)

- *Reed Relay*
  - Qu'est-ce que c'est ? Un relais à commutation rapide et à haute sensibilité, utilisant des contacts magnétiques enfermés dans un tube de verre.
  - Domaines d'application : Télécommunications, systèmes de signalisation et commutation de faible puissance.
  - Pourquoi c'est important : Parfait pour les applications à faible puissance et à grande vitesse où la précision est cruciale.

#figure(
  image("/resources/img/266728_4.jpg",width: 42%),
  caption: "Reed Relay"
)

- *Relais à verrouillage*
  - Qu'est-ce que c'est ? Reste dans son dernier état (marche ou arrêt) même après la suppression du signal de commande.
  - Domaines d'application : Idéal pour les circuits où le relais doit rester en position sans alimentation continue, comme les systèmes d'éclairage.
  - Pourquoi c'est important : Économique en énergie et efficace pour les circuits à mémoire qui doivent maintenir leur état en cas de perte d'alimentation.

#figure(
  image("/resources/img/412412-LEGRAND-1000.jpg",width: 50%),
  caption: "Relais à verrouillage"
)

- *Relais de séquence de phase*
  - Qu'est-ce que c'est ? Surveille la séquence des phases dans les systèmes triphasés pour garantir l'ordre correct des phases.
  - Domaines d'application : Protection des moteurs triphasés, systèmes industriels et réseaux de distribution d'énergie.
  - Pourquoi c'est important : Empêche les moteurs de fonctionner en sens inverse et assure le bon fonctionnement de l'équipement.

#figure(
  image("/resources/img/412412-LEGRAND-1000.jpg",width: 50%),
  caption: "Relais à verrouillage"
)