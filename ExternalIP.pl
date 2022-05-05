#!/usr/bin/perl 
 
# get HTML file with external IP address 
system ("wget -q http://ipchicken.com"); 
open(FILE, '<index.html') || die("Could not open file!"); 
 
print "Your IP Address is: "; 
 
@raw_data=<FILE>; 
foreach (@raw_data) { 
	if (/((\d{1,3})(\.)){3}\d{1,3}/) { 
	s/[^0-9.]*//g; 
	print "$_\n"; 
	} 
 } 
# removing index.html 
system ("rm index.html");
