= projet : d’un Entraînement Électrique par Variateur de Fréquence (VFD).
 Ce projet porte sur la modélisation et la simulation d’un système d’entraînement à vitesse variable basé sur un variateur de fréquence (VFD – Variable Frequency Drive), utilisé pour alimenter et contrôler une machine asynchrone triphasée. La machine asynchrone, largement utilisée dans l’industrie pour sa robustesse et son faible coût, nécessite une régulation précise de sa vitesse et de son couple pour répondre aux exigences dynamiques des applications modernes.

La simulation a été réalisée à l’aide de MATLAB/Simulink, un environnement puissant pour l’analyse des systèmes dynamiques. Le modèle développé inclut une source d’alimentation haute tension (25 kV, 60 Hz), un transformateur abaisseur (25 kV / 460 V), un VFD pour la régulation de la fréquence de sortie, ainsi qu’une charge mécanique dépendant de la vitesse de rotation du rotor. Ce montage permet de visualiser l’impact des variations de fréquence sur la réponse du moteur, notamment en termes de vitesse, de couple électromagnétique, et de performance énergétique.

Ce projet a permis de mieux comprendre le fonctionnement interne d’un VFD, sa structure de commande, ainsi que l’interaction complexe entre la fréquence d’alimentation, la tension, et la réponse dynamique du moteur. Il constitue une base solide pour la conception de systèmes de commande avancés destinés aux moteurs industriels.
=  Simulation d’un Entraînement Électrique par Variateur de Fréquence dans MATLAB/Simulink.

Dans le cadre de ce travail pratique, une simulation a été réalisée sous MATLAB/Simulink afin d’étudier le comportement d’une machine asynchrone triphasée alimentée par un variateur de fréquence (VFD – Variable Frequency Drive). Le système étudié vise à démontrer l’influence du VFD sur la vitesse de rotation et le couple développé par la machine, tout en reproduisant un scénario réaliste d'alimentation électrique industrielle.
#figure(
  image("../resources/img/VFD.png",width:110%),
  caption: "simulation de la machine asynchrone avec VFD"
)
Le montage global du système peut être décomposé en plusieurs blocs fonctionnels, chacun jouant un rôle précis dans la chaîne d’alimentation et de commande :

== *Source d’alimentation triphasée (25 kV, 60 Hz, 10 MVA)*
Cette source représente une alimentation haute tension typique d’un réseau électrique. Elle fournit une tension sinusoïdale triphasée utilisée comme entrée pour le transformateur.
== *Transformateur abaisseur (25 kV / 460 V, 50 kVA)*
Ce transformateur permet de réduire la tension de 25 kV à une tension plus adaptée (460 V) pour l’alimentation du VFD. Il utilise un couplage Δ , où le côté primaire est mis à la terre pour la sécurité, tandis que le côté secondaire en triangle assure un équilibrage efficace des charges.
== *Variateur de fréquence (VFD)*
Le VFD est le cœur du système de commande. Il reçoit une tension triphasée fixe (460 V) et une fréquence de commande (ici fixée à 50 Hz). En sortie, il génère une tension et une fréquence variables qui alimentent directement la machine asynchrone. Il permet ainsi de contrôler précisément la vitesse de rotation du moteur
#figure(
  image("../resources/img/vfd1.png",width:90%),
  caption: "simulation de  VFD"
)
== *Machine asynchrone triphasée à cage*
La machine reçoit la tension triphasée variable du VFD. Elle convertit l’énergie électrique en énergie mécanique, produisant ainsi un couple sur l’arbre moteur. La simulation permet de mesurer la vitesse angulaire du rotor (wm) et d’étudier sa réponse dynamique.

L’ensemble de cette simulation constitue une plateforme pédagogique efficace pour comprendre le rôle fondamental des VFD dans la commande de moteurs asynchrones. Elle permet également d’explorer l’impact des paramètres électriques sur les performances mécaniques de la machine, tout en illustrant les principes d’interconnexion entre les différents composants d’un système industriel d’entraînement électrique.

