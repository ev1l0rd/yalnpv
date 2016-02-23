; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Dwarf Fortress"
!define PRODUCT_VERSION "0.42.06"
!define PRODUCT_PUBLISHER "Ev1l0rd"
!define PRODUCT_WEB_SITE "http://www.ev1l0rd.github.io"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "df_icon.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page 
!insertmacro MUI_PAGE_LICENSE "df.txt"
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
RequestExecutionLevel user
BrandingText "Ev1l0rd. Dwarf Fortress is made by Bay12Games."

Section "Dwarf Fortress 0.42.06" SEC01
		SetOutPath "$INSTDIR"
        SectionIn RO
        File /r "df_42_06_win\*"
SectionEnd

Section /o "DFHack (Non-Existent)" SEC02
        SetOverwrite on
        ;File /r "dfhack\*"
        SetOverwrite off
SectionEnd

Section /o "Dwarf Therapist" SEC03
	SetOutPath "$INSTDIR\Dwarf Therapist"
	File /r "Dwarf-Therapist\*"
SectionEnd

Section -Post
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "The base game."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "Powerful Lua Scripting Library."
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "Makes managing dwarves easier."
!insertmacro MUI_FUNCTION_DESCRIPTION_END