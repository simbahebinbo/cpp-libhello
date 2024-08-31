function(libhello_add_library target)
    add_library(${target}
            ${ARGN}
    )
    libhello_install(${target})
endfunction()
