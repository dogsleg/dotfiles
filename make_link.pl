#!/usr/bin/perl

#######################################################################
# make_link -- copy file to the current directory and make a link to it
#######################################################################
# Copyright (C) 2019 Lev Lamberov <dogsleg@debian.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#######################################################################

use warnings;
use strict;
use autodie;

use Cwd qw/abs_path cwd/;
use File::Basename 'fileparse';
use File::Copy 'copy';

die "Provide a path to your file" unless ($ARGV[0]);
die "Path does not exist or is not a file" unless -f $ARGV[0];

my $abs_path = abs_path($ARGV[0]);
print("[INFO] Absolute path: " . $abs_path . "\n");

my $cur_dir = cwd();
print("[INFO] Current directory: " . $cur_dir . "\n");

die "File is not readable" unless -r $abs_path;

my $filename = fileparse($abs_path, qr/\.[^.]*/);
my $target = $cur_dir . "/" . $filename;
print("[INFO] Target file: " . $target . "\n");

die "File already exists in the current directory" if -e $target;
copy $abs_path, $cur_dir;
unlink $abs_path;
symlink $target, $abs_path;
