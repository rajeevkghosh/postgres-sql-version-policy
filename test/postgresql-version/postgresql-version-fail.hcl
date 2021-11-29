module "tfplan-functions" {
  source = "../../tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-postgresql-version-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}