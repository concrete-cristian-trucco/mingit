source /usr/share/bash-completion/completions/git
# custom git completions 
_git_a ()
{
    _git_add
}
_git_b ()
{
    _git_branch
}
_git_c ()
{
    _git_commit
}
_git_co () 
{
    _git_checkout 
}
_git_d ()
{
    _git_diff
}
_git_i ()
{
    _git_init
}
_git_m ()
{
    _git_merge
}
_git_pll ()
{
    _git_pull
}
_git_psh ()
{
    _git_push
}

# git alias land
complete -o default -F _git g
g()
{
	arg1=$1
	shift
	case "$arg1" in
		a)
			eval git add $@;;
		b)
			eval git branch $@;;
		c)
			eval git commit -m \"$1\";;
		co)
			eval git checkout $@;;
		d)
			eval git diff $@;;
		i)
			eval git init $@;;
		m)
			eval git merge $@;;
		pll)
			eval git pull $@;;
		psh)
			eval git push $@;;
		s)
			eval git status $@;;
		*)
			eval git $arg1 $@;;
	esac
}
