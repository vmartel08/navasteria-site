#import "/.calepin/calepin.typ" as calepin

#set document(title: [Welcome to Navasteria])
#metadata((title: "Home", translation_key: "home")) <website-metadata>

#calepin.setup(
  echo: true,
  eval: true,
  results: "verbatim",
  fenced-chunks: true,
)

#let target = sys.inputs.at("calepin-target", default: "paged")

#show: body => {
  if target == "html" {
    body
  } else {
    set page(columns: 2)
    body
  }
}

#title()

Website under development.
