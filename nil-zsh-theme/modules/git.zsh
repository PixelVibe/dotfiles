#!/usr/bin/env zsh

am_is_git(){
  echo -ne `plib_is_git`
}

am_git_branch(){
  echo -ne "%B%F{$nil_branch_color}`plib_git_branch`%f%b";
}

am_git_rev(){
  echo -n "%F{$nil_rev_color}`plib_git_rev`%f";
}

am_git_dirty(){
  echo -n "`plib_git_dirty`";
}

am_git_left_right(){
  echo -n "%F{$nil_left_right_color}`plib_git_left_right`%f";
}

am_git_commit_time(){
  echo -n "%F{$nil_commit_since_color}[`plib_git_commit_since`]%f"
}

am_git_rebasing(){
  if [[ `plib_is_git_rebasing` == 1 ]]; then
    echo -n "%F{$nil_error_color}${AM_GIT_REBASING_SYMBOL} %f"
  fi
}