// import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class db{

  //user table
  static const String userTable="users";
  //user columns

  static const String user_id="id";
  static const String user_firstname="firstname";
  static const String user_lastname="lastname";
  static const String user_email="email";
  static const String user_region="region";
  static const String user_password="password";

  //station table
  static const String stationTable="liststations";
  //stations colums
  static const String station_id="id";
  static const String station_identifier="identifier";
  static const String station_rcNumber="RcNumber";
  static const String station_date="date";
  static const String station_businessName="businessName";
  static const String station_stationName="stationName";
  static const String station_tel="tel";
  static const String station_email="email";
  static const String station_regionId="regionId";
  static const String station_state="State";
  static const String station_city="City";
  static const String station_lga="Lga";
  static const String station_address="address";
  static const String station_longitude="longitude";
  static const String station_latitude="latitude";
  static const String station_nozzle="nozzle";
  static const String station_tanks="tanks";
  static const String station_product="product";
  static const String station_updateTime="updateTime";
  static const String station_pMS="PMS";
  static const String station_aGO="AGO";
  static const String station_dPK="DPK";
  static const String station_status="status";
  static const String station_actualUpdateTime="actualUpdateTime";
  static const String station_Idlestat="Idlestat";
  static const String station_idleComment="idleComment";
   //tank probdata table
  static const String tankProbTable="tankprob";

  //tank probdata columns
  static const String tanksStation_prob_id="stationid";
  static const String tank_prob_id="id";
  static const String tank_prob_currentDateTime="currentDateTime";
  static const String tank_prob_currentDateTimeEpoch="currentDateTimeEpoch";
  static const String tank_prob_TankNumber="TankNumber";
  static const String tank_prob_oilHeight="oilHeight";
  static const String tank_prob_oilVolume="oilVolume";
  static const String tank_prob_WaterHeight="WaterHeight";
  static const String tank_prob_WaterVolume="WaterVolume";
  static const String tank_prob_Temperature="Temperature";
  static const String tank_prob_alarm03="alarm03";
  static const String tank_prob_alarm05="alarm05";
  static const String tank_prob_alarm07="alarm07";
  static const String tank_prob_alarm09="alarm09";
  static const String tank_prob_product="product";
  static const String tank_prob_capacity="capacity";
  static const String tank_prob_time="time";
  static const String tank_prob_localUpdatedTime="lastUpdatedTime";
  static const String tank_prob_state="state";
  static const String tank_prob_zone="regionid";

  //tank  table
  static const String tankTable="tank";

  //tank  columns
  static const String tanksStation_id="stationid";
  static const String tank_id="id";
  static const String tank_currentDateTime="currentDateTime";
  static const String tank_TankNumber="TankNumber";
  static const String tank_oilHeight="oilHeight";
  static const String tank_oilVolume="oilVolume";
  static const String tank_WaterHeight="WaterHeight";
  static const String tank_WaterVolume="WaterVolume";
  static const String tank_Temperature="Temperature";
  static const String tank_alarm03="alarm03";
  static const String tank_alarm05="alarm05";
  static const String tank_alarm07="alarm07";
  static const String tank_alarm09="alarm09";
  static const String tank_product="product";
  static const String tank_capacity="capacity";
  static const String tank_localUpdatedTime="lastUpdatedTime";
  static const String tank_state="state";
  static const String tank_zone="regionid";



  //graphRegion  table
  static const String graphRegionTable="graphRegion";


  //graphRegion  columns
  static const String graphRegion_id="id";
  static const String graphRegion_totalAGO="totalAGO";
  static const String graphRegion_totalDPK="totalDPK";
  static const String graphRegion_totalPMS="totalPMS";
  static const String graphRegion_region="region";
  static const String graphRegion_localUpdatedTime="lastUpdatedTime";
  //graphState  table
  static const String graphStateTable="graphState";


  //graphState  columns
  static const String graphState_id="id";
  static const String graphState_totalAGO="totalAGO";
  static const String graphState_totalDPK="totalDPK";
  static const String graphState_totalPMS="totalPMS";
  static const String graphState_state="state";
  static const String graphState_localUpdatedTime="lastUpdatedTime";


  //booking  table
  static const String bookingTable="booking";

  //booking  columns
  static const String booking_id="id";
  static const String booking_date="date";
  static const String booking_stationId="stationId";
  static const String booking_stationName="stationName";
  static const String booking_offence="offence";
  static const String booking_remarks1="remarks1";
  static const String booking_remarks2="remarks2";
  static const String booking_status="status";
  static const String booking_deleted="deleted";
  static const String booking_dateDeleted="dateDeleted";
  static const String booking_selectBusinessNameFromWordStationStationlistWhereStationlistIdBookingsStationId="selectBusinessNameFromWordStationStationlistWhereStationlistIdBookingsStationId";


  //sanctions  table
  static const String sanctionsTable="sanctions";

//sanctions  columns
  static const String sanctions_id="id";
  static const String sanctions_date="date";
  static const String sanctions_stationId="stationId";
  static const String sanctions_stationName="stationName";
  static const String sanctions_offence="offence";
  static const String sanctions_fine="fine";
  static const String sanctions_remarks1="remarks1";
  static const String sanctions_remarks2="remarks2";
  static const String sanctions_status="status";
  static const String sanctions_deleted="deleted";
  static const String sanctions_dateDeleted="dateDeleted";
  static const String sanctions_selectBusinessNameFromWordStationStationlistWhereStationlistIdSanctionsStationId="selectBusinessNameFromWordStationStationlistWhereStationlistIdSanctionsStationId";

  //station analysis  table
  static const String stationAnalysisTable="stationAnalysisTable";

//sanctions  columns
  static const String station_analysis_TankNumber="id";
  static const String station_analysis_product="product";
  static const String station_analysis_oilVolume="oilVolume";
  static const String station_analysis_time="time";
  static const String station_analysis_date="date";



  //db
  static const String db_name="Alphatrack_Db42";
  // static   Future<String>  get inMemoryDatabasePath async{
  //   sqfliteFfiInit();
  //   String databasePath = await databaseFactoryFfi.getDatabasesPath();
  //   String path = "$databasePath/$db_name";
  //
  //   return path;
  // }
//   static String inMemoryDatabasePath = ".dart_tool//sqflite_common_ffi//databasesAlphatrack_Db24";
  // C:\Program Files (x86)\AlphaTrack_DPR\.dart_tool\sqflite_common_ffi\databases

}