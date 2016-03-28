#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Compute the installation prefix relative to this file.
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtksys" for configuration "Release"
SET_PROPERTY(TARGET vtksys APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtksys PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtksys-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ws2_32;Psapi"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtksys-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtksys )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtksys "${_IMPORT_PREFIX}/lib/vtksys-6.1.lib" "${_IMPORT_PREFIX}/bin/vtksys-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonCore" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonCore-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonCore "${_IMPORT_PREFIX}/lib/vtkCommonCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonMath" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonMath APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonMath PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonMath-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonMath-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonMath )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonMath "${_IMPORT_PREFIX}/lib/vtkCommonMath-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonMath-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonMisc" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonMisc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonMisc PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonMisc-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonMath"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonMisc-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonMisc )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonMisc "${_IMPORT_PREFIX}/lib/vtkCommonMisc-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonMisc-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonSystem" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonSystem APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonSystem PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonSystem-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonSystem-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonSystem )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonSystem "${_IMPORT_PREFIX}/lib/vtkCommonSystem-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonSystem-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonTransforms" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonTransforms APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonTransforms PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonTransforms-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonCore;vtkCommonMath"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonTransforms-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonTransforms )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonTransforms "${_IMPORT_PREFIX}/lib/vtkCommonTransforms-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonTransforms-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonDataModel" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonDataModel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonDataModel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonDataModel-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonMath;vtkCommonMisc;vtkCommonSystem;vtkCommonTransforms"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonDataModel-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonDataModel )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonDataModel "${_IMPORT_PREFIX}/lib/vtkCommonDataModel-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonDataModel-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonColor" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonColor APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonColor PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonColor-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonColor-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonColor )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonColor "${_IMPORT_PREFIX}/lib/vtkCommonColor-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonColor-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonExecutionModel" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonExecutionModel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonExecutionModel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonExecutionModel-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonExecutionModel-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonExecutionModel )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonExecutionModel "${_IMPORT_PREFIX}/lib/vtkCommonExecutionModel-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonExecutionModel-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersCore" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersCore-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkCommonMath;vtkCommonMisc;vtkCommonSystem;vtkCommonTransforms"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersCore "${_IMPORT_PREFIX}/lib/vtkFiltersCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkCommonComputationalGeometry" for configuration "Release"
SET_PROPERTY(TARGET vtkCommonComputationalGeometry APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkCommonComputationalGeometry PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkCommonComputationalGeometry-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonMath;vtkCommonSystem"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkCommonComputationalGeometry-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkCommonComputationalGeometry )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkCommonComputationalGeometry "${_IMPORT_PREFIX}/lib/vtkCommonComputationalGeometry-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkCommonComputationalGeometry-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersGeneral" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersGeneral APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersGeneral PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersGeneral-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonComputationalGeometry;vtkFiltersCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersGeneral-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersGeneral )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersGeneral "${_IMPORT_PREFIX}/lib/vtkFiltersGeneral-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersGeneral-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingCore" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingCore-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkCommonMath;vtkCommonSystem;vtkCommonTransforms"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingCore "${_IMPORT_PREFIX}/lib/vtkImagingCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingFourier" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingFourier APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingFourier PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingFourier-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingFourier-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingFourier )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingFourier "${_IMPORT_PREFIX}/lib/vtkImagingFourier-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingFourier-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkalglib" for configuration "Release"
SET_PROPERTY(TARGET vtkalglib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkalglib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkalglib-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkalglib-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkalglib )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkalglib "${_IMPORT_PREFIX}/lib/vtkalglib-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkalglib-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersStatistics" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersStatistics APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersStatistics PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersStatistics-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkCommonMath;vtkCommonMisc;vtkCommonTransforms;vtkImagingFourier;vtkalglib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersStatistics-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersStatistics )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersStatistics "${_IMPORT_PREFIX}/lib/vtkFiltersStatistics-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersStatistics-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersExtraction" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersExtraction APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersExtraction PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersExtraction-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkFiltersCore;vtkFiltersGeneral;vtkFiltersStatistics"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersExtraction-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersExtraction )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersExtraction "${_IMPORT_PREFIX}/lib/vtkFiltersExtraction-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersExtraction-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkInfovisCore" for configuration "Release"
SET_PROPERTY(TARGET vtkInfovisCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkInfovisCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkInfovisCore-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonSystem;vtkFiltersExtraction;vtkFiltersGeneral"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkInfovisCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkInfovisCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkInfovisCore "${_IMPORT_PREFIX}/lib/vtkInfovisCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkInfovisCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersGeometry" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersGeometry APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersGeometry PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersGeometry-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersGeometry-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersGeometry )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersGeometry "${_IMPORT_PREFIX}/lib/vtkFiltersGeometry-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersGeometry-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersSources" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersSources APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersSources PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersSources-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonComputationalGeometry;vtkFiltersGeneral"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersSources-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersSources )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersSources "${_IMPORT_PREFIX}/lib/vtkFiltersSources-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersSources-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingCore" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingCore-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkFiltersSources;vtkFiltersGeometry;vtkFiltersExtraction;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkCommonTransforms"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingCore "${_IMPORT_PREFIX}/lib/vtkRenderingCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkzlib" for configuration "Release"
SET_PROPERTY(TARGET vtkzlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkzlib PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkzlib-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkzlib-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkzlib )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkzlib "${_IMPORT_PREFIX}/lib/vtkzlib-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkzlib-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkfreetype" for configuration "Release"
SET_PROPERTY(TARGET vtkfreetype APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkfreetype PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkfreetype-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkfreetype-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkfreetype )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkfreetype "${_IMPORT_PREFIX}/lib/vtkfreetype-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkfreetype-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkftgl" for configuration "Release"
SET_PROPERTY(TARGET vtkftgl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkftgl PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkftgl-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "opengl32;vtkfreetype"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkftgl-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkftgl )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkftgl "${_IMPORT_PREFIX}/lib/vtkftgl-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkftgl-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingFreeType" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingFreeType APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingFreeType PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingFreeType-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingCore;vtkRenderingCore;vtkfreetype;vtkftgl"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingFreeType-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingFreeType )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingFreeType "${_IMPORT_PREFIX}/lib/vtkRenderingFreeType-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingFreeType-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkDICOMParser" for configuration "Release"
SET_PROPERTY(TARGET vtkDICOMParser APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkDICOMParser PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkDICOMParser-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkDICOMParser-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkDICOMParser )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkDICOMParser "${_IMPORT_PREFIX}/lib/vtkDICOMParser-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkDICOMParser-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOCore" for configuration "Release"
SET_PROPERTY(TARGET vtkIOCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOCore-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkzlib;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonExecutionModel;vtkCommonMisc"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOCore "${_IMPORT_PREFIX}/lib/vtkIOCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkmetaio" for configuration "Release"
SET_PROPERTY(TARGET vtkmetaio APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkmetaio PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkmetaio-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib;comctl32;wsock32"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkmetaio-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkmetaio )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkmetaio "${_IMPORT_PREFIX}/lib/vtkmetaio-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkmetaio-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkjpeg" for configuration "Release"
SET_PROPERTY(TARGET vtkjpeg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkjpeg PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkjpeg-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkjpeg-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkjpeg )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkjpeg "${_IMPORT_PREFIX}/lib/vtkjpeg-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkjpeg-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkpng" for configuration "Release"
SET_PROPERTY(TARGET vtkpng APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkpng PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkpng-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkpng-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkpng )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkpng "${_IMPORT_PREFIX}/lib/vtkpng-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkpng-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtktiff" for configuration "Release"
SET_PROPERTY(TARGET vtktiff APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtktiff PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtktiff-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib;vtkjpeg"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtktiff-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtktiff )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtktiff "${_IMPORT_PREFIX}/lib/vtktiff-6.1.lib" "${_IMPORT_PREFIX}/bin/vtktiff-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOImage" for configuration "Release"
SET_PROPERTY(TARGET vtkIOImage APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOImage PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOImage-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkjpeg;vtkpng;vtktiff;vtkmetaio;vtkDICOMParser;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonExecutionModel;vtkCommonMath;vtkCommonMisc;vtkCommonSystem;vtkCommonTransforms;vtkIOCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOImage-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOImage )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOImage "${_IMPORT_PREFIX}/lib/vtkIOImage-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOImage-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingHybrid" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingHybrid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingHybrid PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingHybrid-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkIOImage;vtkImagingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingHybrid-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingHybrid )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingHybrid "${_IMPORT_PREFIX}/lib/vtkImagingHybrid-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingHybrid-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkParseOGLExt" for configuration "Release"
SET_PROPERTY(TARGET vtkParseOGLExt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkParseOGLExt PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkParseOGLExt-6.1.exe"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkParseOGLExt )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkParseOGLExt "${_IMPORT_PREFIX}/bin/vtkParseOGLExt-6.1.exe" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkEncodeString" for configuration "Release"
SET_PROPERTY(TARGET vtkEncodeString APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkEncodeString PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkEncodeString-6.1.exe"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkEncodeString )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkEncodeString "${_IMPORT_PREFIX}/bin/vtkEncodeString-6.1.exe" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingOpenGL" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingOpenGL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingOpenGL PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingOpenGL-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkImagingHybrid;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingCore;glu32;opengl32;C:/Program Files (x86)/Microsoft DirectX SDK (June 2010)/Lib/x86/d3d9.lib;wbemuuid"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingOpenGL-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingOpenGL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingOpenGL "${_IMPORT_PREFIX}/lib/vtkRenderingOpenGL-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingOpenGL-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingContext2D" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingContext2D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingContext2D PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingContext2D-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonMath;vtkCommonTransforms;vtkRenderingOpenGL;vtkRenderingFreeType"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingContext2D-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingContext2D )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingContext2D "${_IMPORT_PREFIX}/lib/vtkRenderingContext2D-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingContext2D-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkChartsCore" for configuration "Release"
SET_PROPERTY(TARGET vtkChartsCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkChartsCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkChartsCore-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkCommonColor;vtkInfovisCore"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingContext2D"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkChartsCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkChartsCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkChartsCore "${_IMPORT_PREFIX}/lib/vtkChartsCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkChartsCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkjsoncpp" for configuration "Release"
SET_PROPERTY(TARGET vtkjsoncpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkjsoncpp PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkjsoncpp-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkjsoncpp-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkjsoncpp )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkjsoncpp "${_IMPORT_PREFIX}/lib/vtkjsoncpp-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkjsoncpp-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOGeometry" for configuration "Release"
SET_PROPERTY(TARGET vtkIOGeometry APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOGeometry PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOGeometry-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkzlib;vtkjsoncpp;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonMisc;vtkCommonSystem;vtkIOCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOGeometry-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOGeometry )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOGeometry "${_IMPORT_PREFIX}/lib/vtkIOGeometry-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOGeometry-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkexpat" for configuration "Release"
SET_PROPERTY(TARGET vtkexpat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkexpat PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkexpat-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkexpat-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkexpat )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkexpat "${_IMPORT_PREFIX}/lib/vtkexpat-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkexpat-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOXMLParser" for configuration "Release"
SET_PROPERTY(TARGET vtkIOXMLParser APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOXMLParser PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOXMLParser-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkexpat"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonMisc;vtkCommonSystem;vtkIOCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOXMLParser-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOXMLParser )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOXMLParser "${_IMPORT_PREFIX}/lib/vtkIOXMLParser-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOXMLParser-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOXML" for configuration "Release"
SET_PROPERTY(TARGET vtkIOXML APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOXML PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOXML-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkIOGeometry;vtkIOXMLParser"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOXML-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOXML )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOXML "${_IMPORT_PREFIX}/lib/vtkIOXML-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOXML-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkDomainsChemistry" for configuration "Release"
SET_PROPERTY(TARGET vtkDomainsChemistry APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkDomainsChemistry PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkDomainsChemistry-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkIOXML;vtkFiltersSources"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkDomainsChemistry-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkDomainsChemistry )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkDomainsChemistry "${_IMPORT_PREFIX}/lib/vtkDomainsChemistry-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkDomainsChemistry-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOLegacy" for configuration "Release"
SET_PROPERTY(TARGET vtkIOLegacy APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOLegacy PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOLegacy-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonMisc;vtkCommonSystem;vtkIOCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOLegacy-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOLegacy )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOLegacy "${_IMPORT_PREFIX}/lib/vtkIOLegacy-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOLegacy-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkHashSource" for configuration "Release"
SET_PROPERTY(TARGET vtkHashSource APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkHashSource PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkHashSource-6.1.exe"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkHashSource )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkHashSource "${_IMPORT_PREFIX}/bin/vtkHashSource-6.1.exe" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkParallelCore" for configuration "Release"
SET_PROPERTY(TARGET vtkParallelCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkParallelCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkParallelCore-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonCore;vtkIOLegacy"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkParallelCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkParallelCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkParallelCore "${_IMPORT_PREFIX}/lib/vtkParallelCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkParallelCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersAMR" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersAMR APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersAMR PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersAMR-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersGeneral;vtkParallelCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersAMR-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersAMR )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersAMR "${_IMPORT_PREFIX}/lib/vtkFiltersAMR-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersAMR-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersFlowPaths" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersFlowPaths APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersFlowPaths PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersFlowPaths-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkFiltersGeneral;vtkFiltersSources;vtkIOCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersFlowPaths-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersFlowPaths )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersFlowPaths "${_IMPORT_PREFIX}/lib/vtkFiltersFlowPaths-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersFlowPaths-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersGeneric" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersGeneric APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersGeneric PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersGeneric-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersCore;vtkFiltersSources"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersGeneric-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersGeneric )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersGeneric "${_IMPORT_PREFIX}/lib/vtkFiltersGeneric-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersGeneric-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingSources" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingSources APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingSources PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingSources-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingSources-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingSources )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingSources "${_IMPORT_PREFIX}/lib/vtkImagingSources-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingSources-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersHybrid" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersHybrid APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersHybrid PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersHybrid-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersGeneral;vtkImagingSources;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersHybrid-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersHybrid )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersHybrid "${_IMPORT_PREFIX}/lib/vtkFiltersHybrid-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersHybrid-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersHyperTree" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersHyperTree APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersHyperTree PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersHyperTree-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersGeneral"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersHyperTree-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersHyperTree )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersHyperTree "${_IMPORT_PREFIX}/lib/vtkFiltersHyperTree-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersHyperTree-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingGeneral" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingGeneral APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingGeneral PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingGeneral-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingSources"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingGeneral-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingGeneral )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingGeneral "${_IMPORT_PREFIX}/lib/vtkImagingGeneral-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingGeneral-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersImaging" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersImaging APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersImaging PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersImaging-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersStatistics;vtkImagingGeneral;vtkImagingSources"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersImaging-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersImaging )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersImaging "${_IMPORT_PREFIX}/lib/vtkFiltersImaging-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersImaging-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersModeling" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersModeling APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersModeling PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersModeling-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersGeneral;vtkFiltersSources"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersModeling-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersModeling )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersModeling "${_IMPORT_PREFIX}/lib/vtkFiltersModeling-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersModeling-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersParallel" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersParallel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersParallel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersParallel-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersExtraction;vtkFiltersGeometry;vtkFiltersModeling;vtkParallelCore;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersParallel-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersParallel )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersParallel "${_IMPORT_PREFIX}/lib/vtkFiltersParallel-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersParallel-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersParallelImaging" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersParallelImaging APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersParallelImaging PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersParallelImaging-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersImaging;vtkFiltersParallel;vtkIOLegacy;vtkImagingCore;vtkParallelCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersParallelImaging-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersParallelImaging )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersParallelImaging "${_IMPORT_PREFIX}/lib/vtkFiltersParallelImaging-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersParallelImaging-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersProgrammable" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersProgrammable APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersProgrammable PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersProgrammable-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersProgrammable-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersProgrammable )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersProgrammable "${_IMPORT_PREFIX}/lib/vtkFiltersProgrammable-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersProgrammable-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersSMP" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersSMP APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersSMP PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersSMP-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersCore;vtkFiltersGeneral"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersSMP-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersSMP )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersSMP "${_IMPORT_PREFIX}/lib/vtkFiltersSMP-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersSMP-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersSelection" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersSelection APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersSelection PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersSelection-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonComputationalGeometry;vtkFiltersCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersSelection-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersSelection )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersSelection "${_IMPORT_PREFIX}/lib/vtkFiltersSelection-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersSelection-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersTexture" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersTexture APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersTexture PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersTexture-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersGeneral"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersTexture-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersTexture )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersTexture "${_IMPORT_PREFIX}/lib/vtkFiltersTexture-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersTexture-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "verdict" for configuration "Release"
SET_PROPERTY(TARGET verdict APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(verdict PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkverdict-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkverdict-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS verdict )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_verdict "${_IMPORT_PREFIX}/lib/vtkverdict-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkverdict-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkFiltersVerdict" for configuration "Release"
SET_PROPERTY(TARGET vtkFiltersVerdict APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkFiltersVerdict PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkFiltersVerdict-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;verdict"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkFiltersVerdict-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkFiltersVerdict )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkFiltersVerdict "${_IMPORT_PREFIX}/lib/vtkFiltersVerdict-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkFiltersVerdict-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkInfovisLayout" for configuration "Release"
SET_PROPERTY(TARGET vtkInfovisLayout APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkInfovisLayout PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkInfovisLayout-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkFiltersModeling;vtkImagingHybrid;vtkInfovisCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkInfovisLayout-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkInfovisLayout )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkInfovisLayout "${_IMPORT_PREFIX}/lib/vtkInfovisLayout-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkInfovisLayout-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkInteractionStyle" for configuration "Release"
SET_PROPERTY(TARGET vtkInteractionStyle APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkInteractionStyle PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkInteractionStyle-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkFiltersSources;vtkFiltersExtraction"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkInteractionStyle-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkInteractionStyle )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkInteractionStyle "${_IMPORT_PREFIX}/lib/vtkInteractionStyle-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkInteractionStyle-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingColor" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingColor APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingColor PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingColor-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingColor-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingColor )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingColor "${_IMPORT_PREFIX}/lib/vtkImagingColor-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingColor-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingAnnotation" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingAnnotation APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingAnnotation PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingAnnotation-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkFiltersSources"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingColor;vtkRenderingFreeType"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingAnnotation-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingAnnotation )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingAnnotation "${_IMPORT_PREFIX}/lib/vtkRenderingAnnotation-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingAnnotation-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingVolume" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingVolume APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingVolume PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingVolume-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingCore;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingVolume-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingVolume )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingVolume "${_IMPORT_PREFIX}/lib/vtkRenderingVolume-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingVolume-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkInteractionWidgets" for configuration "Release"
SET_PROPERTY(TARGET vtkInteractionWidgets APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkInteractionWidgets PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkInteractionWidgets-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersHybrid;vtkFiltersModeling;vtkImagingGeneral;vtkImagingHybrid;vtkInteractionStyle;vtkRenderingAnnotation;vtkRenderingFreeType;vtkRenderingVolume"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkInteractionWidgets-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkInteractionWidgets )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkInteractionWidgets "${_IMPORT_PREFIX}/lib/vtkInteractionWidgets-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkInteractionWidgets-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkViewsCore" for configuration "Release"
SET_PROPERTY(TARGET vtkViewsCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkViewsCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkViewsCore-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkInteractionWidgets;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkViewsCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkViewsCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkViewsCore "${_IMPORT_PREFIX}/lib/vtkViewsCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkViewsCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkproj4" for configuration "Release"
SET_PROPERTY(TARGET vtkproj4 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkproj4 PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkproj4-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkproj4-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkproj4 )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkproj4 "${_IMPORT_PREFIX}/lib/vtkproj4-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkproj4-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkGeovisCore" for configuration "Release"
SET_PROPERTY(TARGET vtkGeovisCore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkGeovisCore PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkGeovisCore-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkIOXML;vtkInfovisLayout;vtkInteractionStyle;vtkInteractionWidgets;vtkRenderingOpenGL;vtkViewsCore;vtkproj4"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkGeovisCore-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkGeovisCore )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkGeovisCore "${_IMPORT_PREFIX}/lib/vtkGeovisCore-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkGeovisCore-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkhdf5" for configuration "Release"
SET_PROPERTY(TARGET vtkhdf5 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkhdf5 PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkhdf5-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ws2_32;wsock32;vtkzlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkhdf5-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkhdf5 )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkhdf5 "${_IMPORT_PREFIX}/lib/vtkhdf5-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkhdf5-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkhdf5_hl" for configuration "Release"
SET_PROPERTY(TARGET vtkhdf5_hl APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkhdf5_hl PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkhdf5_hl-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkhdf5"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkhdf5_hl-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkhdf5_hl )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkhdf5_hl "${_IMPORT_PREFIX}/lib/vtkhdf5_hl-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkhdf5_hl-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOAMR" for configuration "Release"
SET_PROPERTY(TARGET vtkIOAMR APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOAMR PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOAMR-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkhdf5_hl;vtkhdf5;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersAMR;vtkParallelCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOAMR-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOAMR )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOAMR "${_IMPORT_PREFIX}/lib/vtkIOAMR-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOAMR-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOEnSight" for configuration "Release"
SET_PROPERTY(TARGET vtkIOEnSight APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOEnSight PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOEnSight-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOEnSight-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOEnSight )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOEnSight "${_IMPORT_PREFIX}/lib/vtkIOEnSight-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOEnSight-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkNetCDF" for configuration "Release"
SET_PROPERTY(TARGET vtkNetCDF APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkNetCDF PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkNetCDF-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkhdf5_hl;vtkhdf5"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkNetCDF-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkNetCDF )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkNetCDF "${_IMPORT_PREFIX}/lib/vtkNetCDF-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkNetCDF-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkNetCDF_cxx" for configuration "Release"
SET_PROPERTY(TARGET vtkNetCDF_cxx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkNetCDF_cxx PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkNetCDF_cxx-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkNetCDF"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkNetCDF_cxx-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkNetCDF_cxx )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkNetCDF_cxx "${_IMPORT_PREFIX}/lib/vtkNetCDF_cxx-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkNetCDF_cxx-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkexoIIc" for configuration "Release"
SET_PROPERTY(TARGET vtkexoIIc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkexoIIc PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkexoIIc-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkNetCDF;vtkNetCDF_cxx"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkexoIIc-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkexoIIc )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkexoIIc "${_IMPORT_PREFIX}/lib/vtkexoIIc-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkexoIIc-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOExodus" for configuration "Release"
SET_PROPERTY(TARGET vtkIOExodus APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOExodus PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOExodus-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkexoIIc;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersGeneral;vtkIOXML"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOExodus-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOExodus )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOExodus "${_IMPORT_PREFIX}/lib/vtkIOExodus-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOExodus-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkgl2ps" for configuration "Release"
SET_PROPERTY(TARGET vtkgl2ps APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkgl2ps PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkgl2ps-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "glu32;opengl32;vtkzlib;vtkpng"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkgl2ps-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkgl2ps )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkgl2ps "${_IMPORT_PREFIX}/lib/vtkgl2ps-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkgl2ps-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingGL2PS" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingGL2PS APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingGL2PS PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingGL2PS-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkRenderingOpenGL;vtkRenderingFreeType;vtkgl2ps"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingContext2D"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingGL2PS-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingGL2PS )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingGL2PS "${_IMPORT_PREFIX}/lib/vtkRenderingGL2PS-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingGL2PS-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingLabel" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingLabel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingLabel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingLabel-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkFiltersExtraction"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingFreeType"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingLabel-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingLabel )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingLabel "${_IMPORT_PREFIX}/lib/vtkRenderingLabel-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingLabel-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOExport" for configuration "Release"
SET_PROPERTY(TARGET vtkIOExport APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOExport PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOExport-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkIOImage;vtkFiltersGeometry;vtkgl2ps"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonCore;vtkImagingCore;vtkRenderingAnnotation;vtkRenderingContext2D;vtkRenderingCore;vtkRenderingFreeType;vtkRenderingGL2PS;vtkRenderingLabel;vtkRenderingOpenGL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOExport-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOExport )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOExport "${_IMPORT_PREFIX}/lib/vtkIOExport-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOExport-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOImport" for configuration "Release"
SET_PROPERTY(TARGET vtkIOImport APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOImport PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOImport-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkFiltersSources"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonCore;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOImport-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOImport )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOImport "${_IMPORT_PREFIX}/lib/vtkIOImport-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOImport-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtklibxml2" for configuration "Release"
SET_PROPERTY(TARGET vtklibxml2 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtklibxml2 PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtklibxml2-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkzlib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtklibxml2-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtklibxml2 )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtklibxml2 "${_IMPORT_PREFIX}/lib/vtklibxml2-6.1.lib" "${_IMPORT_PREFIX}/bin/vtklibxml2-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOInfovis" for configuration "Release"
SET_PROPERTY(TARGET vtkIOInfovis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOInfovis PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOInfovis-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtklibxml2;vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonMisc;vtkCommonSystem;vtkIOCore;vtkIOLegacy;vtkInfovisCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOInfovis-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOInfovis )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOInfovis "${_IMPORT_PREFIX}/lib/vtkIOInfovis-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOInfovis-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOLSDyna" for configuration "Release"
SET_PROPERTY(TARGET vtkIOLSDyna APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOLSDyna PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOLSDyna-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkIOXML"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOLSDyna-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOLSDyna )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOLSDyna "${_IMPORT_PREFIX}/lib/vtkIOLSDyna-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOLSDyna-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOMINC" for configuration "Release"
SET_PROPERTY(TARGET vtkIOMINC APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOMINC PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOMINC-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys;vtkNetCDF;vtkNetCDF_cxx"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkFiltersHybrid;vtkIOGeometry;vtkIOImage;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOMINC-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOMINC )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOMINC "${_IMPORT_PREFIX}/lib/vtkIOMINC-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOMINC-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkoggtheora" for configuration "Release"
SET_PROPERTY(TARGET vtkoggtheora APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkoggtheora PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkoggtheora-6.1.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkoggtheora-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkoggtheora )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkoggtheora "${_IMPORT_PREFIX}/lib/vtkoggtheora-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkoggtheora-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOMovie" for configuration "Release"
SET_PROPERTY(TARGET vtkIOMovie APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOMovie PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOMovie-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonExecutionModel;vtkCommonSystem;vtkIOCore;vtkoggtheora"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOMovie-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOMovie )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOMovie "${_IMPORT_PREFIX}/lib/vtkIOMovie-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOMovie-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIONetCDF" for configuration "Release"
SET_PROPERTY(TARGET vtkIONetCDF APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIONetCDF PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIONetCDF-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys;vtkNetCDF;vtkNetCDF_cxx"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonSystem;vtkIOCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIONetCDF-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIONetCDF )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIONetCDF "${_IMPORT_PREFIX}/lib/vtkIONetCDF-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIONetCDF-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOPLY" for configuration "Release"
SET_PROPERTY(TARGET vtkIOPLY APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOPLY PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOPLY-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel;vtkCommonMisc;vtkIOGeometry"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOPLY-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOPLY )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOPLY "${_IMPORT_PREFIX}/lib/vtkIOPLY-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOPLY-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOParallel" for configuration "Release"
SET_PROPERTY(TARGET vtkIOParallel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOParallel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOParallel-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkexoIIc;vtkNetCDF;vtkNetCDF_cxx"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersParallel;vtkIOImage;vtkIONetCDF;vtkIOXML;vtkParallelCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOParallel-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOParallel )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOParallel "${_IMPORT_PREFIX}/lib/vtkIOParallel-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOParallel-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtksqlite" for configuration "Release"
SET_PROPERTY(TARGET vtksqlite APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtksqlite PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/vtksqlite-6.1.lib"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtksqlite )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtksqlite "${_IMPORT_PREFIX}/lib/vtksqlite-6.1.lib" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOSQL" for configuration "Release"
SET_PROPERTY(TARGET vtkIOSQL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOSQL PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOSQL-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkIOCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOSQL-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOSQL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOSQL "${_IMPORT_PREFIX}/lib/vtkIOSQL-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOSQL-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkIOVideo" for configuration "Release"
SET_PROPERTY(TARGET vtkIOVideo APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkIOVideo PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkIOVideo-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonExecutionModel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkIOVideo-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkIOVideo )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkIOVideo "${_IMPORT_PREFIX}/lib/vtkIOVideo-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkIOVideo-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingMath" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingMath APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingMath PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingMath-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonDataModel;vtkCommonExecutionModel"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingMath-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingMath )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingMath "${_IMPORT_PREFIX}/lib/vtkImagingMath-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingMath-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingMorphological" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingMorphological APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingMorphological PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingMorphological-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingCore;vtkImagingGeneral"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingMorphological-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingMorphological )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingMorphological "${_IMPORT_PREFIX}/lib/vtkImagingMorphological-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingMorphological-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingStatistics" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingStatistics APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingStatistics PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingStatistics-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingStatistics-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingStatistics )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingStatistics "${_IMPORT_PREFIX}/lib/vtkImagingStatistics-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingStatistics-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkImagingStencil" for configuration "Release"
SET_PROPERTY(TARGET vtkImagingStencil APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkImagingStencil PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkImagingStencil-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkCommonComputationalGeometry;vtkImagingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkImagingStencil-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkImagingStencil )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkImagingStencil "${_IMPORT_PREFIX}/lib/vtkImagingStencil-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkImagingStencil-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkInteractionImage" for configuration "Release"
SET_PROPERTY(TARGET vtkInteractionImage APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkInteractionImage PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkInteractionImage-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingColor;vtkInteractionStyle;vtkInteractionWidgets;vtkRenderingCore;vtkRenderingFreeType"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkInteractionImage-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkInteractionImage )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkInteractionImage "${_IMPORT_PREFIX}/lib/vtkInteractionImage-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkInteractionImage-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingFreeTypeOpenGL" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingFreeTypeOpenGL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingFreeTypeOpenGL PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingFreeTypeOpenGL-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingCore;vtkRenderingFreeType;vtkRenderingOpenGL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingFreeTypeOpenGL-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingFreeTypeOpenGL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingFreeTypeOpenGL "${_IMPORT_PREFIX}/lib/vtkRenderingFreeTypeOpenGL-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingFreeTypeOpenGL-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingImage" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingImage APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingImage PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingImage-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkImagingCore;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingImage-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingImage )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingImage "${_IMPORT_PREFIX}/lib/vtkRenderingImage-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingImage-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingLIC" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingLIC APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingLIC PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingLIC-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkIOLegacy;vtkIOXML;vtkImagingSources;vtkRenderingOpenGL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingLIC-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingLIC )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingLIC "${_IMPORT_PREFIX}/lib/vtkRenderingLIC-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingLIC-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingLOD" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingLOD APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingLOD PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingLOD-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersModeling;vtkRenderingCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingLOD-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingLOD )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingLOD "${_IMPORT_PREFIX}/lib/vtkRenderingLOD-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingLOD-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingParallel" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingParallel APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingParallel PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingParallel-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkIOImage"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersParallel;vtkParallelCore;vtkRenderingOpenGL"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingParallel-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingParallel )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingParallel "${_IMPORT_PREFIX}/lib/vtkRenderingParallel-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingParallel-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingVolumeAMR" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingVolumeAMR APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingVolumeAMR PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingVolumeAMR-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkFiltersAMR;vtkParallelCore;vtkRenderingVolume"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingVolumeAMR-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingVolumeAMR )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingVolumeAMR "${_IMPORT_PREFIX}/lib/vtkRenderingVolumeAMR-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingVolumeAMR-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkRenderingVolumeOpenGL" for configuration "Release"
SET_PROPERTY(TARGET vtkRenderingVolumeOpenGL APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkRenderingVolumeOpenGL PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkRenderingVolumeOpenGL-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtksys;vtkFiltersGeneral;vtkFiltersSources"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingOpenGL;vtkRenderingVolume"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkRenderingVolumeOpenGL-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkRenderingVolumeOpenGL )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkRenderingVolumeOpenGL "${_IMPORT_PREFIX}/lib/vtkRenderingVolumeOpenGL-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkRenderingVolumeOpenGL-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkViewsContext2D" for configuration "Release"
SET_PROPERTY(TARGET vtkViewsContext2D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkViewsContext2D PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkViewsContext2D-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkRenderingContext2D;vtkViewsCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkViewsContext2D-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkViewsContext2D )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkViewsContext2D "${_IMPORT_PREFIX}/lib/vtkViewsContext2D-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkViewsContext2D-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkViewsInfovis" for configuration "Release"
SET_PROPERTY(TARGET vtkViewsInfovis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkViewsInfovis PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkViewsInfovis-6.1.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "vtkFiltersGeometry"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkChartsCore;vtkCommonColor;vtkFiltersImaging;vtkFiltersModeling;vtkInfovisLayout;vtkInteractionStyle;vtkRenderingContext2D;vtkRenderingLabel;vtkViewsCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkViewsInfovis-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkViewsInfovis )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkViewsInfovis "${_IMPORT_PREFIX}/lib/vtkViewsInfovis-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkViewsInfovis-6.1.dll" )

# Make sure the targets which have been exported in some other 
# export set exist.

# Import target "vtkViewsGeovis" for configuration "Release"
SET_PROPERTY(TARGET vtkViewsGeovis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(vtkViewsGeovis PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkViewsGeovis-6.1.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "vtkGeovisCore;vtkViewsInfovis"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkViewsGeovis-6.1.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS vtkViewsGeovis )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_vtkViewsGeovis "${_IMPORT_PREFIX}/lib/vtkViewsGeovis-6.1.lib" "${_IMPORT_PREFIX}/bin/vtkViewsGeovis-6.1.dll" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Cleanup temporary variables.
SET(_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
