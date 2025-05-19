//-------------------------------------
// Document options
//
#let option = (
  type : "final",
  //type : "draft",
  //lang : "en",
  //lang : "de",
  lang : "fr",
)
//-------------------------------------
// Optional generate titlepage image
//
#import "@preview/fractusist:0.1.1":*  // only for the generated images

#let titlepage_logo= dragon-curve(
  9,
  step-size: 9,
  stroke-style: stroke(
    //paint: gradient.linear(..color.map.rocket, angle: 135deg),
    paint: gradient.radial(..color.map.rocket),
    thickness: 3pt, join: "round"),
  height: 10cm,
)

//-------------------------------------
// Metadata of the document
//
#let doc= (
  title    : [*Rapport pour electrotichnique*],
  abbr     : "Prj",
  subtitle : [Techniques de contrôle électrique : Systèmes traditionnels à relais et systèmes PLC et VFD],
  //url      : "https://synd.hevs.io",
  logos: (
    //tp_topleft  : image("logo-TR-2-1.png", height: 1.2cm),
    tp_topright : image("resources/img/logo.png", height: 2.5cm),
    tp_main     : titlepage_logo,
    //header      : image("resources/img/project-logo.svg", width: 2.5cm),
  ),
  authors: (
    (
      name        : "Souhail Chahmout",
      abbr        : "SCh",
      email       : "chahmot.s@gmail.com",
    ),
    (
      name        : "Omar mansouri",
      abbr        : "OmM",
      email       : "axel.amand@hevs.ch",
    ),
  ),
  school: (
    name        : "FP Larache",
    major       : "Master GESE",
  ),
  course: (
    name     : "electrotichnique",
    prof     : "PR. MRABTI TARIK",
    semester : "Semester 2024 2025",
  ),
  keywords : ("Typst", "Template", "Report", "HEI-Vs", "Systems Engineering", "Infotronics"),
  version  : "v0.1.0",
)

#let date= datetime.today()

//-------------------------------------
// Settings
//
#let tableof = (
  toc: true,
  tof: false,
  tot: false,
  tol: false,
  toe: false,
  maxdepth: 3,
)

#let gloss    = true
#let appendix = false
#let bib = (
  display : true,
  path  : "/tail/bibliography.bib",
  style : "ieee", //"apa", "chicago-author-date", "chicago-notes", "mla"
)
