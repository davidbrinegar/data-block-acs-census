project_name: "acs-demographic-data"

################ Constants ##################

constant: CONFIG_PROJECT_NAME {
  value: "data-block-acs-census-config"
  export: override_optional
}

constant: CONNECTION_NAME {
  value: "brick-layer"
  export: override_optional
}

constant: DIALECT {
  value: "bigquery"
  export: override_optional
}


################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
