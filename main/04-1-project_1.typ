== Projet 1 : Commande en boucle ouverte d’un système de pompage d’eau avec composants classiques


Ce projet vise à mettre en œuvre un système de commande en boucle ouverte  pour gérer une pompe à eau , reposant uniquement sur des composants de commande classiques tels qu'un contacteur  et des boutons poussoirs  (Start/Stop). Ce système ne comporte aucune rétroaction, ce qui en fait un excellent exemple pour comprendre les bases des systèmes de commande industriels. 

Pour bien comprendre le fonctionnement global du système de pompage d’eau en boucle ouverte, il est essentiel de distinguer et d'expliquer en détail les deux circuits principaux : le circuit de puissance  et le circuit de commande . Chacun a un rôle spécifique et complémentaire dans le fonctionnement du système. 

- *1.1 Circuit de Puissance*

  #figure(
    image("../resources/img/c_psn.svg")
  )

  Le circuit de puissance est responsable de la transmission de l'énergie électrique au moteur. Il comprend :

  - *Contacteur (KM)* :
    - Interrupteur commandé à distance qui permet d'allumer ou d'éteindre le moteur.
    - Contacts de puissance (U, V, W) pour supporter les courants élevés nécessaires au fonctionnement du moteur.
    - Contacts auxiliaires pour maintenir l'alimentation après démarrage.

  - *Relais thermique* :
    - Placé en série avec le moteur pour protéger l'installation contre les surcharges de courant.
    - Coupe l'alimentation en cas de dépassement du courant nominal, évitant toute détérioration du moteur.

  - *Moteur synchrone triphasé (M)* :
    - Reçoit l'alimentation depuis les bornes du contacteur (U1, V1, W1).
    - Entraîne la pompe à eau pour pomper l'eau en continu.


- *1.2 Circuit de Commande*

  Le circuit de commande est responsable de contrôler la mise en marche et l'arrêt du moteur en agissant sur la bobine du contacteur. Il comprend :

  #figure(
    image("../resources/img/c_cmd.svg")
  )

  - *Bouton poussoir Start (NO - Normalement Ouvert)* :
    - Alimente temporairement la bobine du contacteur lorsque pressé.
    - Une fois la bobine excitée, elle ferme les contacts de puissance, allumant le moteur.

  - *Bouton poussoir Stop (NF - Normalement Fermé)* :
    - Permet le passage du courant à la bobine en position normale.
    - Coupe l'alimentation de la bobine lorsque pressé, désactivant le contacteur et arrêtant le moteur.

  - *Contact auxiliaire du contacteur (KM)* :
    - Câblé en parallèle du bouton Start pour assurer le maintien du circuit après relâchement du bouton Start.
    - Maintient l'alimentation de la bobine, permettant au moteur de continuer à fonctionner tant qu'il n'est pas arrêté explicitement.

  - *Bobine du contacteur* :
    - Reçoit l'alimentation à travers le circuit de commande.
    - Une fois excitée, elle ferme les contacts de puissance, permettant l'alimentation du moteur.

- *2. Fonctionnement du Système*

- *2.1 Démarrage du Moteur*
- Lorsque le bouton Start est appuyé :
  - La bobine du contacteur est alimentée.
  - Les contacts de puissance du contacteur se ferment, allumant le moteur.
  - Le contact auxiliaire s'active et maintient l'alimentation de la bobine, permettant au moteur de continuer à fonctionner même après relâchement du bouton Start.

- *2.2 Arrêt du Moteur*
- Pour arrêter le moteur :
  - Appuyez sur le bouton Stop.
  - Le bouton Stop coupe l'alimentation de la bobine, désactivant le contacteur et arrêtant le moteur.

- *2.3 Protection du Système*
  - Le relais thermique surveille le courant du moteur.
  - En cas de surcharge, le relais thermique coupe automatiquement l'alimentation pour éviter toute détérioration du moteur.


- *3. Caractéristiques du Système*
  - *Boucle Ouverte* :
    - Le système ne surveille ni n'ajuste automatiquement son état (par exemple, le niveau d'eau dans le réservoir).
    - La commande repose entièrement sur des actions manuelles via les boutons Start/Stop.

  - *Simplicité et Robustesse* :
    - Conception simple et économique, adaptée aux applications où une surveillance automatique n’est pas requise.
    - Les protections intégrées (relais thermique) garantissent la sécurité du système contre les surcharges.

- *4. Outils de Simulation et Modélisation*

Pour analyser et valider le fonctionnement du système, plusieurs outils ont été utilisés :

- *4.1 Cade_Simu*
  - Permet de concevoir et simuler le schéma électrique complet du système.
  - Facilite la création et la validation du circuit de puissance et de commande.

- *4.2 PC_Simu*

  #figure(
    image("../resources/img/pc1.PNG",width: 80%)
  )

  - Fournit une interface homme-machine (IHM) avec des boutons virtuels pour tester le système.
  - Simule l'interaction humaine avec le système, permettant de vérifier la logique de fonctionnement.

- *4.3 MATLAB Simulink*
  - Modélise le comportement dynamique du moteur synchrone triphasé.
  - Utilise les transformations de Clarke et Park pour simplifier l’analyse des signaux électriques et mieux comprendre la réponse du moteur.


- *5. Schéma Synthétique*
  Voici un schéma synthétique résumant les deux circuits principaux :

  #figure(
    image("../resources/img/c_final.svg")
  )

  - Le *relais thermique* protège le moteur en cas de surcharge.
  - Le *contacteur* est commandé par la *bobine*, alimentée par le *circuit de commande*.
  - Le *moteur* est alimenté par les contacts de puissance du contacteur.

- *Modélisation Simulink d'une Machine à Induction*

Ce projet vise à développer un modèle dynamique de machine à induction pour une simulation dans Simulink. Le modèle repose sur des équations fondamentales qui décrivent le comportement électrique et mécanique de la machine. Voici une présentation structurée du projet, en incluant les circuits équivalents per phase et les principaux aspects de la modélisation.


- *1. Contexte et Objectifs*

  Le but principal de ce projet est de créer un modèle Simulink capable de simuler le comportement dynamique d'une machine à induction triphasée. Ce modèle permettra d'analyser divers scénarios opérationnels, tels que le démarrage, le régime permanent et les variations de charge. La transformation de Clarke-Park est utilisée pour simplifier l'analyse en convertissant les grandeurs triphasées en un système biphasé tournant (axes d-q), facilitant ainsi la conception et la mise en œuvre des stratégies de contrôle.


- *2. Circuits Équivalents Per Phase*

#figure(
  image("../resources/img/eq_sch.svg"),
  caption: "circuit équivalent par phase"
)

  Le *circuit équivalent par phase* d'une machine à induction est une représentation simplifiée des caractéristiques électriques de la machine. C'est un outil fondamental pour comprendre le comportement de la machine. 
  
  - Le circuit est constitué de :
    - $R_s$ : Résistance du stator
    - $R_r$ : Résistance du rotor rapportée au côté stator
    - $X_"ls"$ : Réactance de fuite du stator
    - $X_lr$ : Réactance de fuite du rotor rapportée au côté stator
    - $X_m$ : Réactance magnétisante

  Ce circuit représente une phase de la machine à induction triphasée et aide à calculer des quantités telles que le courant statorique, le courant rotorique, le facteur de puissance et le couple. Cependant, il est important de noter que ce circuit est une représentation en régime permanent et ne capture pas le comportement dynamique complet de la machine.

- * 4.4 La Transformation de Clarke-Park *

La *transformation de Clarke-Park* est une transformation mathématique utilisée pour effectuer la décomposition selon les axes d-q. Elle comporte deux étapes principales :

- *4.4.1 Transformation de Clarke (Transformation αβ)*

Cette étape transforme les courants statoriques triphasés ($i_a$, $i_b$,$i_c$) en courants diphasés ($i_alpha $, $i_beta$) dans un système de référence stationnaire. Les équations de cette transformation sont :

$
i_alpha &= frac(2,3) i_a - frac(1,3) i_b - frac(1,3) i_c \
i_beta &= frac(1,sqrt(3)) i_b - frac(1,sqrt(3)) i_c
$

- * 4.4.2 Transformation de Park (Transformation dq) *

Cette étape transforme ensuite les courants diphasés ($i_alpha$, $i_beta$) du système de référence stationnaire vers un système de référence tournant aligné avec le flux rotorique. Ce système de référence tournant est appelé le *système d-q*. Les équations de cette transformation sont :

$
i_d &= i_alpha cos(theta) + i_beta sin(theta) \
i_q &= -i_alpha sin(theta) + i_beta cos(theta)
$

où $theta$ est l'angle entre le système de référence stationnaire et le système de référence tournant.

La *transformation de Clarke-Park* est cruciale car elle facilite la décomposition selon les axes d-q, convertissant les quantités alternatives variables dans le temps en quantités continues dans le système de référence tournant. Cela simplifie la conception du système de contrôle, ce qui facilite la mise en œuvre de stratégies de contrôle.

- * Décomposition selon les Axes d-q*

  La décomposition selon les axes d-q  est une technique utilisée pour transformer les variables triphasées (tensions, courants et flux) d'une machine à courant alternatif en un système orthogonal biphasé tournant à la vitesse synchrone. Cette transformation simplifie l'analyse et le contrôle de la machine.

#figure(
  image("../resources/img/sch_eq_pc_trf.svg")
)

- * 2.1 Circuit Équivalent du Axe d *

  Le circuit équivalent du axe d représente les composantes liées à la production de flux. Les principales caractéristiques sont :

  - *Résistance du stator ($R_s $)* : Représente la résistance des bobinages du stator.
  - *Réactance de fuite du stator ($L_"ls" $)* : Correspond aux pertes de flux qui ne couplent pas efficacement avec le rotor.
  - *Inductance mutuelle ($L_m $)* : Représente le couplage magnétique entre le stator et le rotor.
  - *Résistance du rotor ($R_r $)* : Représente la résistance des bobinages ou barres du rotor.
  - *Réactance de fuite du rotor ($L_"lr"$)* : Correspond aux pertes de flux dues au rotor.
  - *Vitesse synchrone ($omega_s $)* : Vitesse théorique de rotation du champ statorique.
  - *Fréquence de glissement ($omega_s - omega_r$)* : Différence entre la vitesse synchrone et la vitesse réelle du rotor.

  - *Équation de Boucle du Axe d*
  L'équation de boucle du axe d est donnée par :
  $ v_"ds" - i_"ds" R_s + omega_s Phi_"qs" - L_"ls" frac(d i_"ds", "dt" ) - L_m frac(d(i_"ds" + i_"dr"),"dt") = 0 $

  En simplifiant en termes de flux :
  $ v_"ds" - i_"ds" R_s + omega_s Phi_"qs" - frac(d Phi_"ds","dt") = 0 $

  Isoler la dérivée du flux :
  $ frac(d Phi_"ds" ,"dt") = v_"ds" - i_"ds" R_s - omega_s Phi_"qs" $

- *2.2 Circuit Équivalent du Axe q*
Le circuit équivalent du axe q représente les composantes liées à la production de couple. Les principales caractéristiques sont similaires à celles du circuit du axe d, mais orientées vers la production de couple.

- *Équation de Boucle du Axe q*
L'équation de boucle du axe q est donnée par :
$ v_"qs" - i_"qs" R_s - L_"ls" frac("di"_"qs", "dt") - L_m frac(d(i_"qs" + i_"qr"),"dt") + omega_s Phi_"ds" = 0 $

En simplifiant en termes de flux :
$ frac(d Phi_"qs" ,"dt") = v_"qs" - i_"qs" R_s + omega_s Phi_"ds" $

- *2.3 Relations entre Flux et Courants*
Les relations entre les flux et les courants sont données par :

- *Flux du axe q du stator* :
  $ Phi_"qs" = (i_"qs" + i_"qr") L_m + i_"qs" L_"ls" $

- *Flux du axe d du stator* :
  $ Phi_"sd" = (i_"ds" + i_"dr") L_m + i_"ds" L_"ls" $

- *Flux du axe q du rotor* :
  $ Phi_"rq" = (i_"qs" + i_"qr") L_m + i_"qr" L_lr $

- *Flux du axe d du rotor* :
  $ Phi_"rd" = (i_"ds" + i_"dr") L_m + i_"dr" L_lr $

- *2.4 Courants du Stator et du Rotor*
À partir des expressions de flux, on peut dériver les courants :

- *Courant du axe q du stator* :
  $ i_"qs" = frac(Phi_"qs" - L_m i_"qr",L_m + L_"ls") $

- *Courant du axe d du stator* :
  $ i_"ds" = frac( Phi_"sd" - L_m i_"dr", L_m + L_"ls") $

- *Courant du axe q du rotor* :
  $ i_"qr" = frac(Phi_"rq" - L_m i_"qs", L_m + L_lr) $

- *Courant du axe d du rotor* :
  $ i_"dr" = frac(Phi_"rd" - L_m i_"ds",L_m + L_lr) $


- *3. Torque Électromécanique*

Le torque électromécanique peut être exprimé en fonction des courants du stator et du rotor :

$ T_e = frac(3P,2) (i_"qs" (i_"ds" + i_"dr") L_m + i_"ds" (i_"qs" + i_"qr") L_m) $


- *4. Évolution de la Vitesse et de la Position du Rotor*

La variation de la vitesse du rotor est donnée par :

$ frac(d omega_r, "dt") = frac(T_e - D omega_r - T_L,J) $

où :
  - $omega_r $ : Vitesse angulaire du rotor en $"rad"/s$
  - $T_e $ : Torque électromécanique en $"Nm"$
  - $D$ : Frottement total en $"Nm"/("rad"/s) $
  - $T_L $ : Couple de charge en $"Nm"$
  - $J $ : Inertie mécanique totale en $"kg m"^2 $

- *Implémentation dans Simulink : Simulation de la Machine à Induction*

La simulation de la machine à induction dans Simulink est réalisée en utilisant un modèle dynamique basé sur les équations d'état et les transformations de Clarke-Park. Le schéma ci-dessous illustre l'implémentation du modèle dans Simulink, avec une structure modulaire qui permet de représenter les interactions entre le stator, le rotor et le système mécanique.

#figure(
  image("../resources/img/matlab_sys.png"),
)

- *1. Structure Générale du Modèle*

Le modèle Simulink est divisé en plusieurs sections principales :

1. *Entrée des Signaux* :
   - Les signaux d'entrée comprennent les tensions triphasées ($V_"s abc"$) et la vitesse synchrone ($omega_t$).
   - Ces signaux sont convertis en référentiel d-q (dq0) via une transformation abc → dq0.

2. *Calcul des Flux et Courants* :
   - Les flux statoriques ($Phi_"s dq"$) et rotoriques ($Phi_"r dq"$) sont calculés à partir des courants statoriques ($i_"s dq"$) et rotoriques ($i_"r dq"$) ainsi que des paramètres de la machine (inductances mutuelles $L_m$, réactances de fuite $L_"ls"$ et $L_lr$).
   - Les courants sont ensuite dérivés à partir des flux en utilisant les relations entre flux et courants.

3. *Calcul du Couple Électromagnétique* :
   - Le couple électromagnétique ($T_e$) est calculé à partir des courants statoriques et rotoriques dans le référentiel d-q.
   - Cette étape utilise les inductances mutuelles pour lier les courants aux couples.

4. *Système Mécanique* :
   - Le couple électromagnétique est transmis au système mécanique, qui inclut l'inertie du rotor ($J$), la friction ($D$) et le couple de charge ($T_L$).
   - La vitesse du rotor ($omega_r$) et la position du rotor ($theta_r$) sont calculées en intégrant les équations mécaniques.

5. *Transformation des Sorties* :
   - Les courants statoriques et rotoriques en référentiel d-q peuvent être transformés en référentiel abc si nécessaire, pour une analyse triphasée.


- *2. Description Détailée des Blocs*

- *2.1 Entrée des Signaux*

#figure(
  image("../resources/img/abc_dq0.png"),
)

- *abc → dq0* : Ce bloc convertit les tensions triphasées ($V_"s abc"$) et la vitesse synchrone ($omega_t$) en référentiel d-q (dq0). Cette transformation est essentielle pour simplifier l'analyse dynamique de la machine.

- *2.2 Calcul des Flux Statoriques*
#figure(
  image("../resources/img/Stator_Flux.png")
)
- *Stator Flux* : Ce bloc calcule les flux statoriques ($Phi_"s dq"$) à partir des courants statoriques ($i_"s dq"$) et des paramètres de la machine (inductances mutuelles $L_m$ et réactance de fuite statorique $L_"ls"$).

- *2.3 Calcul des Flux Rotoriques*
#figure(
  image("../resources/img/Rotor_Flux.png")
)
- *Rotor Flux* : Ce bloc calcule les flux rotoriques ($Phi_"r dq"$) à partir des courants rotoriques ($i_"r dq"$) et des paramètres de la machine (inductances mutuelles $L_m$ et réactance de fuite rotorique $L_lr$).

- *2.4 Conversion Flux → Courants*
- *Fluxes à Courants* : Ce bloc convertit les flux statoriques et rotoriques en courants statoriques et rotoriques en utilisant les relations entre flux et courants :
  $ i_"s  dq" = frac(Phi_"s dq" - L_m i_"r dq",L_m + L_"ls") $

  #figure(
    image("../resources/img/is_d.png")
  )

#pagebreak()

  $ i_"r  dq" = frac(Phi_"r dq" - L_m i_"s dq",L_m + L_lr) $
  
  #figure(
    image("../resources/img/ir_d.png")
  )

- *2.5 Calcul du Couple Électromagnétique*
- *EM Torque* : Ce bloc calcule le couple électromagnétique (\( T_e \)) à partir des courants statoriques et rotoriques dans le référentiel d-q :
  $ T_e = frac(3P,2) (i_"qs" (i_"ds" + i_"dr") L_m + i_"ds" (i_"qs" + i_"qr") L_m) $

  #figure(
    image("../resources/img/EM_Torque.png")
  )

- *2.6 Système Mécanique*
- *Mechanical System* : Ce bloc simule le comportement mécanique du rotor, en tenant compte de l'inertie ($J$), de la friction ($D$) et du couple de charge ($T_L$). La vitesse du rotor ($omega_r$) est calculée en résolvant l'équation :

#pagebreak()

  $ frac(d omega_r, "dt") = frac(T_e - D omega_r - T_L,J) $
  #figure(
    image("../resources/img/Mechanical_System.png")
  )
  La position du rotor ($theta_r $) est obtenue par intégration de la vitesse :
  $ theta_r = integral omega_r  "dt" $

- *2.7 Transformation des Sorties*
- *dq → abc* : Si nécessaire, les courants statoriques et rotoriques en référentiel d-q peuvent être transformés en référentiel abc pour une analyse triphasée.

#figure(
    image("../resources/img/dq_to_abc1.png")
  )

- *3. Connexions et Signaux Principaux*

  - *Entrées* :
    - Tensions triphasées ($V_"s abc"$)
    - Vitesse synchrone ($omega_t$)
#pagebreak()
  - *Sorties* :
    - Courants statoriques et rotoriques ($i_"s dq"$, $i_"r dq"$)
#figure(
        image("../resources/img/I_S_I_R.svg",width: 80%)
      )
    - Flux statoriques et rotoriques ($Phi_"s dq"$, $Phi_"r  dq"$)
#figure(
        image("../resources/img/Phi.svg",width: 80%)
      )
    - Couple électromagnétique ($T_e$)
#figure(
  image("../resources/img/Torque.svg",width: 80%)
)
    - Vitesse et position du rotor ($omega_r$, $theta_r$)

#figure(
  image("../resources/img/speed.svg",width: 80%)
)