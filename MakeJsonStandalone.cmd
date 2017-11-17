set SCRIPTPATH=%~dp0

set SRCFOLDER=%SCRIPTPATH:~0,-1%
set DESTFOLDER=%SRCFOLDER%\json_standalone
mkdir %DESTFOLDER%
mkdir %DESTFOLDER%\details

copy %SRCFOLDER%\Release\include\cpprest\json.h %DESTFOLDER%\json.h
copy %SRCFOLDER%\Release\include\cpprest\asyncrt_utils.h %DESTFOLDER%\details\asyncrt_utils.h
copy %SRCFOLDER%\Release\include\cpprest\details\SafeInt3.hpp %DESTFOLDER%\details\SafeInt3.hpp
copy %SRCFOLDER%\Release\include\cpprest\details\cpprest_compat.h %DESTFOLDER%\details\cpprest_compat.h
copy %SRCFOLDER%\Release\src\utilities\asyncrt_utils.cpp %DESTFOLDER%\details\asyncrt_utils.hpp
copy %SRCFOLDER%\Release\src\json\json.cpp %DESTFOLDER%\details\json.hpp
copy %SRCFOLDER%\Release\src\json\json_parsing.cpp %DESTFOLDER%\details\json_parsing.hpp
copy %SRCFOLDER%\Release\src\json\json_serialization.cpp %DESTFOLDER%\details\json_serialization.hpp
copy %SRCFOLDER%\Release\include\cpprest\details\basic_types.h %DESTFOLDER%\details\basic_types.h

