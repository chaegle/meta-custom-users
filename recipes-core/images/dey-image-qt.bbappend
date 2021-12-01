#
# Add a few users to the rootfs
#

inherit extrausers


# Adds groups 'asgardians' and 'avengers'
# Create user 'loki' 
# Use mkpasswd to generate a hash for odin's password (ragnarok)
# MD5 Hash password ('ragnarok') for user thor 
# Add odin, thor and loki to asgardians group
# Delete user loki
# Delete group 'avengers'
EXTRA_USERS_PARAMS += "\
     groupadd asgardians;             \
     groupadd avengers;               \
     useradd -P password loki;        \
     useradd -p Z3rvTM3i4XtsM odin;   \
     useradd thor;                    \
     usermod -p '\$1\$6K1m5WZa\$sGS0IeHClGNFyjIsAXK081' thor; \ 
     usermod -a -G asgardians odin;   \
     usermod -a -G asgardians thor;   \
     usermod -a -G asgardians loki;   \
     usermod -a -G avengers thor;     \
     userdel loki;                    \
     groupdel avengers;               \
     "

