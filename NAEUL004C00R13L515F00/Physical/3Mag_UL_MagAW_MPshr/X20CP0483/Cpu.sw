<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.8.4.50 SP?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="DInput" Source="DInput.DInput.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="DOutput" Source="DOutput.DOutput.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="TCPBtm" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <Task Name="TCPTop" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2">
    <Task Name="PshrConv" Source="Conv.PshrConv.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MagConv2Cl" Source="MagConv_LiftnTrav.MagConv2Clp1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MagConv2C1" Source="MagConv_LiftnTrav.MagConv2Clp2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MagConv2C2" Source="MagConv_LiftnTrav.MagConv2Clp3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MtrPshr" Source="MtrPshr.MtrPshr.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="PullerPush" Source="CANOpenServo.PullerPusher.PullerPusher.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#3">
    <Task Name="UI" Source="UI.UI.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Startup" Source="Startup.Startup.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="General" Source="General.General.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="UsrFolder" Source="UsrFolder.UsrFolder.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="LibVer" Source="LibVer.LibVer.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="HWInfo" Source="HWInfo.HWInfo.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="TLBuz" Source="TLBuz.TLBuz.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Alarm" Source="Alarm.Alarm.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="ProdRcp" Source="ProdRcp.ProdRcp.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MpProdRcp" Source="MpProdRcp.MpProdRcp.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MagRcp" Source="MagRcp.MagRcp.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="McParam" Source="McParam.McParam.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="NtParam" Source="NtParam.NtParam.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="UsrMgmt" Source="UsrMgmt.UsrMgmt.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="OvenInfoA" Source="OvenInfo.OvenInfoA.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="OvenInfoB" Source="OvenInfo.OvenInfoB.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Buffer1" Source="Buffer.Buffer1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Buffer2" Source="Buffer.Buffer2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Buffer3" Source="Buffer.Buffer3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="BufferMagA" Source="Buffer.BufferMagA.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="BufferMagB" Source="Buffer.BufferMagB.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USSMEMAA" Source="SMEMA.USSMEMAA.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USSMEMAB" Source="SMEMA.USSMEMAB.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USSMEMA1" Source="SMEMA.USSMEMA1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USSMEMA2" Source="SMEMA.USSMEMA2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USSMEMA3" Source="SMEMA.USSMEMA3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="DSSMEMA1" Source="SMEMA.DSSMEMA1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="DSSMEMA2" Source="SMEMA.DSSMEMA2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="DSSMEMA3" Source="SMEMA.DSSMEMA3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Pneu2SenIn" Source="Pneu.PneuInShutter.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Pneu2SenOu" Source="Pneu.PneuOutShutter.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="PneuNoSenS" Source="Pneu.PneuStopperA.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="PneuNoSen1" Source="Pneu.PneuStopperB.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="PneuNoSen2" Source="Pneu.PneuStopperC.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Pneu2SenSe" Source="Pneu.PneuSelClamp1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Pneu2SenMa" Source="Pneu.PneuMag1SafetyBar.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Pneu2SenM3" Source="Pneu.PneuMag1AWEngage.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Pneu2SenO1" Source="Pneu.PneuOutShutter2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Pneu2SenO2" Source="Pneu.PneuOutShutter3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AWOpen" Source="CANOpenServo.AW.AWOpen.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AWPushOrPu" Source="CANOpenServo.AW.AWPushOrPuller.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Trav" Source="CANOpenServo.Trav.Trav.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="LifterBtm" Source="CANOpenServo.Lifter.LifterBtm.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Lifter2" Source="CANOpenServo.Lifter.Lifter2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MagAWOpen1" Source="CANOpenServo.MagAW.MagAWOpen1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MagAWOpen2" Source="CANOpenServo.MagAW.MagAWOpen2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MagAWOpen3" Source="CANOpenServo.MagAW.MagAWOpen3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Hermes" Source="Hermes.Hermes.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USHermesA" Source="Hermes.USHermesA.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USHermesB" Source="Hermes.USHermesB.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="RmtHermes" Source="Hermes.RmtHermes.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="SvyHermes" Source="Hermes.SvyHermes.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="LFLeader" Source="LF.LFLeader.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="LFFollower" Source="LF.LFFollower.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Follower1" Source="LF.Follower1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Follower2" Source="LF.Follower2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AutoRcp" Source="AutoRcp.AutoRcp.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="LCS" Source="LCS.LCS.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="LCSMngRcp" Source="LCS.LCSMngRcp.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="LCSLF" Source="LCS.LCSLF.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Ops" Source="Operations.Ops.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="OpsTravLif" Source="Operations.OpsTravLifUL.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="OpsMagConv" Source="Operations.MagConv_StationaryPlat.OpsMagConvUL1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="OpsMagCon1" Source="Operations.MagConv_StationaryPlat.OpsMagConvUL2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="OpsMagCon2" Source="Operations.MagConv_StationaryPlat.OpsMagConvUL3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="OpsLifMagU" Source="Operations.OpsLifMagUL.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AGV" Source="AGVCom.AGV.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AGV1" Source="AGVCom.AGV1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AGV2" Source="AGVCom.AGV2.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="AGV3" Source="AGVCom.AGV3.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Simu" Source="Simulation.Simu.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Simu1" Source="Simulation.Simu1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Machine" Source="Machine.Machine.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="USSOT1" Source="SOT.USSOT1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="DSSOT1" Source="SOT.DSSOT1.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#4">
    <Task Name="RstErr" Source="RstErr.RstErr.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8" />
  <DataObjects>
    <DataObject Name="Acp10sys" Source="" Memory="UserROM" Language="Binary" />
  </DataObjects>
  <VcDataObjects>
    <VcDataObject Name="Visu" Source="UI.Visu.dob" Memory="UserROM" Language="Vc" WarningLevel="2" />
  </VcDataObjects>
  <Binaries>
    <BinaryObject Name="vcfntttf" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arialbi" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccbmp" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcshared" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpdvnc" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccshape" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcfile" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcgclass" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arial" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcchspot" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcmgr" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arialxsr" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccslider" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcdsint" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccbtn" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcdsloc" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccovl" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccpopup" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccline" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcctext" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcalarm" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcbclass" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccbar" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="visvc" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="udbdef" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcrt" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccnum" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccstr" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Visu03" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccddbox" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arialbd" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpdsw" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcnet" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TCData" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="Visu02" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Visu01" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vctcal" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccdt" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccalarm" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arsvcreg" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpfar00" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="acp10cfg" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Acp10map" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="iomap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Role" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="ashwac" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="User" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Config" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpfgen" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="OpcUaMap" Source="" Memory="UserROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="standard" Source="Libraries.standard.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="runtime" Source="Libraries.runtime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="astime" Source="Libraries.astime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="asstring" Source="Libraries.asstring.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="operator" Source="Libraries.operator.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIecCon" Source="Libraries.AsIecCon.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsCANopen" Source="Libraries.AsCANopen.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="visapi" Source="Libraries.visapi.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Libraries.FileIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIODiag" Source="Libraries.AsIODiag.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsMem" Source="Libraries.AsMem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="dvframe" Source="Libraries.dvframe.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsOpcUac" Source="Libraries.AsOpcUac.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsARCfg" Source="Libraries.AsARCfg.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsTCP" Source="Libraries.AsTCP.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsFltGen" Source="Libraries.AsFltGen.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="brsystem" Source="Libraries.brsystem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpCom" Source="Libraries.MpCom.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpBase" Source="Libraries.MpBase.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpRecipe" Source="Libraries.MpRecipe.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Acp10man" Source="Libraries.Acp10man.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Acp10par" Source="Libraries.Acp10par.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NcGlobal" Source="Libraries.NcGlobal.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsMath" Source="Libraries.AsMath.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="NtBuffer" Source="NtLibraries.NtBuffer.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtConv" Source="NtLibraries.NtConv.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtFileIO" Source="NtLibraries.NtFileIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtLogFile" Source="NtLibraries.NtLogFile.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtMem" Source="NtLibraries.NtMem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtMessage" Source="NtLibraries.NtMessage.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtOvenInfo" Source="NtLibraries.NtOvenInfo.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtPneu" Source="NtLibraries.NtPneu.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtRS232" Source="NtLibraries.NtRS232.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtSMEMA" Source="NtLibraries.NtSMEMA.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtTCP" Source="NtLibraries.NtTCP.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtTLBuz" Source="NtLibraries.NtTLBuz.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtVersion" Source="NtLibraries.NtVersion.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtSOT" Source="NtLibraries.NtSOT.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtLF" Source="NtLibraries.NtLF.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtMotion" Source="NtLibraries.NtMotion.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtRecipe" Source="NtLibraries.NtRecipe.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtGeneral" Source="NtLibraries.NtGeneral.lby" Memory="UserROM" Language="IEC" Debugging="true" />
    <LibraryObject Name="NtUI" Source="NtLibraries.NtUI.lby" Memory="UserROM" Language="IEC" Debugging="true" />
    <LibraryObject Name="NtHermes" Source="NtLibraries.NtHermes.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="dataobj" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="vcresman" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="powerlnk" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="NtOpConXML" Source="NtLibraries.NtOpConXML.lby" Memory="UserROM" Language="IEC" Debugging="true" />
  </Libraries>
</SwConfiguration>