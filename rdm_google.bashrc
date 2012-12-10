# Script to display numbered directories, truncated to fit screen.
alias d='. ~/bin/dirs-good.bash'

# Script to push directories onto stack.
# MAX_DIR_STACK_SIZE truncates the stack, if necessary. Unset for
# no truncation.
alias cd='. $HOME/bin/cd-pushd.bash'
MAX_DIR_STACK_SIZE=10

# Added to get the last good CL from gws. From:
# https://wiki.corp.google.com/twiki/bin/view/Main/GwsHowToSetupYourEnvironment
# Prints last stable build of specified project in TAP
function stable() {
  /google/data/ro/projects/testing/tap/scripts/last_green_cl.par --project=$1
}
