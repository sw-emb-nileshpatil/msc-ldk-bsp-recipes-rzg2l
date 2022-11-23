do_install_append () {
        # Create destination directories
        install -d ${D}/${libdir}

        # Copy library from lib to lib64
        cp -R --no-dereference --preserve=mode,links ${D}/${nonarch_libdir}/* ${D}/${libdir}

        # Remove unnecessary lib dir
        rm -r ${D}/${nonarch_libdir}
}

