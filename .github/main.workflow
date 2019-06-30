
workflow "EditorConfig-Action" {
  on = "push"
  resolves = ["EditorConfig Audit"]
}

action "EditorConfig Audit" {
  uses = "./"
  secrets = ["GITHUB_TOKEN"]
  env = {
    EC_FIX = "false" # not yet implemented
    ALWAYS_LINT_ALL_FILES = "false"
  }
}
