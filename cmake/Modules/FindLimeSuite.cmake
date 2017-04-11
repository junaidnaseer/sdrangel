# Find Lime Suite

FIND_PATH(LIMESUITE_INCLUDE_DIR lime/LimeSuite.h)

IF (LIMESUITE_INCLUDE_DIR AND LIMESUITE_LIBRARY)
    SET(LIMESUITE_FOUND TRUE)
ENDIF (LIMESUITE_INCLUDE_DIR AND LIMESUITE_LIBRARY)

IF (LIMESUITE_FOUND)
    IF (NOT LimeSuite_FIND_QUIETLY)
        MESSAGE (STATUS "Found Lime Suite: ${LIMESUITE_INCLUDE_DIR}, ${LIMESUITE_LIBRARY}")
    ENDIF (NOT LimeSuite_FIND_QUIETLY)
ELSE (LIMESUITE_FOUND)
    IF (LimeSuite_FIND_REQUIRED)
        MESSAGE (FATAL_ERROR "Could not find Lime Suite")
    ENDIF (LimeSuite_FIND_REQUIRED)
ENDIF (LIMESUITE_FOUND)

mark_as_advanced(LIMESUITE_INCLUDE_DIR LIMESUITE_LIBRARY)