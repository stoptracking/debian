my $VERSION = "1.3.0";
	foreach (@less_char_vars) {
		return $ENV{$_} if defined $ENV{$_};
	return "";
	my $less_charset = get_less_charset();
			$line              = $add_line_color . $line . $reset_color;
			$line                 = $remove_line_color . $line . $reset_color;
git config --global core.pager \"diff-so-fancy | less --tabs=4 -RFX\"\n";