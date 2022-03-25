const URL_TOKEN="token/";

const URL_REGISTER="student/student-user/";

const URL_ADMIN_INFO="student/admin-info/";

const URL_REFRESH_TOKEN="token/refresh/";

const URL_CHECK_USERNAME_PASSWORD="check_username_pwd/";

const URL_LOGIN="student/student-user/";

const URL_POINT_TEMPLATE="student/point-templates/";

const URL_ANNOUNCEMENT="student/announcements/";

const URL_GET_TOP_STUDENTS="competition/list_top_students/";

const URL_GET_TOTAL_POINTS_BY_DAY="student/point-records/points_stats/?type=total_points_by_day";

const URL_GET_TOTAL_POINTS_BY_TYPE="student/point-records/points_stats/?type=total_points_by_type";

const URL_GET_DAILY_POINTS_BY_TYPE="student/point-records/points_stats/?type=daily_points_by_type&fbclid=IwAR0kT-mGElnKyIiQTRYe4LfaVxm53d7r2E5zPRY6IyDfYamMxysIGCrrfnk";

const URL_GET_ANNOUNCEMENTS="student/announcements/";

//const URL_POINT_RECORDS="student/point-records/?ramadan_record_date=23";

String getPointRecordURLByDate(int date) {
  return "student/point-records/?date=$date";
}

String putPointRecordURLByRecordID({required int id,required int date}) {
  return "student/point-records/$id/?date=$date";
}

String getDailyPointsURLByDate(int date) {
  return "student/point-records/points_stats/?&date=$date&type=daily_points_by_type";//"student/point-records/points_stats/?&date=$date&type=daily_points_by_type";
}
const URL_COMPETITION="competition/";

const String URL_WIRD_PAGE_ON_FACEBOOK = "https://www.facebook.com/Wird.Competition/";
const String URL_WIRD_WEBSITE = "https://wird.app/";
const String URL_WIRD_EMAIL = "mailto:CONTACT@WIRD.COM";