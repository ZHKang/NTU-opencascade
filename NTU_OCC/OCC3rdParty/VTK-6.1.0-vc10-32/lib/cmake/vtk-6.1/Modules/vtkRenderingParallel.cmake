set(vtkRenderingParallel_LOADED 1)
set(vtkRenderingParallel_DEPENDS "vtkFiltersParallel;vtkIOImage;vtkParallelCore;vtkRenderingOpenGL")
set(vtkRenderingParallel_LIBRARIES "vtkRenderingParallel")
set(vtkRenderingParallel_INCLUDE_DIRS "${VTK_INSTALL_PREFIX}/include/vtk-6.1")
set(vtkRenderingParallel_LIBRARY_DIRS "")
set(vtkRenderingParallel_RUNTIME_LIBRARY_DIRS "${VTK_INSTALL_PREFIX}/bin")
set(vtkRenderingParallel_WRAP_HIERARCHY_FILE "${CMAKE_CURRENT_LIST_DIR}/vtkRenderingParallelHierarchy.txt")

