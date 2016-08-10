project(${RTLIB_LIB_NAME})

# Define all the source and header files
# ------------------------------
set(${PROJECT_NAME}_headers 
	abskernel.hpp absresmanager.hpp abstask.hpp AVRTask.hpp bwi.hpp capacitytimer.hpp
	cbserver.hpp cpu.hpp edfsched.hpp exeinstr.hpp fcfsresmanager.hpp feedback.hpp
	feedbacktest.hpp fifosched.hpp fpsched.hpp grubserver.hpp
	instr.hpp interrupt.hpp json_trace.hpp jtrace.hpp kernel.hpp kernevt.hpp load.hpp
	mrtkernel.hpp piresman.hpp pollingserver.hpp reginstr.hpp resmanager.hpp resource.hpp
	rmsched.hpp rrsched.hpp rtsched.hpp rttask.hpp schedinstr.hpp schedpoints.hpp
	schedrta.hpp scheduler.hpp server.hpp sparepot.hpp sporadicserver.hpp supercbs.hpp
	supervisor.hpp suspend_instr.hpp task.hpp taskevt.hpp taskexc.hpp taskstat.hpp
	texttrace.hpp threinstr.hpp timer.hpp traceevent.hpp tracepower.hpp waitinstr.hpp
	#feedbackarsim.hpp rtload.hpp
	)
set(${PROJECT_NAME}_sources
	AVRTask.cpp bwi.cpp capacitytimer.cpp cbserver.cpp cpu.cpp edfsched.cpp exeinstr.cpp
	fcfsresmanager.cpp feedback.cpp feedbacktest.cpp fifosched.cpp
	fpsched.cpp grubserver.cpp instr.cpp interrupt.cpp json_trace.cpp jtrace.cpp kernel.cpp
	kernevt.cpp load.cpp mrtkernel.cpp piresman.cpp pollingserver.cpp reginstr.cpp regsched.cpp
	regtask.cpp resmanager.cpp resource.cpp rmsched.cpp rrsched.cpp rttask.cpp
	schedinstr.cpp schedpoints.cpp schedrta.cpp scheduler.cpp server.cpp sparepot.cpp 
	sporadicserver.cpp supercbs.cpp suspend_instr.cpp task.cpp taskevt.cpp texttrace.cpp
	threinstr.cpp timer.cpp traceevent.cpp tracepower.cpp waitinstr.cpp
	#feedbackarsim.cpp rtload.cpp
	)


# Create a library called RTLIB which includes the source files
# ------------------------------
add_library(${PROJECT_NAME} SHARED
	${${PROJECT_NAME}_headers}
	${${PROJECT_NAME}_sources})
	
add_library(${PROJECT_NAME}_STATIC STATIC
	${${PROJECT_NAME}_headers}
	${${PROJECT_NAME}_sources})

	
# Indicate that rtlib need metasim library
# ------------------------------
target_link_libraries(${PROJECT_NAME} ${METASIM_LIB})