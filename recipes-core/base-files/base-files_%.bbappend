

FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

SRC_URI += " \
    file://dot.bashrc \
    file://dot.profile \
"

do_install_append(){

   install -m 0755 ${WORKDIR}/dot.profile ${D}${sysconfdir}/skel/.profile
   install -m 0755 ${WORKDIR}/dot.bashrc ${D}${sysconfdir}/skel/.bashrc

}

