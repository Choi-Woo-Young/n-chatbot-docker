
// class EmbeddingFileModel(BaseM):
//     file_id: Union[int, None] = None
//     file_path: Union[str, None] = None
//     file_name: Union[str, None] = None
//     orign_file_name: Union[str, None] = None
//     category_name: Union[str, None] = None
//     service_cd: Union[str, None] = None
//     service_name: Union[str, None] = None
//     embedding_yn: Union[bool, None] = None
//     service_desc: Union[str, None] = None

//     class Config:
//         from_attributes = True

declare interface EmbeddingFileType extends Record<string, any> {
  
  file_id?: number;
  file_path?: string;
  file_name?: string;
  orign_file_name?: string;
  category_name?: string;
  service_cd?: string;
  service_name?: string;
  embedding_yn?: boolean;
  service_desc?: string;
  

  create_by?: number;
  create_date?: string;
  update_by?: number;
  update_date?: string;
  last_modified_time?: string;
  del_yn?: string;
}
