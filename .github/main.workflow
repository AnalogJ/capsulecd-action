## Workflow defines what we want to call a set of actions.
workflow "CapsuleCD Release" {
  ## On pull_request defines that whenever a pull request event is fired this
  ## workflow will be run.
  on = "issues"

  ## What is the ending action (or set of actions) that we are running.
  ## Since we can set what actions "need" in our definition of an action,
  ## we only care about the last actions run here.
  resolves = ["capsulecd packager"]
}

action "capsulecd packager" {
  uses = "docker://analogj/capsulecd:"
}