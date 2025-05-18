#pagebreak()
== projet 2 : d’un Entraînement Électrique par Variateur de Fréquence (VFD).
Ce projet vise à concevoir et simuler un système d’entraînement électrique à vitesse variable reposant sur un variateur de fréquence (VFD – Variable Frequency Drive) pour piloter une machine asynchrone triphasée. Les moteurs asynchrones, largement utilisés dans les applications industrielles pour leur fiabilité et leur rentabilité, présentent des défis de contrôle dynamique liés à la régulation précise de leur vitesse et de leur couple. Dans un contexte industriel marqué par des exigences croissantes en efficacité énergétique et en flexibilité opérationnelle, ce travail se concentre sur la modélisation et la simulation numérique de l’interaction entre un VFD et un moteur asynchrone. L’objectif est de valider, par des outils de simulation (Matlab/Simulink, cade simu, ou équivalents), les performances du système sous divers scénarios de fonctionnement : régimes transitoires, variations de charge, ou profils de vitesse complexes. Cette approche permet d’anticiper les comportements réels du moteur, d’optimiser les paramètres du VFD, et de garantir un compromis entre stabilité, précision et consommation énergétique.

 - *1. Aperçu du Système*

  Le système de pompage d'eau décrit dans ce chapitre utilise un Automate Programmable Industriel (API) pour automatiser et contrôler le transfert d'eau. L'objectif principal de ce système est de gérer le débit d'eau de manière efficace et fiable, potentiellement pour la distribution, le stockage ou des processus industriels.
//TODO
- Les composants principaux du système comprennent :
  -  Une alimentation électrique triphasée (L1, L2, L3, PE) qui fournit l'énergie électrique nécessaire au fonctionnement du système.
  -  Un moteur électrique triphasé (M) qui sert de moteur principal pour la pompe à eau.
  -  Un variateur de fréquence (VFD) qui contrôle la vitesse de rotation du moteur, permettant un ajustement précis du débit d'eau.
  - Un API SIEMENS LOGO! qui fonctionne comme le contrôleur intelligent, exécutant la logique de commande et gérant le fonctionnement du système.
  - Des dispositifs d'entrée qui fournissent des signaux à l'API, représentant l'état du système ou les commandes de l'opérateur. Dans ce système, les entrées -K1 (I0.0), -K2 (I0.1) et -K3 (I0.2) sont interprétées comme des capteurs de niveau dans le réservoir d'eau.
    - -K1 représente un capteur de "niveau bas".
    - -K2 représente un capteur de "niveau moyen".
    - -K3 représente un capteur de "niveau haut".
  -  Des dispositifs de sortie qui sont contrôlés par l'API pour actionner d'autres composants ou fournir des indications. -H2 (Q0.0) est une de ces sorties.
  - Des relais et des contacteurs (K1, K2, K3, Q1, Q2) qui servent de dispositifs de commutation pour contrôler les circuits électriques.

- L'état du réservoir est déterminé par la combinaison des capteurs de niveau :

  - *000 (-K1/-K2/-K3 = 0/0/0) :* Le réservoir est à un niveau très bas, en dessous du point de détection du capteur de "niveau bas" (-K1).
  - *001 (-K1/-K2/-K3 = 1/0/0) :* Le niveau d'eau a dépassé le capteur de "niveau bas" (-K1) mais est toujours en dessous du capteur de "niveau moyen" (-K2).
  - *011 (-K1/-K2/-K3 = 1/1/0) :* Le niveau d'eau a dépassé à la fois le capteur de "niveau bas" (-K1) et le capteur de "niveau moyen" (-K2) mais est toujours en dessous du capteur de "niveau haut" (-K3).
  - *111 (-K1/-K2/-K3 = 1/1/1) :* Le niveau d'eau a atteint le capteur de "niveau haut" (-K3), indiquant que le réservoir est plein (ou à un niveau élevé).

  #figure(
    image("../resources/img/omar.svg",width: 90%),
  )

L'API surveille en permanence les signaux d'entrée des capteurs de niveau, exécute la logique de commande programmée et génère des signaux de sortie pour contrôler le VFD et d'autres actionneurs. Cette stratégie de commande en boucle fermée garantit que le système de pompage d'eau fonctionne efficacement, réagit aux demandes changeantes et maintient les performances souhaitées.

- *2. Circuit de Puissance*
#figure(
  image("../resources/img/circuit de puissance.svg",width:20%),
)
Le système de distribution de l'alimentation électrique fournit l'énergie nécessaire au fonctionnement du système de pompage d'eau. La source d'alimentation principale est un courant alternatif (CA) triphasé, comme indiqué par les bornes étiquetées L1, L2 et L3. Ces bornes représentent les conducteurs triphasés qui transportent l'énergie électrique vers le système. Un conducteur de terre de protection (PE) est également présent, servant de mise à la terre de sécurité pour protéger le personnel et l'équipement contre les défauts électriques.

L'alimentation triphasée est fournie au variateur de fréquence (VFD). 
Le VFD est un dispositif électronique qui contrôle la fréquence et la tension fournies au moteur, régulant ainsi sa vitesse. Le VFD reçoit l'alimentation CA entrante via les bornes L1, L2, L3 et PE.

- *4. Circuit de Commande*

  #figure(
    image("../resources/img/circuit de commande.svg",width:80%),
  )

  Le circuit de commande de ce système de pompage d'eau est orchestré par un Automate Programmable Industriel (API) SIEMENS LOGO!. L'API agit comme le cerveau du système, prenant des décisions et contrôlant le fonctionnement des autres composants.

 - *4.1. API SIEMENS LOGO!*

  L'API SIEMENS LOGO! est un contrôleur compact et polyvalent conçu pour les tâches d'automatisation.
  Il est alimenté par une alimentation électrique connectée aux bornes P1 et P2.
  L'API possède plusieurs canaux d'entrée et de sortie qui lui permettent d'interagir avec le monde extérieur.

 - *4.2. Entrées (Inputs)*

  L'API reçoit des signaux des dispositifs d'entrée qui fournissent des informations sur l'état du système.
  les entrées suivantes sont définies :
  - K1 est connecté à l'entrée I2.
  - K2 est connecté à l'entrée I4.
  - K3 est connecté à l'entrée I5.

  Comme discuté précédemment, -K1, -K2 et -K3 sont des capteurs de niveau dans le réservoir d'eau.

 - *4.3. Sorties (Outputs)*

  L'API envoie des signaux aux dispositifs de sortie pour contrôler les actionneurs ou fournir des indications.
  la sortie suivante est définie :
  - Q1 est connecté à l'entrée I3 de VFD.
  - Q2 est connecté à l'entrée I4 de VFD.

 - *4.4. Logique de Commande (Control Logic)*
  - Le comportement de l'API est déterminé par la logique de commande qui y est programmée.
  - Le schéma comprend un diagramme logique sur le côté droit, qui illustre les relations entre les entrées et les sorties.
  - Ce diagramme logique définit comment l'API réagira aux différentes combinaisons de signaux d'entrée (c'est-à-dire les états des capteurs de niveau) pour contrôler les sorties et, par conséquent, le fonctionnement du système de pompage.
  #figure(
    image("../resources/img/omar_2.svg",width:80%),
  )
Le circuit de commande constitue donc l'intelligence du système de pompage d'eau, interprétant les informations des capteurs et dictant les actions appropriées pour réaliser la commande souhaitée. \
\

- *simulation en Matlab d’un Entraînement Électrique par Variateur de Fréquence (VFD).* \

  La simulation a été réalisée à l’aide de MATLAB/Simulink, un environnement puissant pour l’analyse des systèmes dynamiques. Le modèle développé inclut une source d’alimentation haute tension (25 kV, 60 Hz), un transformateur abaisseur (25 kV / 460 V), un VFD pour la régulation de la fréquence de sortie, ainsi qu’une charge mécanique dépendant de la vitesse de rotation du rotor. Ce montage permet de visualiser l’impact des variations de fréquence sur la réponse du moteur, notamment en termes de vitesse, de couple électromagnétique, et de performance énergétique.

  Ce projet a permis de mieux comprendre le fonctionnement interne d’un VFD, sa structure de commande, ainsi que l’interaction complexe entre la fréquence d’alimentation, la tension, et la réponse dynamique du moteur. Il constitue une base solide pour la conception de systèmes de commande avancés destinés aux moteurs industriels.

  - * simulation.*
  Dans le cadre de ce travail pratique, une simulation a été réalisée sous MATLAB/Simulink afin d’étudier le comportement d’une machine asynchrone triphasée alimentée par un variateur de fréquence (VFD – Variable Frequency Drive). Le système étudié vise à démontrer l’influence du VFD sur la vitesse de rotation et le couple développé par la machine, tout en reproduisant un scénario réaliste d'alimentation électrique industrielle.
  #figure(
  image("../resources/img/simulation projt1.png",width:100%),
  )
Le montage global du système peut être décomposé en plusieurs blocs fonctionnels, chacun jouant un rôle précis dans la chaîne d’alimentation et de commande :

- *Source d’alimentation triphasée (25 kV, 60 Hz, 10 MVA)*
Cette source représente une alimentation haute tension typique d’un réseau électrique. Elle fournit une tension sinusoïdale triphasée utilisée comme entrée pour le transformateur.
- *Transformateur abaisseur (25 kV / 460 V, 50 kVA)*
Ce transformateur permet de réduire la tension de 25 kV à une tension plus adaptée (460 V) pour l’alimentation du VFD. Il utilise un couplage Δ , où le côté primaire est mis à la terre pour la sécurité, tandis que le côté secondaire en triangle assure un équilibrage efficace des charges.
- *Variateur de fréquence (VFD)*
Le VFD est le cœur du système de commande. Il reçoit une tension triphasée fixe (460 V) et une fréquence de commande (ici fixée à 50 Hz). En sortie, il génère une tension et une fréquence variables qui alimentent directement la machine asynchrone. Il permet ainsi de contrôler précisément la vitesse de rotation du moteur
#figure(
  image("../resources/img/vfd1.png",width:90%),
 
)
- *Machine asynchrone triphasée à cage*
La machine reçoit la tension triphasée variable du VFD. Elle convertit l’énergie électrique en énergie mécanique, produisant ainsi un couple sur l’arbre moteur. La simulation permet de mesurer la vitesse angulaire du rotor (wm) et d’étudier sa réponse dynamique.

L’ensemble de cette simulation constitue une plateforme pédagogique efficace pour comprendre le rôle fondamental des VFD dans la commande de moteurs asynchrones. Elle permet également d’explorer l’impact des paramètres électriques sur les performances mécaniques de la machine, tout en illustrant les principes d’interconnexion entre les différents composants d’un système industriel d’entraînement électrique.

- * Tension de sortie de VFD.*
#figure(
  image("../resources/img/scop1.PNG",width:110%),
 
)
- * Tension de sortie de mochine asynchrone.*
#figure(
  image("../resources/img/scop2.PNG",width:110%),
 
)
- *Exemple de simulation d'une pompe hydraulique* \
  La simulation du système  pompe  hydraulique comprend plusieurs composants clés, notamment une pompe électrique (M1) qui aspire l'eau d'un réservoir et la pousse à travers le système, ainsi que des vannes pour contrôler le débit. Lors de la simulation, la pompe M1 s'active pour faire circuler l'eau, qui est dirigée à travers un tuyau vers une sortie. Les vannes peuvent être ouvertes ou fermées pour réguler le flux. Les paramètres à surveiller incluent le débit de la pompe, la pression dans le système pour garantir qu'elle reste dans des limites sûres, et le niveau d'eau dans le réservoir pour éviter les débordements ou les pompages à sec. Divers scénarios peuvent être explorés, tels que la variation de la vitesse de la pompe, les effets des vannes ouvertes ou fermées sur le débit, et l'impact d'un niveau d'eau faible ou d'une obstruation dans les tuyaux. L'objectif de cette simulation est de comprendre le comportement d'un système hydraulique simple, d'optimiser le fonctionnement de la pompe et de prévoir les problèmes potentiels. Cette approche permet aux utilisateurs d'expérimenter avec différents paramètres sans risque, tout en leur offrant une visualisation claire du fonctionnement du système.

#figure(
  image("../resources/img/pcsimu.PNG",width:60%),
 
)