connection: "@{CONNECTION_NAME}"
include: "//@{CONFIG_PROJECT_NAME}/*.explore"
include: "/@{DIALECT}/*explore"
include: "*.dashboard"


explore: census_fast_facts {
  hidden: no
  extends: [census_fast_facts_config]
}
