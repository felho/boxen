class people::felho::git_config {
  git::config::global { 'user.email':
    value  => 'felho@ustream.tv'
  }

  git::config::global { 'user.name':
    value  => 'felho'
  }

  git::config::global { 'color.ui':
    value  => 'true'
  }

  git::config::global { 'push.default':
    value  => 'upstream'
  }

  git::config::global { 'core.autocrlf':
    value  => 'input'
  }

  git::config::global { 'core.safecrlf':
    value  => 'true'
  }

  git::config::global { 'alias.hist':
    value  => 'log --pretty=format:\'%h %ad | %s%d [%an]\' --graph --date=short'
  }

  git::config::global { 'alias.type':
    value  => 'cat-file -t'
  }

  git::config::global { 'alias.dump':
    value  => 'cat-file -p'
  }

  git::config::global { 'alias.who':
    value  => 'shortlog -s --'
  }

  git::config::global { 'alias.ss':
    value  => 'stash save'
  }

  git::config::global { 'alias.sl':
    value  => 'stash list'
  }

  git::config::global { 'alias.sshow':
    value  => '"!f() { git stash show stash^{/$*} -p; }; f"'
  }

  git::config::global { 'alias.sa':
    value  => '"!f() { git stash apply stash^{/$*}; }; f"'
  }

  git::config::global { 'alias.ls':
    value  => 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate'
  }

  git::config::global { 'alias.ll':
    value  => 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat'
  }

  git::config::global { 'alias.lnc':
    value  => 'log --pretty=format:"%h\\ %s\\ [%cn]"'
  }

  git::config::global { 'alias.lds':
    value  => 'log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
  }

  git::config::global { 'alias.ld':
    value  => 'log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=relative'
  }

  git::config::global { 'alias.le':
    value  => 'log --oneline --decorate'
  }

  git::config::global { 'alias.fl':
    value  => 'log -u'
  }

  git::config::global { 'alias.dl':
    value  => '"!git ll -1"'
  }

  git::config::global { 'alias.dlc':
    value  => 'diff --cached HEAD^'
  }

  git::config::global { 'alias.dr':
    value  => '"!f() { git diff "$1"^.."$1"; }; f"'
  }

  git::config::global { 'alias.lc':
    value  => '"!f() { git ll "$1"^.."$1"; }; f"'
  }

  git::config::global { 'alias.diffr':
    value  => '"!f() { git diff "$1"^.."$1"; }; f"'
  }

  git::config::global { 'alias.f':
    value  => '"!git ls-files | grep -i"'
  }

  git::config::global { 'alias.gra':
    value  => '"!f() { A=$(pwd) && TOPLEVEL=$(git rev-parse --show-toplevel) && cd $TOPLEVEL && git grep --full-name -In $1 | xargs -I{} echo $TOPLEVEL/{} && cd $A; }; f"'
  }

  git::config::global { 'alias.la':
    value  => '"!git config -l | grep alias | cut -c 7-"'
  }

  git::config::global { 'alias.done':
    value  => '"!f() { git branch | grep "$1" | cut -c 3- | grep -v done | xargs -I{} git branch -m {} done-{}; }; f"'
  }

  git::config::global { 'alias.ours':
    value  => '"!f() { git co --ours $@ && git add $@; }; f"'
  }

  git::config::global { 'alias.theirs':
    value  => '"!f() { git co --theirs $@ && git add $@; }; f"'
  }

  git::config::global { 'alias.ci':
    value  => 'commit'
  }

  git::config::global { 'alias.r':
    value  => 'reset'
  }

  git::config::global { 'alias.r1':
    value  => 'reset HEAD^'
  }

  git::config::global { 'alias.r2':
    value  => 'reset HEAD^^'
  }

  git::config::global { 'alias.rh':
    value  => 'reset --hard'
  }

  git::config::global { 'alias.rh1':
    value  => 'reset HEAD^ --hard'
  }

  git::config::global { 'alias.rh2':
    value  => 'reset HEAD^^ --hard'
  }
}