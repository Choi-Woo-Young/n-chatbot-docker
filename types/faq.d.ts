declare interface FaqType extends Record<string, any> {
  faq_id?: number;
  question?: string;
  answer?: string;
  ref_service_cd?: string;
  ref_link?: string;

  create_by?: number;
  create_date?: string;
  update_by?: number;
  update_date?: string;
  last_modified_time?: string;
  del_yn?: string;
}
