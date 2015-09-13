set __fish_git_prompt_show_informative_status 1
set __fish_git_prompt_color_untrackedfiles yellow
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_branch cyan
set __fish_git_prompt_color_cleanstate green
set __fish_git_prompt_color_stagedstate white
set __fish_git_prompt_color_upstream_ahead ffb90f
set __fish_git_prompt_color_upstream_behind blue

function fish_prompt
   set_color yellow
   printf '%s' (whoami)
   set_color normal
   printf ' at '

   set_color magenta
   printf '%s' (hostname|cut -d . -f 1)
   set_color normal
   printf ' in '

   set_color $fish_color_cwd
   printf '%s' (prompt_pwd)
   set_color normal

   printf '%s' (__fish_git_prompt)

   # Line 2
   echo
   if test $VIRTUAL_ENV
       printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
   end
   printf '↪ '
   set_color normal
end
