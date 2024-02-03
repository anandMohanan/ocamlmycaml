(lang dune 3.12)

(name ocamlmycaml)

(generate_opam_files true)

(source
 (github anandMohanan/ocamlmycaml))

(authors "anand")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name ocamlmycaml)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
