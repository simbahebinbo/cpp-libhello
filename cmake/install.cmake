include(GNUInstallDirs)

function(libhello_install targets)
    install(TARGETS ${targets} EXPORT libhelloTargets
            LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
            ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
            RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
            INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
            PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
            FRAMEWORK DESTINATION ${CMAKE_INSTALL_PREFIX}
    )
endfunction()

install(
        DIRECTORY ${CMAKE_SOURCE_DIR}/include/libhello
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}
)
install(
        EXPORT libhelloTargets
        DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/libhello
        NAMESPACE hello::
)
if (EXPOSE_MOCKS)
    install(
            DIRECTORY ${CMAKE_SOURCE_DIR}/test/mock/libhello
            DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/mock
    )
endif ()
