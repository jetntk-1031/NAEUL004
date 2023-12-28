######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Palette.vcr
VCCFLAGS_Visu=-server -proj Visu -vc '$(AS_PROJECT_PATH)/Logical/UI/Visu/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.72.1
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.72.1/SG4
VCOBJECT_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_Visu=$(AS_CPU_PATH)/Visu.br
OBJ_SCOPE_Visu=UI
PRJ_PATH_Visu=$(AS_PROJECT_PATH)
SRC_PATH_Visu=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Visu)/Visu
TEMP_PATH_Visu=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Visu=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Visu=$(TEMP_PATH_Visu)/libraries.vci
VC_XREF_BUILDFILE_Visu=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Visu=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_Visu)/cpuhwc.vci'
VC_STATIC_OPTIONS_Visu='$(TEMP_PATH_Visu)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Visu.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Visu=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_Visu='Source[local].StyleSheet[Style_1_0_0]'
SHARED_MODULE=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Visu=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)'
BDRFLAGS_Visu=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)'

# Local Libs
LIB_LOCAL_OBJ_Visu=$(TEMP_PATH_Visu)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Visu=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu/dis.Hardware.vco
PANEL_HW_VCI_Visu=$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visu/dis.Hardware.vci
PANEL_HW_SOURCE_Visu=C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Physical/3Mag_UL_MagPlat/Hardware.hw 
DIS_OBJECTS_Visu=$(PANEL_HW_OBJECT_Visu) $(KEYMAP_OBJECTS_Visu)

# KeyMapping flags
KEYMAP_SOURCES_Visu=
KEYMAP_OBJECTS_Visu=

# All Source Objects
FNINFO_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/BigHeaderFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/FileManagementFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/GeneralCmdFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/GeneralLabelFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/GeneralWarningFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/HeaderFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/InputLabelFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Keypad.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Languages.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Languages_Chinese.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineCmdFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineInfoFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineLoadTmFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineSettingLabelFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineStatusFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MenuButtonCmd.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MotionCmdFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MotionLabelFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MotionStatusFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/NavigationCmdFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/NumericDisplayFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/OptSubHeaderFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/OutputLabelFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/StringInputFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/SubHeaderFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/TableLabels.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/TitleBarText.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/UserManagementFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Arial9pxValue.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/DateTimeFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/FileManagementFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/GeneralCmdFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/GeneralLabelFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/GeneralWarningFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/HeaderFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/InputLabelFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Keypad_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Languages_Chinese_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Languages_English.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineCmdFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineInfoFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineSettingLabelFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MachineStatusFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MainPageCmdFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MenuButtonCmd_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MotionCmdFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MotionLabelFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MotionStatusFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/NavigationCmdFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/NumericDisplayFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/OutputLabelFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/StringInputFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/SubHeaderFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/TableLabels_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/UserManagementFont_0.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_Button_Below150.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_Notification_User.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_Notification_Time.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_Notification_Date.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_Notification_Title.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_SubHeader.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_DisplayIO.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_Button_Above150.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/Font_SMEMA.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/ScreenSaver.fninfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Fonts/MainMenu.fninfo 

BMINFO_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/CheckBox_Off.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/CheckBox_On.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_Black.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_White.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Alarm.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MachineInfo.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Operation.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserLogin.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserLogout.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_Current_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_History_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_Cancel.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_OK.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_20.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_25.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_30.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_40.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_15.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_20.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_25.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_30.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_40.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_Green.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_Red.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_White.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Delete_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Edit_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_From_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Leader_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Offline_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Online_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Follower_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Time_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_To_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Tx_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Warning.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Auto_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Stop_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Add_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Copy_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Delete_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Download_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Edit_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Load_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Paste_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Preview_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Save_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Search_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_Green.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_Red.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_White.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Redo.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Undo.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Add_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Delete_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Edit_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Login_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferInfo.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferSelection.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferSetting.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_InputManual.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LangDateTime.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MachineSetting.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LF.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LFSetting.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ModeSelection.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MotionManual.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Nutek.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_OutputManual.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_OvenInfo.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_RecipeSelection.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_RecipeSetting.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_SMEMAManual.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_SMEMASetting.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Simulation.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserSetting.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Delete_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Load_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Preview_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Save_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_15.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Abs_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Close_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Down_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Front_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Get_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Home_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Open_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Power_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Rear_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Rel_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Reset_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Stop_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Teach_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Up_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Close_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Extend_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Open_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Retract_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_MsgBox_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_BG_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_White_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Left_White_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Right_White_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_Off_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_On_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Slider_Button.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Detail.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Display.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Input.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_800x480.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/RadioButton_Off.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/RadioButton_On.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Slider_Bar.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Transparent.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_2_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Alarm.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Info.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_80x35_R5.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_80x35_R5.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_80x35_R5.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Nutek_Building_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_100x35_R6.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_100x35_R6.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_100x35_R6.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Grey_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_150x50_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_150x50_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Red_150x50_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_White_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_340x80_R17.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x80_R17.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x80_R17.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_100x50_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_100x50_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_100x50_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Switch_Down_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Switch_Up_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_160x35_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_160x35_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_160x35_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_65x25_R6.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_65x25_R6.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_Silver.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_2_2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Amber_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Green_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Red_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Amber_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Green_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Red_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_4.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_400x400.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_340x80.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Mask_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Full_Mask_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Red_100x50_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ManualReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ManualResetting.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Red_65.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DarkRed_65.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Green_65.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DardGreen_65.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_LightBlue_65.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DarkBlue_65.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_SMEMA.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Blue_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Mask_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Blue_100x50_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_LightBlue_100x50_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Red_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Yellow_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Yellow_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Yellow_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftDown_Active_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftDown_Pressed_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftUp_Active_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftUp_Pressed_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Green_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Setting_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Reset_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Home_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Yellow_150x50_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_30x17.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_40x22.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_40x40.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_15.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_20.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_25.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_30.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_40.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Backup.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Run_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Pause_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Sync_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Virtual_58x41.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_150x50_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_340x60_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x60_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x60_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Save.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Individual.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Merge.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Pulse.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Others_Picture.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_ShowInfo_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Amber_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_DarkBlue_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Green_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_LightBlue_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Red_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Yellow_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Green_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Red_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_White_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Yellow_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Green_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Red_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_White_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Yellow_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Pause_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Play_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Redo_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Reset_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Save_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Stop_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Undo_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_Round_53x43.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Amber_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_DarkBlue_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Green_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_LightBlue_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Red_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Yellow_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Mnl_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Mnl_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Logo_Lft_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Logo_Rgt_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LftToRgt_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_4.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_5.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_User.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x50_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x50_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x55_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x55_R10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_340x55.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Comm_Back_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Silver_50.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Grey_50.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Ldr_FrontView150.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_NutekLogin_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenRL_Front_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenLR_Front_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InspConv_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenLR_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Isometric.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Conv.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Close_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Open_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Down.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Up.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Pshr_Extend.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Pshr_Retract.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Rear.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_UL_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Open_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Conv_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Up_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Open_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Front_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_Mag1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_Mag2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_TravLif.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Wifi_Offline.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Wifi_Online.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Down.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp1_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp1_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp2_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp2_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp3_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp3_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_TravLif.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Rear.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_10.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_15.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_25.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_30.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_40.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_RgtToLft_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_LCSManage_80x80.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_400x300.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Yellow_400x300.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_43_Black.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_43_Black.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Numpad_Black.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_CloseMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_DownMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_MiddleMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_UpMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_FrontMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_MiddleMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_RearMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_ConvMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_CloseMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_OpenMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_CloseMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_OpenMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open_Small_MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up_SmallMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front_SmallMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv_SmallMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutltShutr_Cls_SmallMagVrify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_TravLifMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv1MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv2MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv3MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPadDwnBlack_Big.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_UpBlack_Big.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_7_black.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_7_black.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenDisengage_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_OpenDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_OpenEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_CloseDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_CloseEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_AIV.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_AIV.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top1_AIV.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/AIV_Top_View.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_90x90.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_OpenDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_OpenEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_CloseDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_CloseEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_CloseDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_CloseEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Close_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Open_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Open_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1MagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2MagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3MagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1_MagAW_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_UL_Front_MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_CloseMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_Open_Small_MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_OpenMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp1_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp1_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp2_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp2_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Conv_SmallMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_ConvMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_InletShutter_CloseMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_InletShutter_OpenMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_DownMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_MiddleMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_Up_SmallMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_UpMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_CloseDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_CloseEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_CloseDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_CloseEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_OpenDisengage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_OpenEngage.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv1_MagAW_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv1MagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv2MagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_CloseMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_OpenMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutltShutr_Cls_SmallMagVrify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Pusher_ExtMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Pusher_RetMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp1_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp1_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp2_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp2_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_MagConv1MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_MagConv2MagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_TravLifMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_ExtMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_RetMagVerify_MagAW.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_Front_SmallMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_FrontMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_MiddleMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_RearMagVerify.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenEngage_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top1_AIV.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_150x30_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_150x30_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_150x30_R8.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConvRun1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp1_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp1_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConvRun2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp2_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp2_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Inlet_Shutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Inlet_Shutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_AW_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp1_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp1_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp2_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp2_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp3_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp3_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_bottom.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_top.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag1Conv.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag2Conv.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag3Conv.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Pusher_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Pusher_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_PusherAW_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_pusherConv.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar1_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar1_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar2_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar2_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar3_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar3_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp1_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp1_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp2_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp2_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp3_Ext.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp3_Ret.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Outlet_Shutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Outlet_Shutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv11.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_TravLif.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Down.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Up.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Rear.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Up.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Down.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Middle.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Rear.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Trav.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Down_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Middle_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_FrontRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_MiddleRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_RearRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShutter_Open_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InShutter_Close_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InShutter_Open_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShutter_Close_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Trav_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag1_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag2_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_DownRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_MiddleRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_UpRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_FrontRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_MiddleRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_RearRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InShutter_CloseRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InShutter_OpenRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutter_CloseRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutter_OpenRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_TravLifRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_TopRToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag1RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag2RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag3RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Top_RToL.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Up_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_LToR_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OuShutter_Open_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_AW_Open_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Conv_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Up_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Front_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutterCloseSmall.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShut_Open_Small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_RToLSmall.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_RToL_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShut_OpenRToL_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_RToLSmall.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_MiddleRToLSmall.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutterRToLSmall.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutletShutter_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutletShutter_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_170x55_R11.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_170x55_R11.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Btm_Lane1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Btm_Lane2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Mid_Lane1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Mid_Lane2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_BtmMagConv_Lane1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_BtmMagConv_Lane2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane1_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane2_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane1_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_InShutter_Lane1_close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_InShutter_Lane1_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_OutShutter_Lane1_close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_OutShutter_Lane1_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Shutter_Lane1_small.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_500x300.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Right_MagLane1_150x150.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Mag1_150x150.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Mag2_150x150.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_MagC1_150x150.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_MagC2_150x150.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Trav_150x150.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Bitmap_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Bitmap_2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McTopView_450x300.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Highlight_LiftTrav.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut3_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut1_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut2_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBm_M.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBm_T.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBtm_B.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_F.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_M.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_R.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll3.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDn.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDnWhPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowUp.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowUpWhPressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWH_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWH_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWhPressed_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWh_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWh_1.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWhPressed_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSDnWh_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSDnWhPressed_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSUpWh_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSUpWhPressed_0.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Down_Active.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Down_Pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Up_Active.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Up_Pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_NumPad_Black.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_AW_Open.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_PusherAW_Close.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_StprRtrct2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_StprExt2.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Amber_Base_100x82.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Auto_Main_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_Off_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_On_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_Standby_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Green_Base_100x82.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Main_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Red_Base_100x82.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Reset_Main_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Sliver_Base_100x82.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Stop_Main_7.bminfo \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Yellow_Base_100x82.bminfo 

BMGRP_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Numpad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Alarm.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Border.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Dialog.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/LeadFollow.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Operation.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Recipe.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/SMEMA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/StatusDisplay.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/UserManagement.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Buffer.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/DropDown.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Machine.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Menu.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/MessageBox.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Motion.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Pneumatic.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/CommonLayer.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/QuickAccess.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/ScreenSaver.bmgrp \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/MainMenu.bmgrp 

PAGE_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0000_ScreenSaver.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0002_Menu.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0100_Login.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0300_MachineInfo.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0400_ProductSelection.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0410_MagazineSelection.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0600_Alarm.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0700_LFCtrl.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0800_MagazineInfo.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0900_GeneralInput.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0910_GeneralOutput.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0920_MotorAndPneumaticControl.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0940_CommunicationControl.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0950_Simulation.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1080_UserManagement.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0934_AutoWidth.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0935_Lifter.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1000_LanguageAndTimeSetup.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1030_MagazineSetting.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1040_ProductSetting.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1050_LeadFollowSetting.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0001_StartupPage.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0930_Mag1Conv.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0921_Shutter.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0200_GenOps.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0933_PusherConv.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0936_Traverser.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1021_MachineSettingGen.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1023_MachineSettingHComm.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1020_MachineSettingNavi.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1081_UsrMgmtUsrAccessRgt.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1031_MagazineSettingTeach.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1026_MachineSettingTeach.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1024_MachineSettingAntiGap.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0931_Mag2Conv.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0932_Mag3Conv.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0850_OvenInfo.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0922_Stopper.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0202_OpsMag1.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0203_OpsMag2.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0204_OpsMag3.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1022_MachineSettingVComm.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0938_MagazineAutoWidth.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0923_SafetyBar.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0205_OpsAIV.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0937_AWPushPul.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0201_OpsTravLifter.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0928_MagConvTopBtm.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0929_MagConv2TopBtm.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0939_Lifter2.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0926_LifterMagConv.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0927_LifterMagConv2.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0206_OpsLaneMag1.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0207_OpsLaneMag2.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1025_MachineSettingScan.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1027_McOpCon.page \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0003_MMenu.page 

LAYER_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0005_MainLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0007_NotifLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0008_MsgBoxLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0002_FullMaskLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0001_MotionStd.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0006_SetLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0004_NaviLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0003_DualMaskLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0009_InfoLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0010_RcyMsgLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0011_RcpPopUpLayer.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0001_QueryBoardInfo.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0002_CurrentWorkOrder.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0003_QueryWorkOrderInfo.layer \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0004_BarcodeScanner.layer 

VCS_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/StyleSheets/Style_1_0_0.vcs 

BDR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Switch_Down.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Switch_Up.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_150x50_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_MsgBox.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Flat_Black.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Flat_White.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/CheckBox_Off.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/CheckBox_On.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/RadioButton_Off.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/RadioButton_On.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Transparent.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_BG.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Icon_Grey.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_100x35_R6.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_80x35_R5.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_80x35_R5.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Mask_800x480.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_Display.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_100x35_R6.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_Input.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_150x50_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Red_150x50_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x80_R17.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x80_R17.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_100x50_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_100x50_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_100x50_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Slider_Bar.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_160x35_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_160x35_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_Detail.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_65x25_R6.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_65x25_R6.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Group_Silver.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled1.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Icon_Mask.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Full_Mask.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Red_100x50_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/SMEMA.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Rst_Blue.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Rst_Mask.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Blue_100x50_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_LightBlue_100x50_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Rst_Red.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftUp_Active.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftUp_Pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftDown_Pressed.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftDown_Active.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_160x35_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_80x35_R5.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_100x35_R6.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Yellow_150x50_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Flat_Amber.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_150x50_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x60_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_340x60_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x60_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Mask_Round_53x43.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x50_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x50_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x55_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x55_R10.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled2.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Mask_LCSManage_80x80.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled3.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_150x30_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_150x30_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_150x30_R8.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_170x55_R11.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_170x55_R11.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowUp.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowDn.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowUpWhPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowDnWhPressed.bdr 

TPR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/TouchPads/AlphaPad.tpr 

TDC_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Trends/TrendData.tdc 

CLM_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BtnChkReject.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BtnLoad.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/CheckBoxNRadio.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/NumGeneralDisp.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/NumGeneralInput.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/TxtGeneral.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/AlarmDisplay.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BtnGeneral.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BufferStatus.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/CheckBox.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/General.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/LED.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MachineStatus.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MenuBtn.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MessageBoxMsg.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MessageBoxTitle.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MotionStatus.clm \
	$(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/Table.clm 

PRC_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Processes/Process_1.prc 

VCVK_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/VirtualKeys.vcvk 

VCR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Visu=$(TEMP_PATH_Visu)/vcrt.vco
VCR_SOURCE_Visu=$(SRC_PATH_Visu)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_Visu): $(PANEL_HW_SOURCE_Visu) $(VC_LIBRARY_LIST_Visu) $(KEYMAP_SOURCES_Visu) $(PALFILE_Visu)
	$(VCHWPP) -f '$<' -o '$@' -n Visu -d Visu -pal '$(PALFILE_Visu)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'B4.82' -L 'visapi: V*' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Visu) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.72.1/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'NAEUL004C00R13L518F00' -vcob '$(VCOBJECT_Visu)'

$(PANEL_HW_OBJECT_Visu): $(PANEL_HW_VCI_Visu) $(VC_LIBRARY_LIST_Visu)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Visu)' $(VCCFLAGS_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


# Pages
PAGE_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/page., $(notdir $(PAGE_SOURCES_Visu:.page=.vco)))

$(TEMP_PATH_Visu)/page.P0000_ScreenSaver.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0000_ScreenSaver.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0002_Menu.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0002_Menu.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0100_Login.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0100_Login.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0300_MachineInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0300_MachineInfo.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0400_ProductSelection.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0400_ProductSelection.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0410_MagazineSelection.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0410_MagazineSelection.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0600_Alarm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0600_Alarm.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0700_LFCtrl.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0700_LFCtrl.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0800_MagazineInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0800_MagazineInfo.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0900_GeneralInput.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0900_GeneralInput.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0910_GeneralOutput.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0910_GeneralOutput.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0920_MotorAndPneumaticControl.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0920_MotorAndPneumaticControl.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0940_CommunicationControl.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0940_CommunicationControl.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0950_Simulation.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0950_Simulation.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1080_UserManagement.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1080_UserManagement.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0934_AutoWidth.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0934_AutoWidth.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0935_Lifter.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0935_Lifter.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1000_LanguageAndTimeSetup.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1000_LanguageAndTimeSetup.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1030_MagazineSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1030_MagazineSetting.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1040_ProductSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1040_ProductSetting.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1050_LeadFollowSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1050_LeadFollowSetting.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0001_StartupPage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0001_StartupPage.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0930_Mag1Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0930_Mag1Conv.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0921_Shutter.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0921_Shutter.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0200_GenOps.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0200_GenOps.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0933_PusherConv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0933_PusherConv.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0936_Traverser.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0936_Traverser.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1021_MachineSettingGen.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1021_MachineSettingGen.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1023_MachineSettingHComm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1023_MachineSettingHComm.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1020_MachineSettingNavi.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1020_MachineSettingNavi.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1081_UsrMgmtUsrAccessRgt.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1081_UsrMgmtUsrAccessRgt.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1031_MagazineSettingTeach.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1031_MagazineSettingTeach.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1026_MachineSettingTeach.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1026_MachineSettingTeach.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1024_MachineSettingAntiGap.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1024_MachineSettingAntiGap.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0931_Mag2Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0931_Mag2Conv.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0932_Mag3Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0932_Mag3Conv.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0850_OvenInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0850_OvenInfo.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0922_Stopper.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0922_Stopper.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0202_OpsMag1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0202_OpsMag1.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0203_OpsMag2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0203_OpsMag2.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0204_OpsMag3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0204_OpsMag3.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1022_MachineSettingVComm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1022_MachineSettingVComm.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0938_MagazineAutoWidth.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0938_MagazineAutoWidth.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0923_SafetyBar.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0923_SafetyBar.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0205_OpsAIV.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0205_OpsAIV.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0937_AWPushPul.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0937_AWPushPul.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0201_OpsTravLifter.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0201_OpsTravLifter.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0928_MagConvTopBtm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0928_MagConvTopBtm.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0929_MagConv2TopBtm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0929_MagConv2TopBtm.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0939_Lifter2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0939_Lifter2.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0926_LifterMagConv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0926_LifterMagConv.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0927_LifterMagConv2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0927_LifterMagConv2.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0206_OpsLaneMag1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0206_OpsLaneMag1.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0207_OpsLaneMag2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0207_OpsLaneMag2.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1025_MachineSettingScan.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1025_MachineSettingScan.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P1027_McOpCon.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P1027_McOpCon.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/page.P0003_MMenu.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Pages/P0003_MMenu.page $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visu)/StyleSheets/Style_1_0_0.vcs' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/vcs., $(notdir $(VCS_SOURCES_Visu:.vcs=.vco)))

$(TEMP_PATH_Visu)/vcs.Style_1_0_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/StyleSheets/Style_1_0_0.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#Stylesheets END




# Layers
LAYER_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/layer., $(notdir $(LAYER_SOURCES_Visu:.layer=.vco)))

$(TEMP_PATH_Visu)/layer.C0005_MainLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0005_MainLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0007_NotifLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0007_NotifLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0008_MsgBoxLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0008_MsgBoxLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0002_FullMaskLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0002_FullMaskLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0001_MotionStd.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0001_MotionStd.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0006_SetLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0006_SetLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0004_NaviLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0004_NaviLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0003_DualMaskLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0003_DualMaskLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0009_InfoLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0009_InfoLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0010_RcyMsgLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0010_RcyMsgLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.C0011_RcpPopUpLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/C0011_RcpPopUpLayer.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.E0001_QueryBoardInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0001_QueryBoardInfo.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.E0002_CurrentWorkOrder.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0002_CurrentWorkOrder.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.E0003_QueryWorkOrderInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0003_QueryWorkOrderInfo.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/layer.E0004_BarcodeScanner.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Layers/E0004_BarcodeScanner.layer $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -ds $(DEFAULT_STYLE_SHEET_Visu) -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#Layers END




# Virtual Keys
VCVK_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/vcvk., $(notdir $(VCVK_SOURCES_Visu:.vcvk=.vco)))

$(TEMP_PATH_Visu)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas

$(VCVK_OBJECTS_Visu): $(VC_LANGUAGES_Visu)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/tpr., $(notdir $(TPR_SOURCES_Visu:.tpr=.vco)))

$(TEMP_PATH_Visu)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj 'C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/UI/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu) -prj 'C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/UI/Visu' -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/bmgrp., $(notdir $(BMGRP_SOURCES_Visu:.bmgrp=.vco)))

$(TEMP_PATH_Visu)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Numpad.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Numpad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Alarm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Alarm.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Border.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Border.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Dialog.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Dialog.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.LeadFollow.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/LeadFollow.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Operation.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Operation.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Recipe.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Recipe.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.SMEMA.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/SMEMA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.StatusDisplay.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/StatusDisplay.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.UserManagement.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/UserManagement.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Buffer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Buffer.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.DropDown.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/DropDown.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Machine.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Machine.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Menu.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Menu.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.MessageBox.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/MessageBox.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Motion.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Motion.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.Pneumatic.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/Pneumatic.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.CommonLayer.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/CommonLayer.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.QuickAccess.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/QuickAccess.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.ScreenSaver.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/ScreenSaver.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bmgrp.MainMenu.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/BitmapGroups/MainMenu.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/bminfo., $(notdir $(BMINFO_SOURCES_Visu:.bminfo=.vco)))

$(TEMP_PATH_Visu)/bminfo.CheckBox_Off.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/CheckBox_Off.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/CheckBox_Off.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.CheckBox_On.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/CheckBox_On.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/CheckBox_On.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Group_Black.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_Black.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_Black.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Group_White.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_White.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_White.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_Alarm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Alarm.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Alarm.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_MachineInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MachineInfo.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MachineInfo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_Operation.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Operation.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Operation.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_UserLogin.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserLogin.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserLogin.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_UserLogout.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserLogout.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserLogout.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Alarm_Current_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_Current_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_Current_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Alarm_History_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_History_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_History_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Dialog_Cancel.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_Cancel.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_Cancel.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Dialog_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Dialog_OK.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_OK.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Dialog_OK.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Grey_10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Grey_20.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_20.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_20.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Grey_25.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_25.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_25.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Grey_30.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_30.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_30.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Grey_40.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_40.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_40.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Green_10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Green_15.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_15.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_15.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Green_20.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_20.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_20.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Green_25.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_25.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_25.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Green_30.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_30.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_30.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Green_40.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_40.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Green_40.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Triangle_Left_Green.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_Green.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_Green.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Triangle_Left_Red.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_Red.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_Red.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Triangle_Left_White.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_White.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Left_White.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Delete_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Delete_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Delete_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Edit_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Edit_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Edit_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_From_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_From_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_From_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Leader_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Leader_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Leader_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Offline_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Offline_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Offline_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Online_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Online_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Online_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Follower_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Follower_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Follower_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Time_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Time_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Time_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_To_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_To_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_To_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LF_Tx_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Tx_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LF_Tx_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Msg_Warning.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Warning.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Warning.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Ops_Auto_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Auto_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Auto_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Ops_Stop_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Stop_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Stop_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Add_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Add_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Add_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Copy_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Copy_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Copy_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Delete_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Delete_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Delete_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Download_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Download_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Download_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Edit_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Edit_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Edit_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Load_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Load_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Load_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Paste_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Paste_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Paste_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Preview_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Preview_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Preview_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Save_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Save_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Save_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Search_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Search_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Search_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Triangle_Right_Green.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_Green.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_Green.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Triangle_Right_Red.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_Red.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_Red.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Triangle_Right_White.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_White.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Triangle_Right_White.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Redo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Redo.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Redo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Undo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Undo.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Undo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_User_Add_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Add_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Add_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_User_Delete_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Delete_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Delete_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_User_Edit_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Edit_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Edit_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_User_Login_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Login_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_Login_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_BufferInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferInfo.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferInfo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_BufferSelection.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferSelection.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferSelection.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_BufferSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferSetting.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_BufferSetting.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_InputManual.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_InputManual.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_InputManual.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_LangDateTime.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LangDateTime.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LangDateTime.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_MachineSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MachineSetting.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MachineSetting.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_LF.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LF.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LF.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_LFSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LFSetting.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_LFSetting.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_ModeSelection.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ModeSelection.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ModeSelection.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_MotionManual.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MotionManual.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_MotionManual.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_Nutek.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Nutek.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Nutek.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_OutputManual.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_OutputManual.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_OutputManual.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_OvenInfo.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_OvenInfo.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_OvenInfo.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_RecipeSelection.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_RecipeSelection.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_RecipeSelection.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_RecipeSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_RecipeSetting.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_RecipeSetting.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_SMEMAManual.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_SMEMAManual.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_SMEMAManual.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_SMEMASetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_SMEMASetting.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_SMEMASetting.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_Simulation.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Simulation.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Simulation.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_UserSetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserSetting.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_UserSetting.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Buffer_Delete_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Delete_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Delete_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Buffer_Load_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Load_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Load_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Buffer_Preview_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Preview_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Preview_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Buffer_Save_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Save_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Save_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Grey_15.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_15.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Grey_15.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Abs_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Abs_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Abs_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Close_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Close_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Close_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Down_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Down_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Down_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Front_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Front_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Front_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Get_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Get_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Get_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Home_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Home_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Home_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Open_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Open_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Open_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Power_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Power_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Power_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Rear_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Rear_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Rear_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Rel_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Rel_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Rel_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Reset_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Reset_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Reset_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Stop_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Stop_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Stop_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Teach_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Teach_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Teach_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Up_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Up_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Up_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Pneumatic_Close_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Close_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Close_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Pneumatic_Extend_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Extend_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Extend_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Pneumatic_Open_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Open_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Open_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Pneumatic_Retract_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Retract_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Pneumatic_Retract_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_MsgBox_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_MsgBox_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_MsgBox_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_BG_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_BG_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_BG_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Down_White_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_White_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_White_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Left_White_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Left_White_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Left_White_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Right_White_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Right_White_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Right_White_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_QuickAccess_Audio_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_QuickAccess_Audio_Off_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_Off_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_Off_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_QuickAccess_Audio_On_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_On_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_Audio_On_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Slider_Button.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Slider_Button.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Slider_Button.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_Detail.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Detail.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Detail.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_Display.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Display.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Display.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_Input.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Input.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_Input.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mask_800x480.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_800x480.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_800x480.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.RadioButton_Off.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/RadioButton_Off.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/RadioButton_Off.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.RadioButton_On.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/RadioButton_On.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/RadioButton_On.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Slider_Bar.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Slider_Bar.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Slider_Bar.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Transparent.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Transparent.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Transparent.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_2_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_2_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_2_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_3_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_3_3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Msg_Alarm.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Alarm.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Alarm.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Msg_Info.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Info.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Msg_Info.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_80x35_R5.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_80x35_R5.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_80x35_R5.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_80x35_R5.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_80x35_R5.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_80x35_R5.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_80x35_R5.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_80x35_R5.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_80x35_R5.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Nutek_Building_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Nutek_Building_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Nutek_Building_7.jpg
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_100x35_R6.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_100x35_R6.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_100x35_R6.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_100x35_R6.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_100x35_R6.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_100x35_R6.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_100x35_R6.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_100x35_R6.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_100x35_R6.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Icon_Grey_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Grey_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Grey_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_150x50_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_150x50_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_150x50_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_150x50_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_150x50_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_150x50_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Red_150x50_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Red_150x50_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Red_150x50_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Flat_White_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_White_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_White_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_340x80_R17.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_340x80_R17.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_340x80_R17.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_340x80_R17.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x80_R17.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x80_R17.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_340x80_R17.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x80_R17.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x80_R17.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_100x50_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_100x50_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_100x50_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_100x50_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_100x50_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_100x50_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_100x50_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_100x50_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_100x50_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Switch_Down_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Switch_Down_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Switch_Down_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Switch_Up_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Switch_Up_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Switch_Up_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_160x35_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_160x35_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_160x35_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_160x35_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_160x35_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_160x35_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_160x35_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_160x35_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_160x35_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_65x25_R6.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_65x25_R6.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_65x25_R6.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_65x25_R6.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_65x25_R6.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_65x25_R6.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Group_Silver.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_Silver.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Group_Silver.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_2_2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_2_2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_2_2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_3_2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_3_2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Down_Amber_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Amber_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Amber_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Down_Green_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Green_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Green_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Down_Red_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Red_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Red_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Flat_Amber_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Amber_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Amber_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Flat_Green_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Green_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Green_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Flat_Red_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Red_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Red_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_4_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_4_2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_4_3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_4_4.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_4.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_4_4.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Text_Disabled_400x400.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_400x400.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_400x400.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Text_Disabled_340x80.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_340x80.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_340x80.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Icon_Mask_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Mask_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Mask_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Full_Mask_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Full_Mask_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Full_Mask_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Red_100x50_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Red_100x50_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Red_100x50_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_ManualReset.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ManualReset.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ManualReset.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_ManualResetting.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ManualResetting.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_ManualResetting.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_Red_65.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Red_65.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Red_65.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_DarkRed_65.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DarkRed_65.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DarkRed_65.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_Green_65.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Green_65.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Green_65.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_DardGreen_65.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DardGreen_65.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DardGreen_65.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_LightBlue_65.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_LightBlue_65.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_LightBlue_65.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_DarkBlue_65.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DarkBlue_65.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_DarkBlue_65.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_SMEMA.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_SMEMA.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_SMEMA.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Rst_Blue_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Blue_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Blue_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Rst_Mask_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Mask_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Mask_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Blue_100x50_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Blue_100x50_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Blue_100x50_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_LightBlue_100x50_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_LightBlue_100x50_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_LightBlue_100x50_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Rst_Red_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Red_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Red_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Rst_Yellow_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Yellow_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Rst_Yellow_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Down_Yellow_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Yellow_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Down_Yellow_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Arrow_Flat_Yellow_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Yellow_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Arrow_Flat_Yellow_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Table_ShiftDown_Active_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftDown_Active_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftDown_Active_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Table_ShiftDown_Pressed_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftDown_Pressed_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftDown_Pressed_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Table_ShiftUp_Active_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftUp_Active_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftUp_Active_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Table_ShiftUp_Pressed_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftUp_Pressed_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Table_ShiftUp_Pressed_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.QuickAccess_Icon_Green_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Green_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/QuickAccess_Icon_Green_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Setting_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Setting_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Setting_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Buffer_Reset_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Reset_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Buffer_Reset_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Home_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Home_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Home_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPad_Down_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPad_Up_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Yellow_150x50_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Yellow_150x50_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Yellow_150x50_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Hermes_Logo_30x17.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_30x17.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_30x17.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Hermes_Logo_40x22.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_40x22.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_40x22.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Hermes_Logo_40x40.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_40x40.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Hermes_Logo_40x40.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Blue_10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Blue_15.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_15.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_15.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Blue_20.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_20.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_20.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Blue_25.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_25.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_25.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Blue_30.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_30.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_30.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Blue_40.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_40.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Blue_40.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Menu_Backup.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Backup.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Menu_Backup.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Motion_Run_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Run_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Motion_Run_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Ops_Pause_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Pause_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Ops_Pause_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Recipe_Sync_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Sync_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Recipe_Sync_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Text_Virtual_58x41.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Virtual_58x41.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Virtual_58x41.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_150x50_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_150x50_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_150x50_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_340x60_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_340x60_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_340x60_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_340x60_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x60_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x60_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_340x60_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x60_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x60_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Save.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Save.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Save.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.SMEMA_Individual.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Individual.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Individual.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.SMEMA_Merge.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Merge.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Merge.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.SMEMA_Pulse.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Pulse.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Pulse.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Others_Picture.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Others_Picture.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Others_Picture.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_QuickAccess_ShowInfo_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_ShowInfo_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_QuickAccess_ShowInfo_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBar_Amber_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Amber_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Amber_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBar_DarkBlue_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_DarkBlue_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_DarkBlue_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBar_Green_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Green_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Green_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBar_LightBlue_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_LightBlue_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_LightBlue_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBar_Red_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Red_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Red_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBar_Yellow_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Yellow_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Yellow_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgt_Green_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Green_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Green_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgt_Red_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Red_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Red_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgt_White_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_White_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_White_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgt_Yellow_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Yellow_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgt_Yellow_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgtExp_Green_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Green_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Green_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgtExp_Red_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Red_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Red_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgtExp_White_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_White_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_White_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Arrw_DnRgtExp_Yellow_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Yellow_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Arrw_DnRgtExp_Yellow_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Pause_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Pause_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Pause_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Play_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Play_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Play_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Redo_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Redo_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Redo_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Reset_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Reset_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Reset_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Save_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Save_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Save_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Stop_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Stop_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Stop_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Cmn_Undo_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Undo_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Cmn_Undo_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mask_Round_53x43.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_Round_53x43.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_Round_53x43.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorStat_Amber_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Amber_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Amber_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorStat_DarkBlue_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_DarkBlue_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_DarkBlue_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorStat_Green_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Green_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Green_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorStat_LightBlue_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_LightBlue_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_LightBlue_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorStat_Red_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Red_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Red_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorStat_Yellow_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Yellow_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Yellow_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBar_Mnl_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Mnl_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBar_Mnl_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorStat_Mnl_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Mnl_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorStat_Mnl_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.SMEMA_Logo_Lft_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Logo_Lft_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Logo_Lft_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.SMEMA_Logo_Rgt_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Logo_Rgt_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/SMEMA_Logo_Rgt_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LftToRgt_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LftToRgt_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LftToRgt_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_5_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_5_2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_5_3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_5_4.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_4.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_4.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_Page_5_5.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_5.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_Page_5_5.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Common_User.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_User.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Common_User.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_340x50_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x50_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x50_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_340x50_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x50_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x50_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_340x55_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x55_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_340x55_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_340x55_R10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x55_R10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_340x55_R10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Text_Disabled_340x55.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_340x55.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_340x55.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Comm_Back_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Comm_Back_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Comm_Back_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_Silver_50.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Silver_50.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Silver_50.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtnRound_Grey_50.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Grey_50.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtnRound_Grey_50.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Ldr_FrontView150.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Ldr_FrontView150.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Ldr_FrontView150.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_User_NutekLogin_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_NutekLogin_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_User_NutekLogin_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_OvenRL_Front_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenRL_Front_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenRL_Front_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_OvenLR_Front_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenLR_Front_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenLR_Front_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_InspConv_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InspConv_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InspConv_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_OvenLR_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenLR_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OvenLR_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Isometric.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Isometric.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Isometric.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_AW_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_AW_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Conv.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Conv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_InletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_InletShutter_Close_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Close_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Close_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_InletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_InletShutter_Open_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Open_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_InletShutter_Open_1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Down.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Down.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Up.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Up.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_OutletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_OutletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Pshr_Extend.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Pshr_Extend.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Pshr_Extend.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Pshr_Retract.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Pshr_Retract.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Pshr_Retract.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Trav_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Trav_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Trav_Rear.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Rear.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Rear.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_UL_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_UL_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_UL_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_AW_Open_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Open_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_AW_Open_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Conv_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Conv_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Conv_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Up_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Up_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Up_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_OutletShutter_Open_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Open_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_OutletShutter_Open_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Trav_Front_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Front_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_Front_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_Mag1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_Mag1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_Mag1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_Mag2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_Mag2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_Mag2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_TravLif.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_TravLif.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_TravLif.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Wifi_Offline.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Wifi_Offline.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Wifi_Offline.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Wifi_Online.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Wifi_Online.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Wifi_Online.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_AW_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_AW_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_AW_Open_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Conv_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_InletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_InletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_Down.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Down.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_Up.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_Up_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClamp1_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp1_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp1_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClamp1_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp1_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp1_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClamp2_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp2_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp2_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClamp2_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp2_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp2_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClamp3_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp3_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp3_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClamp3_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp3_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClamp3_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv1_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv2_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv3_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutletShutter_Close_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Pusher_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Pusher_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_MagConv1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_MagConv2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_MagConv3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_TravLif.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_TravLif.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_TravLif.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_Front_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_Rear.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Rear.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Rear.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Red_10.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_10.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_10.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Red_15.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_15.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_15.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Red_25.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_25.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_25.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Red_30.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_30.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_30.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_LED_Red_40.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_40.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_LED_Red_40.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_RgtToLft_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_RgtToLft_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_RgtToLft_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mask_LCSManage_80x80.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_LCSManage_80x80.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mask_LCSManage_80x80.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_400x300.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_400x300.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_400x300.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Yellow_400x300.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Yellow_400x300.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Yellow_400x300.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPad_Down_43_Black.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_43_Black.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_43_Black.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPad_Up_43_Black.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_43_Black.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_43_Black.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Numpad_Black.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Numpad_Black.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Numpad_Black.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_AW_CloseMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_CloseMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_CloseMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_DownMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_DownMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_DownMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_MiddleMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_MiddleMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_MiddleMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_UpMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_UpMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_UpMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_FrontMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_FrontMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_FrontMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_MiddleMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_MiddleMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_MiddleMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_RearMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_RearMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_RearMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_ConvMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_ConvMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_ConvMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Pusher_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Pusher_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Pusher_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_InletShutter_CloseMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_CloseMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_CloseMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_InletShutter_OpenMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_OpenMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_OpenMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutletShutter_CloseMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_CloseMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_CloseMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutletShutter_OpenMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_OpenMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_OpenMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_AW_Open_Small_MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open_Small_MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_AW_Open_Small_MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Lifter_Up_SmallMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up_SmallMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Lifter_Up_SmallMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_Front_SmallMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front_SmallMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_Front_SmallMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Conv_SmallMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv_SmallMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Conv_SmallMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutltShutr_Cls_SmallMagVrify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutltShutr_Cls_SmallMagVrify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutltShutr_Cls_SmallMagVrify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_TravLifMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_TravLifMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_TravLifMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_MagConv1MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv1MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv1MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_MagConv2MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv2MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv2MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_MagConv3MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv3MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv3MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp1_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp1_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp2_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp2_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp3_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp3_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPadDwnBlack_Big.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPadDwnBlack_Big.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPadDwnBlack_Big.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPad_UpBlack_Big.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_UpBlack_Big.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_UpBlack_Big.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv1MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv2MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv3MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp1_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp1_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp2_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp2_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp3_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp3_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp1_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp1_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp2_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp2_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp3_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp3_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPad_Down_7_black.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_7_black.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Down_7_black.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_AlphaPad_Up_7_black.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_7_black.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_AlphaPad_Up_7_black.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Icon_Alarm_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Icon_Alarm_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW3_OpenDisengage_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenDisengage_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenDisengage_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW1_OpenDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_OpenDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_OpenDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW1_OpenEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_OpenEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_OpenEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW1_CloseDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_CloseDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_CloseDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW1_CloseEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_CloseEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW1_CloseEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_AIV.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_AIV.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_AIV.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_AIV.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_AIV.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_AIV.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top1_AIV.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top1_AIV.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top1_AIV.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.AIV_Top_View.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/AIV_Top_View.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/AIV_Top_View.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Text_Disabled_90x90.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_90x90.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Text_Disabled_90x90.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW2_OpenDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_OpenDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_OpenDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW2_OpenEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_OpenEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_OpenEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW2_CloseDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_CloseDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_CloseDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW2_CloseEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_CloseEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW2_CloseEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW3_OpenDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW3_OpenEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_OpenEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW3_CloseDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_CloseDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_CloseDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagAW3_CloseEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_CloseEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagAW3_CloseEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_InletShutter_Close_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Close_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Close_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_InletShutter_Open_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Open_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_InletShutter_Open_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutletShutter_Close_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Close_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutletShutter_Open_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Open_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutletShutter_Open_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp1_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv1MagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1MagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1MagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv2MagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2MagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv2MagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv3MagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3MagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv3MagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp1_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp1_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp1_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp2_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp2_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp2_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp3_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_SelClamp3_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_SelClamp3_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp1_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp1_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp2_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp2_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp2_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp3_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_BotClamp3_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_BotClamp3_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp1_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp1_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp1_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp2_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp2_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp2_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp3_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_TopClamp3_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_TopClamp3_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagConv1_MagAW_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1_MagAW_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagConv1_MagAW_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_UL_Front_MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_UL_Front_MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_UL_Front_MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_AW_CloseMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_CloseMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_CloseMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_AW_Open_Small_MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_Open_Small_MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_Open_Small_MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_AW_OpenMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_OpenMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_AW_OpenMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BotClamp1_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp1_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp1_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BotClamp1_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp1_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp1_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BotClamp2_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp2_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp2_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BotClamp2_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp2_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BotClamp2_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Conv_SmallMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Conv_SmallMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Conv_SmallMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_ConvMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_ConvMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_ConvMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_InletShutter_CloseMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_InletShutter_CloseMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_InletShutter_CloseMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_InletShutter_OpenMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_InletShutter_OpenMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_InletShutter_OpenMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Lifter_DownMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_DownMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_DownMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Lifter_MiddleMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_MiddleMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_MiddleMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Lifter_Up_SmallMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_Up_SmallMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_Up_SmallMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Lifter_UpMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_UpMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Lifter_UpMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW2_CloseDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_CloseDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_CloseDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW2_CloseEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_CloseEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_CloseEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW2_OpenDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW2_OpenEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW1_CloseDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_CloseDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_CloseDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW1_CloseEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_CloseEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_CloseEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW1_OpenDisengage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_OpenDisengage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_OpenDisengage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW1_OpenEngage.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_OpenEngage.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW1_OpenEngage.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagConv1_MagAW_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv1_MagAW_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv1_MagAW_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagConv1MagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv1MagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv1MagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagConv2MagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv2MagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConv2MagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_OutletShutter_CloseMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_CloseMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_CloseMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_OutletShutter_OpenMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_OpenMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_OpenMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_OutltShutr_Cls_SmallMagVrify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutltShutr_Cls_SmallMagVrify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutltShutr_Cls_SmallMagVrify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Pusher_ExtMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Pusher_ExtMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Pusher_ExtMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Pusher_RetMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Pusher_RetMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Pusher_RetMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_SelClamp1_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp1_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp1_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_SelClamp1_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp1_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp1_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_SelClamp2_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp2_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp2_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_SelClamp2_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp2_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_SelClamp2_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Top_MagConv1MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_MagConv1MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_MagConv1MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Top_MagConv2MagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_MagConv2MagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_MagConv2MagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Top_TravLifMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_TravLifMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top_TravLifMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp1_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp1_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp2_ExtMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_ExtMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_ExtMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp2_RetMagVerify_MagAW.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_RetMagVerify_MagAW.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_RetMagVerify_MagAW.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Trav_Front_SmallMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_Front_SmallMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_Front_SmallMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Trav_FrontMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_FrontMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_FrontMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Trav_MiddleMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_MiddleMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_MiddleMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Trav_RearMagVerify.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_RearMagVerify.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Trav_RearMagVerify.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagAW2_OpenEngage_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenEngage_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagAW2_OpenEngage_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_Top1_AIV.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top1_AIV.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_Top1_AIV.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_150x30_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_150x30_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_150x30_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Green_150x30_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_150x30_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Green_150x30_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_150x30_R8.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_150x30_R8.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_150x30_R8.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_OutletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_OutletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_OutletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagConvRun1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConvRun1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConvRun1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BottomClamp1_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp1_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp1_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BottomClamp1_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp1_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp1_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_MagConvRun2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConvRun2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_MagConvRun2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BottomClamp2_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp2_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp2_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_BottomClamp2_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp2_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_BottomClamp2_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp1_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp1_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp1_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp2_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc2_TopClamp2_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc2_TopClamp2_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Inlet_Shutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Inlet_Shutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Inlet_Shutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Inlet_Shutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Inlet_Shutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Inlet_Shutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_AW_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_AW_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_AW_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_BtmClmp1_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp1_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp1_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_BtmClmp1_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp1_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp1_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_BtmClmp2_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp2_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp2_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_BtmClmp2_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp2_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp2_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_BtmClmp3_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp3_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp3_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_BtmClmp3_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp3_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_BtmClmp3_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Lifter_bottom.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_bottom.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_bottom.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Lifter_middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Lifter_top.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_top.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Lifter_top.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Mag1Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag1Conv.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag1Conv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Mag2Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag2Conv.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag2Conv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Mag3Conv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag3Conv.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Mag3Conv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Pusher_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Pusher_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Pusher_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Pusher_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Pusher_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Pusher_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_PusherAW_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_PusherAW_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_PusherAW_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_pusherConv.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_pusherConv.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_pusherConv.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Safetybar1_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar1_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar1_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Safetybar1_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar1_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar1_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Safetybar2_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar2_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar2_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Safetybar2_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar2_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar2_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Safetybar3_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar3_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar3_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Safetybar3_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar3_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Safetybar3_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_TopClmp1_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp1_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp1_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_TopClmp1_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp1_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp1_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_TopClmp2_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp2_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp2_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_TopClmp2_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp2_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp2_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_TopClmp3_Ext.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp3_Ext.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp3_Ext.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_TopClmp3_Ret.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp3_Ret.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_TopClmp3_Ret.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Travs_Mag1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Travs_Mag2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_Travs_Mag3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_Travs_Mag3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Outlet_Shutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Outlet_Shutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Outlet_Shutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Outlet_Shutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Outlet_Shutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Outlet_Shutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Top_MagConv11.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv11.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Top_MagConv11.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_Mag2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_Mag3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_Mag1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_TravLif.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_TravLif.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_TravLif.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_InletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_InletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_OutletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_OutletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_Down.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Down.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_Up.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Up.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_Rear.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Rear.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Rear.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_Up.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Up.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Up.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_Down.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Down.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Down.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Trav_Front.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Trav_Middle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Middle.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Middle.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Trav_Rear.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Rear.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Rear.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_InletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_InletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top_Trav.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Trav.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Trav.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top_Mag1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top_Mag2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_Down_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Down_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Down_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_Middle_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Middle_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Middle_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Trav_FrontRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_FrontRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_FrontRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Trav_MiddleRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_MiddleRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_MiddleRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Trav_RearRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_RearRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Trav_RearRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_OutShutter_Open_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShutter_Open_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShutter_Open_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_InShutter_Close_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InShutter_Close_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InShutter_Close_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_InShutter_Open_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InShutter_Open_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_InShutter_Open_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_OutShutter_Close_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShutter_Close_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShutter_Close_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top_Trav_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Trav_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Trav_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top_Mag1_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag1_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag1_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Top_Mag2_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag2_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Top_Mag2_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_DownRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_DownRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_DownRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_MiddleRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_MiddleRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_MiddleRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_UpRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_UpRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_UpRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_FrontRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_FrontRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_FrontRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_MiddleRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_MiddleRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_MiddleRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_RearRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_RearRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_RearRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_InShutter_CloseRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InShutter_CloseRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InShutter_CloseRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_InShutter_OpenRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InShutter_OpenRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_InShutter_OpenRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_OutShutter_CloseRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutter_CloseRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutter_CloseRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_OutShutter_OpenRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutter_OpenRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutter_OpenRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_TravLifRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_TravLifRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_TravLifRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_TopRToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_TopRToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_TopRToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_Mag1RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag1RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag1RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_Mag2RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag2RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag2RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Top_Mag3RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag3RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Top_Mag3RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_Top_RToL.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Top_RToL.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Top_RToL.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_Up_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Up_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_Up_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Trav_Front_LToR_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_LToR_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_LToR_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_OuShutter_Open_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OuShutter_Open_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OuShutter_Open_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_AW_Open_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_AW_Open_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_AW_Open_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Conv_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Conv_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Conv_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Trav_Front_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_Up_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Up_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_Up_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_Front_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Front_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_Front_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_OutShutterCloseSmall.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutterCloseSmall.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutterCloseSmall.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_OutShut_Open_Small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShut_Open_Small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShut_Open_Small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Lifter_RToLSmall.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_RToLSmall.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Lifter_RToLSmall.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_Trav_Front_RToL_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_RToL_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_Trav_Front_RToL_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_OutShut_OpenRToL_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShut_OpenRToL_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutShut_OpenRToL_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Lifter_RToLSmall.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_RToLSmall.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Lifter_RToLSmall.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_Trav_MiddleRToLSmall.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_MiddleRToLSmall.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_Trav_MiddleRToLSmall.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3LifMag_OutShutterRToLSmall.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutterRToLSmall.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3LifMag_OutShutterRToLSmall.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_OutletShutter_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutletShutter_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutletShutter_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McLifMag_OutletShutter_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutletShutter_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McLifMag_OutletShutter_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Grey_170x55_R11.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_170x55_R11.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Grey_170x55_R11.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.ColorBtn_Silver_170x55_R11.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_170x55_R11.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/ColorBtn_Silver_170x55_R11.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Btm_Lane1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Btm_Lane1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Btm_Lane1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Btm_Lane2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Btm_Lane2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Btm_Lane2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Mid_Lane1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Mid_Lane1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Mid_Lane1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Mid_Lane2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Mid_Lane2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Mid_Lane2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Top_Lane1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Top_Lane2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_BtmMagConv_Lane1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_BtmMagConv_Lane1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_BtmMagConv_Lane1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_BtmMagConv_Lane2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_BtmMagConv_Lane2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_BtmMagConv_Lane2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_TopMagConv_Lane1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_TopMagConv_Lane2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Top_Lane1_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane1_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane1_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Top_Lane2_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane2_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Top_Lane2_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_TopMagConv_Lane1_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane1_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_TopMagConv_Lane1_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_InShutter_Lane1_close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_InShutter_Lane1_close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_InShutter_Lane1_close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_InShutter_Lane1_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_InShutter_Lane1_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_InShutter_Lane1_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_OutShutter_Lane1_close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_OutShutter_Lane1_close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_OutShutter_Lane1_close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_OutShutter_Lane1_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_OutShutter_Lane1_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_OutShutter_Lane1_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Lifter_Shutter_Lane1_small.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Shutter_Lane1_small.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Lifter_Shutter_Lane1_small.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_MagLane_500x300.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_500x300.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_500x300.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Right_MagLane1_150x150.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Right_MagLane1_150x150.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Right_MagLane1_150x150.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_MagLane_Mag1_150x150.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Mag1_150x150.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Mag1_150x150.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_MagLane_Mag2_150x150.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Mag2_150x150.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Mag2_150x150.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_MagLane_MagC1_150x150.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_MagC1_150x150.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_MagC1_150x150.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_MagLane_MagC2_150x150.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_MagC2_150x150.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_MagC2_150x150.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_Top_MagLane_Trav_150x150.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Trav_150x150.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_Top_MagLane_Trav_150x150.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Bitmap_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Bitmap_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Bitmap_1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Bitmap_2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Bitmap_2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Bitmap_2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.McTopView_450x300.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McTopView_450x300.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/McTopView_450x300.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Highlight_LiftTrav.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Highlight_LiftTrav.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Highlight_LiftTrav.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Mag1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Mag2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Mag3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Mag3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutShut3_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut3_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut3_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutShut1_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut1_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut1_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutShut2_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut2_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut2_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_OutShut_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_OutShut_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_LftBm_M.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBm_M.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBm_M.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_LftBm_T.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBm_T.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBm_T.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_LftBtm_B.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBtm_B.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_LftBtm_B.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_F.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_F.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_F.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_M.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_M.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_M.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Trav_R.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_R.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Trav_R.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClp1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClp2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagClp3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagClp3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagRoll1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll1.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagRoll2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_MagRoll3.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll3.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_MagRoll3.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDn.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDn.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDn.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDnWhPressed.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDnWhPressed.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDnWhPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowUp.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowUp.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowUp.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowUpWhPressed.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowUpWhPressed.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowUpWhPressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDDnWH_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWH_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWH_0.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDDnWH_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWH_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWH_1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDDnWhPressed_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWhPressed_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDDnWhPressed_0.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDUpWh_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWh_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWh_0.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDUpWh_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWh_1.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWh_1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowDUpWhPressed_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWhPressed_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowDUpWhPressed_0.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowSDnWh_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSDnWh_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSDnWh_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowSDnWhPressed_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSDnWhPressed_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSDnWhPressed_0.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowSUpWh_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSUpWh_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSUpWh_0.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Border_ArrowSUpWhPressed_0.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSUpWhPressed_0.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Border_ArrowSUpWhPressed_0.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.GenBtn_32x32_Arrow_Down_Active.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Down_Active.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Down_Active.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.GenBtn_32x32_Arrow_Down_Pressed.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Down_Pressed.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Down_Pressed.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.GenBtn_32x32_Arrow_Up_Active.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Up_Active.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Up_Active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.GenBtn_32x32_Arrow_Up_Pressed.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Up_Pressed.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/GenBtn_32x32_Arrow_Up_Pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_NumPad.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_NumPad.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Keypad_NumPad_Black.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_NumPad_Black.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Keypad_NumPad_Black.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_AW_Open.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_AW_Open.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_AW_Open.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc3_Epusher_PusherAW_Close.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_PusherAW_Close.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc3_Epusher_PusherAW_Close.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_StprRtrct2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_StprRtrct2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_StprRtrct2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Mc_StprExt2.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_StprExt2.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Mc_StprExt2.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Amber_Base_100x82.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Amber_Base_100x82.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Amber_Base_100x82.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Auto_Main_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Auto_Main_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Auto_Main_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Buzzer_Off_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_Off_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_Off_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Buzzer_On_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_On_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_On_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Buzzer_Standby_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_Standby_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Buzzer_Standby_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Green_Base_100x82.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Green_Base_100x82.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Green_Base_100x82.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Main_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Main_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Main_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Red_Base_100x82.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Red_Base_100x82.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Red_Base_100x82.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Reset_Main_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Reset_Main_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Reset_Main_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Sliver_Base_100x82.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Sliver_Base_100x82.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Sliver_Base_100x82.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Stop_Main_7.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Stop_Main_7.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Stop_Main_7.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/bminfo.Yellow_Base_100x82.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Yellow_Base_100x82.bminfo $(AS_PROJECT_PATH)/Logical/UI/Visu/Bitmaps/Yellow_Base_100x82.png
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/tdc., $(notdir $(TDC_SOURCES_Visu:.tdc=.vco)))

$(TEMP_PATH_Visu)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#Trend Data Configuration END




# ColorMap Table
CLM_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/clm., $(notdir $(CLM_SOURCES_Visu:.clm=.vco)))

$(TEMP_PATH_Visu)/clm.BtnChkReject.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BtnChkReject.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.BtnLoad.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BtnLoad.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.CheckBoxNRadio.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/CheckBoxNRadio.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.NumGeneralDisp.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/NumGeneralDisp.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.NumGeneralInput.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/NumGeneralInput.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.TxtGeneral.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/TxtGeneral.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.AlarmDisplay.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/AlarmDisplay.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.BtnGeneral.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BtnGeneral.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.BufferStatus.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/BufferStatus.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.CheckBox.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/CheckBox.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.General.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/General.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.LED.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/LED.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.MachineStatus.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MachineStatus.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.MenuBtn.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MenuBtn.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.MessageBoxMsg.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MessageBoxMsg.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.MessageBoxTitle.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MessageBoxTitle.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.MotionStatus.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/MotionStatus.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


$(TEMP_PATH_Visu)/clm.Table.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/ColorMaps/Table.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#ColorMap Table END




# Process
PRC_OBJECTS_Visu = $(addprefix $(TEMP_PATH_Visu)/prc., $(notdir $(PRC_SOURCES_Visu:.prc=.vco)))

$(TEMP_PATH_Visu)/prc.Process_1.vco: $(AS_PROJECT_PATH)/Logical/UI/Visu/Processes/Process_1.prc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visu)' $(VCCFLAGS_Visu)  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas


#Process END


#
# Borders
#
BDR_SOURCES_Visu=$(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Switch_Down.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Switch_Up.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_150x50_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_MsgBox.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Flat_Black.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Flat_White.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/CheckBox_Off.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/CheckBox_On.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/RadioButton_Off.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/RadioButton_On.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Transparent.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_BG.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Icon_Grey.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_100x35_R6.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_80x35_R5.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_80x35_R5.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Mask_800x480.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_Display.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_100x35_R6.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_Input.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_150x50_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Red_150x50_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x80_R17.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x80_R17.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_100x50_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_100x50_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_100x50_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Slider_Bar.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_160x35_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_160x35_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_Detail.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_65x25_R6.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_65x25_R6.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Group_Silver.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled1.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Icon_Mask.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Full_Mask.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Red_100x50_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/SMEMA.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Rst_Blue.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Rst_Mask.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Blue_100x50_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_LightBlue_100x50_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/QuickAccess_Rst_Red.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftUp_Active.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftUp_Pressed.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftDown_Pressed.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Icon_Table_ShiftDown_Active.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_160x35_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_80x35_R5.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_100x35_R6.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Yellow_150x50_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Flat_Amber.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_150x50_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x60_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_340x60_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x60_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Mask_Round_53x43.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x50_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x50_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_340x55_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_340x55_R10.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled2.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Mask_LCSManage_80x80.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Text_Disabled3.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_150x30_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Green_150x30_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_150x30_R8.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Silver_170x55_R11.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/ColorBtn_Grey_170x55_R11.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowUp.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowDn.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowUpWhPressed.bdr $(AS_PROJECT_PATH)/Logical/UI/Visu/Borders/Border_ArrowDnWhPressed.bdr 
BDR_OBJECTS_Visu=$(TEMP_PATH_Visu)/bdr.Bordermanager.vco
$(TEMP_PATH_Visu)/bdr.Bordermanager.vco: $(BDR_SOURCES_Visu)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_Visu)' $(BDRFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu$(SRC_PATH_Visu)
#
# Logical fonts
#
$(TEMP_PATH_Visu)/lfnt.de.vco: $(TEMP_PATH_Visu)/de.lfnt $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu -sfas
$(TEMP_PATH_Visu)/lfnt.en.vco: $(TEMP_PATH_Visu)/en.lfnt $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu -sfas
$(TEMP_PATH_Visu)/lfnt.pt.vco: $(TEMP_PATH_Visu)/pt.lfnt $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu -sfas
$(TEMP_PATH_Visu)/lfnt.zh.vco: $(TEMP_PATH_Visu)/zh.lfnt $(VC_LANGUAGES_Visu)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visu) $(VCCFLAGS_Visu) -p Visu -sfas
LFNT_OBJECTS_Visu=$(TEMP_PATH_Visu)/lfnt.de.vco $(TEMP_PATH_Visu)/lfnt.en.vco $(TEMP_PATH_Visu)/lfnt.pt.vco $(TEMP_PATH_Visu)/lfnt.zh.vco 

#Runtime Object
$(VCR_OBJECT_Visu) : $(VCR_SOURCE_Visu)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_Visu) -rt  -p Visu -so $(VC_STATIC_OPTIONS_Visu) -vcr 4721 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Visu=$(TEMP_PATH_Visu)/localres.vca
$(LIB_LOCAL_RES_Visu) : $(TEMP_PATH_Visu)/Visu02.ccf

# Bitmap Library rules
LIB_BMP_RES_Visu=$(TEMP_PATH_Visu)/bmpres.vca
$(LIB_BMP_RES_Visu) : $(TEMP_PATH_Visu)/Visu03.ccf
$(BMGRP_OBJECTS_Visu) : $(PALFILE_Visu) $(VC_LANGUAGES_Visu)
$(BMINFO_OBJECTS_Visu) : $(PALFILE_Visu)

BUILD_FILE_Visu=$(TEMP_PATH_Visu)/BuildFiles.arg
$(BUILD_FILE_Visu) : BUILD_FILE_CLEAN_Visu $(BUILD_SOURCES_Visu)
BUILD_FILE_CLEAN_Visu:
	$(RM) /F /Q '$(BUILD_FILE_Visu)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_Visu=$(AS_CPU_PATH)/Visu01.br $(AS_CPU_PATH)/Visu02.br $(AS_CPU_PATH)/Visu03.br $(FONT_MODULES_Visu) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Visu): $(PROJECT_MODULES_Visu) $(TEMP_PATH_Visu)/Visu.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_Visu)/Visu.prj' -o '$@' -vc '$(VCOBJECT_Visu)' $(DEPENDENCIES_Visu) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Visu:.br=)))

$(AS_CPU_PATH)/Visu01.br: $(TEMP_PATH_Visu)/Visu01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

$(AS_CPU_PATH)/Visu02.br: $(TEMP_PATH_Visu)/Visu02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

$(AS_CPU_PATH)/Visu03.br: $(TEMP_PATH_Visu)/Visu03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visu) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visu)' -f '$<' -o '$@' $(DEPENDENCIES_Visu)

# General Build rules END
$(LIB_LOCAL_OBJ_Visu) : $(TEMP_PATH_Visu)/Visu01.ccf

# Main Module
$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm:
$(TEMP_PATH_Visu)/Visu.prj: $(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_Visu) -o Visu -proj Visu
	$(VCPL) $(notdir $(PROJECT_MODULES_Visu:.br=,4)) Visu,2 -o '$@' -p Visu -vc 'Visu' -verbose 'False' -fl '$(TEMP_PATH_ROOT_Visu)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visu.vcm' -vcr '$(VCR_SOURCE_Visu)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Visu=$(TEMP_PATH_Visu)\Visu01.ccf.lfl
$(TEMP_PATH_Visu)/Visu01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu) $(TEMP_PATH_Visu)/Visu03.ccf $(LIB_LOCAL_RES_Visu) $(TEMP_PATH_Visu)/Visu02.ccf $(DIS_OBJECTS_Visu) $(PAGE_OBJECTS_Visu) $(VCS_OBJECTS_Visu) $(VCVK_OBJECTS_Visu) $(VCRT_OBJECTS_Visu) $(TPR_OBJECTS_Visu) $(TXTGRP_OBJECTS_Visu) $(LAYER_OBJECTS_Visu) $(VCR_OBJECT_Visu) $(TDC_OBJECTS_Visu) $(TRD_OBJECTS_Visu) $(TRE_OBJECTS_Visu) $(PRC_OBJECTS_Visu) $(SCR_OBJECTS_Visu)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_Visu)" DEL /F /Q "$(DEL_TARGET01_LFL_Visu)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TEMP_PATH_Visu)/prc.Process_1.vco' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_LOCAL_OBJ_Visu)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4721 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Visu=$(TEMP_PATH_Visu)\Visu02.ccf.lfl
$(TEMP_PATH_Visu)/Visu02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visu) $(TEMP_PATH_Visu)/Visu03.ccf $(BDR_OBJECTS_Visu) $(LFNT_OBJECTS_Visu) $(CLM_OBJECTS_Visu)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_Visu)" DEL /F /Q "$(DEL_TARGET02_LFL_Visu)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visu)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_Visu:.vco=.vco|)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_LOCAL_RES_Visu)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4721 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Visu=$(TEMP_PATH_Visu)\Visu03.ccf.lfl
$(TEMP_PATH_Visu)/Visu03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Visu) $(BMINFO_OBJECTS_Visu) $(PALFILE_Visu)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_Visu)" DEL /F /Q "$(DEL_TARGET03_LFL_Visu)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/UI/Visu/Package.vcp' -temp '$(TEMP_PATH_Visu)' -prj '$(PRJ_PATH_Visu)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visu -lib '$(LIB_BMP_RES_Visu)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4721 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Visu

vcPostBuild_Visu :
	$(VCC) -pb -vcm '$(TEMP_PATH_Visu)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_Visu) -p Visu -vcr 4721 -sfas

# Post Build Steps END
