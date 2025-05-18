== projet : d’un Entraînement Électrique par Variateur de Fréquence (VFD).
Ce projet vise à concevoir et simuler un système d’entraînement électrique à vitesse variable reposant sur un variateur de fréquence (VFD – Variable Frequency Drive) pour piloter une machine asynchrone triphasée. Les moteurs asynchrones, largement utilisés dans les applications industrielles pour leur fiabilité et leur rentabilité, présentent des défis de contrôle dynamique liés à la régulation précise de leur vitesse et de leur couple. Dans un contexte industriel marqué par des exigences croissantes en efficacité énergétique et en flexibilité opérationnelle, ce travail se concentre sur la modélisation et la simulation numérique de l’interaction entre un VFD et un moteur asynchrone. L’objectif est de valider, par des outils de simulation (Matlab/Simulink, cade simu, ou équivalents), les performances du système sous divers scénarios de fonctionnement : régimes transitoires, variations de charge, ou profils de vitesse complexes. Cette approche permet d’anticiper les comportements réels du moteur, d’optimiser les paramètres du VFD, et de garantir un compromis entre stabilité, précision et consommation énergétique.
=== Modélisation et simulation d'un système de contrôle PLC avec variateur de fréquence (VFD).
 *1.1 Circuit de Puissance*
 #figure(
  image("../resources/img/circuit de puissance.svg",width:20%),
 
)
*Relais thermique* :
    - Placé en série avec le moteur pour protéger l'installation contre les surcharges de courant.
    - Coupe l'alimentation en cas de dépassement du courant nominal, évitant toute détérioration du moteur.
  *circuit central "VFD"* :
   - Fonction : Convertit le courant alternatif (AC) fixe en courant continu (DC), puis en AC variable en fréquence et amplitude.
*Moteur synchrone triphasé (M)* :
    - Reçoit l'alimentation depuis les bornes du contacteur (U1, V1, W1).
    - Entraîne la pompe à eau pour pomper l'eau en continu.
- *1.2 Circuit de Commande*.
Les cercueils de commande sont des dispositifs utilisés pour le contrôle et la gestion des machines et équipements industriels. Ils regroupent les commandes nécessaires pour piloter et surveiller les processus automatisés.
#figure(
  image("../resources/img/circuit de commande.svg",width:100%),
 
)
 *Variateur de fréquence (VFD)* 
- *Fonction :* Régule la vitesse du moteur en ajustant la fréquence et la tension d’alimentation.
- *Connexions :*
  - Entrée : L1, L2, L3 (alimentation triphasée)
  - Sortie : U, V, W (vers le moteur).
  - Signal analogique : Reçoit une consigne de vitesse (ex0-10V) du PLC.
  *Contacteurs (KM1, KM2) *
 - KM1 :
Active l’alimentation du moteur en mode "Marche".
Commandé par une sortie digitale du PLC (DO1).

- KM2 :
Inverse le sens de rotation du moteur (si nécessaire).
Commandé par une sortie digitale du PLC (DO2).
*PLC (Automate Programmable)*
- *Rôle :* Cerveau du système. Exécute un programme pour :

    - Lire les entrées (boutons, capteurs).
    - Activer les sorties (contacteurs, VFD).
    - Gérer les erreurs (surchauffe, arrêt d’urgence).
- *Entrées/Sorties :*
    - *Entrées digitales :*

        DI1 : Bouton "Marche" (déclenche la mise sous tension).

        DI2 : Bouton "Arrêt" (coupe l’alimentation).

        DI3 : Relais thermique (détecte une surcharge moteur).

    - *Sorties digitales :* 

       DO1 : Active KM1 (alimentation moteur).

      DO2 : Active KM2 (inversion de sens).

  - *Sortie analogique :*
 
      AO1 : Envoie une consigne de vitesse au VFD (ex. 4-20mA).
*Séquence typique de fonctionnement.*

  *1-Mise sous tension :*

    Le PLC reçoit l’alimentation (+24V).

    Le VFD est alimenté via L1, L2, L3, mais le moteur reste à l’arrêt (KM1 ouvert).

  *2-Démarrage du moteur :*

    L’utilisateur appuie sur le bouton "Marche" (DI1).

    Le PLC active DO1 → KM1 ferme ses contacts → Le moteur reçoit l’alimentation via le VFD.

    Le PLC envoie un signal analogique (AO1) au VFD pour régler la vitesse.

  *3-Inversion de sens :*

    Si nécessaire, le PLC active DO2 → KM2 ferme ses contacts → Inversion des phases (ex. L1↔L3).

  *4-Arrêt d’urgence :*


   Appui sur le bouton "Arrêt" (DI2) → Le PLC coupe DO1 et DO2 → KM1 et KM2 s’ouvrent.

   En cas de surcharge, le relais thermique (I>) ouvre le circuit → DI3 signale l’erreur au PLC.
  


Ce circuit de commande, intégrant un PLC et un variateur de fréquence (VFD), incarne une solution industrielle moderne alliant automatisation, sécurité et efficacité énergétique. En centralisant la logique de contrôle via le PLC, il offre une flexibilité accrue pour adapter les séquences de fonctionnement (démarrage, inversion de sens, gestion des alarmes) sans modifier le câblage physique, tout en permettant une supervision précise grâce à des interfaces de communication standardisées (bus Ethernet, RS485). Les protections intégrées, comme le relais thermique et les fusibles, garantissent la sécurité des opérateurs et la durabilité des équipements, tandis que le VFD optimise la performance du moteur en ajustant dynamiquement sa vitesse. Bien que nécessitant un investissement initial et une expertise technique, ce système s’adapte à des applications variées (convoyeurs, pompes, HVAC) et s’inscrit dans la tendance de l’Industrie 4.0, où connectivité, modularité et diagnostic en temps réel deviennent incontournables. En résumé, il représente un équilibre optimal entre robustesse industrielle et innovation technologique.






 

 


== simulation en Matlab d’un Entraînement Électrique par Variateur de Fréquence (VFD).


La simulation a été réalisée à l’aide de MATLAB/Simulink, un environnement puissant pour l’analyse des systèmes dynamiques. Le modèle développé inclut une source d’alimentation haute tension (25 kV, 60 Hz), un transformateur abaisseur (25 kV / 460 V), un VFD pour la régulation de la fréquence de sortie, ainsi qu’une charge mécanique dépendant de la vitesse de rotation du rotor. Ce montage permet de visualiser l’impact des variations de fréquence sur la réponse du moteur, notamment en termes de vitesse, de couple électromagnétique, et de performance énergétique.

Ce projet a permis de mieux comprendre le fonctionnement interne d’un VFD, sa structure de commande, ainsi que l’interaction complexe entre la fréquence d’alimentation, la tension, et la réponse dynamique du moteur. Il constitue une base solide pour la conception de systèmes de commande avancés destinés aux moteurs industriels.

* simulation.*
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
- * Tension de sortie de mochine asynchrone.*
#figure(
  image("../resources/img/scop2.PNG",width:110%),
 
)
== Exemple de simulation d'une pompe hydraulique
La simulation du système  pompe  hydraulique comprend plusieurs composants clés, notamment une pompe électrique (M1) qui aspire l'eau d'un réservoir et la pousse à travers le système, ainsi que des vannes pour contrôler le débit. Lors de la simulation, la pompe M1 s'active pour faire circuler l'eau, qui est dirigée à travers un tuyau vers une sortie. Les vannes peuvent être ouvertes ou fermées pour réguler le flux. Les paramètres à surveiller incluent le débit de la pompe, la pression dans le système pour garantir qu'elle reste dans des limites sûres, et le niveau d'eau dans le réservoir pour éviter les débordements ou les pompages à sec. Divers scénarios peuvent être explorés, tels que la variation de la vitesse de la pompe, les effets des vannes ouvertes ou fermées sur le débit, et l'impact d'un niveau d'eau faible ou d'une obstruation dans les tuyaux. L'objectif de cette simulation est de comprendre le comportement d'un système hydraulique simple, d'optimiser le fonctionnement de la pompe et de prévoir les problèmes potentiels. Cette approche permet aux utilisateurs d'expérimenter avec différents paramètres sans risque, tout en leur offrant une visualisation claire du fonctionnement du système.

#figure(
  image("../resources/img/pcsimu.PNG",width:60%),
 
)
