; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Dwarf Fortress - Installer"
!define PRODUCT_VERSION "0.42.04"
!define PRODUCT_PUBLISHER "Ev1l0rd"
!define PRODUCT_WEB_SITE "http://www.ev1l0rd.github.io"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "\\ams-file01\edu-gebruikersmappen$\109665\Downloads\avatar.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "DF.exe"
InstallDir "$EXEDIR\Dwarf Fortress"
ShowInstDetails show

Section "Dwarf Fortress 0.42.04" SEC01
SectionEnd

Section "DFHack" SEC02
SectionEnd

Section "Dwarf Therapist" SEC03
SectionEnd

Section -Post
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} ""
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "Powerful Lua Scripting Library"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "Makes managing dwarves easier!"
!insertmacro MUI_FUNCTION_DESCRIPTION_END