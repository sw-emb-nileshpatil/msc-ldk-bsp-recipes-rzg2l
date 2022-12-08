PR = "2.12.1.${INC_PR}"
SRCREV = "2a87277fa5c037b7c706f8acbaedcefb9e27feee"

do_install_append () {
        # Create destination directories
        install -d ${D}/${libdir}

        # Copy library from lib to lib64
        cp -R --no-dereference --preserve=mode,links ${D}/${nonarch_libdir}/* ${D}/${libdir}

        # Remove unnecessary lib dir
        rm -r ${D}/${nonarch_libdir}
}

