#!/usr/bin/perl
# 
#  Change the user's old password to the new in /etc/shadow 
#  Expects userID, old password, new password
#  Will only change ftp users passwords - 
#       HOG 04/25/02 It's Alive!
# ====================================================================
# Set up variables ------------
$user = "$ARGV[0]";
$oldpass = "$ARGV[1]";
$newpass = "$ARGV[2]";
$oldshadow = "/etc/shadow";
$newshadow = "/etc/.newshadow";
#
# ==== Check that there is only one of user =====
$useramount = `/usr/bin/grep -c $user /etc/shadow`;
if ($useramount != 1) { die "More or less than one"; }
#
$userinfo = `/usr/bin/grep $user /etc/shadow`;
($user1, $passwd, $epoch, $passextra) = split(/:/, $userinfo, 4);
$salt = substr($passwd,0,2);
$newsalt = join '', ('.', '/', 0..9, 'A'..'Z', 'a'..'z')[rand 64, rand 64];
#
# Put testing junk here (print variables)
#
    if (crypt($oldpass, $salt) ne $passwd) {
        # =========== FAILED - write to messages file - return error =========
        system("/usr/bin/echo \" progserver chgpwd: ERROR changing $user passwor
d\" >> /var/adm/messages");
        die "";
    } else {
        $newcrypt = crypt($newpass, $newsalt);
        $nowepoch = (time () /60 /60 /24 ) + 35;
        ($newepoch, $junk) = split(/\./, $nowepoch, 2);
        chomp($userinfo1 = "$user1:$newcrypt:$newepoch:$passextra");
        # Make a backup copy if none exists - done nightly in another script
        if (!-e "/etc/.oldshadow") { `/usr/bin/cp /etc/shadow /etc/.oldshadow` }
        &create_newfile;
        `/usr/bin/cp $newshadow $oldshadow`;
        #
    }
sub create_newfile {
        open NEWSHAD, ">$newshadow" or die "Can not open new shadow\n";
        open OLDSHAD, "<$oldshadow" or die "Can not open old shadow\n";
        while (<OLDSHAD>) {
                ($usertmp, $everythingelse) = split(/:/, $_, 2);
                if ("$usertmp" eq "$user") {
                        print NEWSHAD "$userinfo1\n";
                } else {
                        print NEWSHAD "$_";
                }
        }
                close OLDSHAD;
                close NEWSHAD;
}
