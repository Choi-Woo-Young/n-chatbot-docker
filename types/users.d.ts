declare interface UsersType extends User {
  id?: string;
  email?: string;
  emailVerified?: Date;
  password?: string;

  user_id?: number;
  user_nm?: string;
  email?: string;
  password?: string;
  role_cd?: string;

  create_by?: number;
  create_date?: string;
  update_by?: number;
  update_date?: string;
  del_yn?: string;

  mng_services?: string;
  dept_nm?: string;
  position_nm?: string;
  ip?: string;
  guide_tour_json?: string;
}
