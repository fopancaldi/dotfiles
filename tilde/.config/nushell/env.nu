$env.EDITOR = 'nvim'
$env.MANPAGER = 'nvim +Man!'

$env.CARAPACE_BRIDGES = 'bash'
mkdir $"($nu.cache-dir)"
carapace _carapace nushell | save --force $"($nu.cache-dir)/carapace.nu"
