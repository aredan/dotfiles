local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host='%{$terminfo[bold]$fg[green]%}%n%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}`shrink_path -f` %{$reset_color%}'
#local current_dir='${shrink_path PWD/#$HOME/~}'
local rvm_ruby='%{$fg[red]%}$(ruby_prompt_info)%{$reset_color%}'
local git_branch='%{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'

PROMPT=" ${user_host} in ${current_dir} ${rvm_ruby}
${git_branch} %B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
