package App::DistUtils;

our $DATE = '2014-12-12'; # DATE
our $VERSION = '0.03'; # VERSION

use 5.010001;
use strict;
use warnings;

use Dist::Util ();

our $_complete_dist = sub {
    require Complete::Util;

    my %args = @_;

    my $word = $args{word} // '';
    $word =~ s!/|::!-!g;
    Complete::Util::complete_array_elem(
        word=>$word,
        array=>[Dist::Util::list_dists()],
        ci=>1,
    );
};

1;
# ABSTRACT: Collection of utilities related to Perl distributions

__END__

=pod

=encoding UTF-8

=head1 NAME

App::DistUtils - Collection of utilities related to Perl distributions

=head1 VERSION

This document describes version 0.03 of App::DistUtils (from Perl distribution App-DistUtils), released on 2014-12-12.

=head1 SYNOPSIS

This distribution provides several command-line utilities related to
Perl distributions.

=head1 SEE ALSO

L<Dist::Util>

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/App-DistUtils>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-App-DistUtils>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=App-DistUtils>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
