INSERT INTO code_group (code_group_id,code_group_name,code_group_desc,code_group_order,code_group_use_yn,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('CRSTT','Chatroom 상태','채팅방 상태',1.0,true,NULL,NULL,NULL,NULL,false),
	 ('AUTH','user 권한','ADM(관리자)/MGR(담당자)/USR(일반사용자)/BOT(봇)',1.0,true,NULL,NULL,NULL,NULL,false),
	 ('FBSTT','feedback 상태','피드백 상태',1.0,true,NULL,NULL,NULL,NULL,NULL);




INSERT INTO code (code_id,code_group_id,code_name,code_desc,code_value,code_order,code_use_yn,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('CRSTT010','CRSTT','봇과채팅중','봇과채팅중',NULL,1.0,true,NULL,NULL,NULL,NULL,false),
	 ('CRSTT020','CRSTT','이관종료','이관종료',NULL,1.0,true,NULL,NULL,NULL,NULL,false),
	 ('CRSTT050','CRSTT','종료','종료',NULL,1.0,true,NULL,NULL,NULL,NULL,false),
	 ('CRSTT030','CRSTT','지원대기','지원대기',NULL,1.0,true,NULL,NULL,NULL,NULL,false),
	 ('CRSTT040','CRSTT','지원중','지원중',NULL,1.0,true,NULL,NULL,NULL,NULL,false),
	 ('ADM','AUTH','관리자','관리자',NULL,1.0,true,NULL,NULL,NULL,NULL,false),
	 ('HELP','AUTH','헬프데스크','헬프데스크',NULL,3.0,true,NULL,NULL,NULL,NULL,false),
	 ('MGR','AUTH','서비스담당자','서비스담당자',NULL,2.0,true,NULL,NULL,NULL,NULL,false),
	 ('USR','AUTH','일반사용자','일반사용자',NULL,4.0,true,NULL,NULL,NULL,NULL,false),
	 ('BOT','AUTH','봇','봇',NULL,5.0,true,NULL,NULL,NULL,NULL,false);
INSERT INTO code (code_id,code_group_id,code_name,code_desc,code_value,code_order,code_use_yn,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('FBSTT020','FBSTT','처리중','처리중',NULL,2.0,true,NULL,NULL,NULL,NULL,NULL),
	 ('FBSTT030','FBSTT','처리완료','처리완료',NULL,3.0,true,NULL,NULL,NULL,NULL,NULL),
	 ('FBSTT040','FBSTT','처리불가/반려','처리불가/반려',NULL,4.0,true,NULL,NULL,NULL,NULL,NULL),
	 ('FBSTT010','FBSTT','등록','등록',NULL,1.0,true,NULL,NULL,NULL,NULL,NULL);



INSERT INTO embedding_file (file_path,file_name,orign_file_name,category_name,service_cd,service_name,embedding_yn,created_by,created_time,modified_by,last_modified_time,delete_yn,service_desc) VALUES
	 ('내규/동호회 운영지침.docx','동호회 운영지침.docx','동호회 운영지침.docx','내규','LAW_001','동호회 운영지침',true,NULL,'2024-09-23 18:09:07.378303',NULL,'2024-09-25 11:21:54.330242',false,NULL),
	 ('공용서비스/ITONE_itone.txt','ITONE_itone.txt','ITONE_itone.txt','공용서비스','COM_itone','ITONE',true,NULL,'2024-09-23 18:09:06.835559',NULL,'2024-09-23 18:12:10.66634',false,'ITSM 시스템. ITONE으로도 불리며, IT 서비스 변경관리에 필요한 기능을 제공함.'),
	 ('공용서비스/Datago_datago.txt','Datago_datago.txt','Datago_datago.txt','공용서비스','COM_datago','Datago',true,NULL,'2024-09-23 18:09:06.873616',NULL,'2024-09-23 18:12:10.715492',false,'데이터 요청 처리 시스템. 데이터고라고도 불리며, 개인정보가 포함된 데이터 요청 및 처리를 지원함.'),
	 ('공용서비스/Nice2MeetU_n2mu.txt','Nice2MeetU_n2mu.txt','Nice2MeetU_n2mu.txt','공용서비스','COM_n2mu','Nice2MeetU',true,NULL,'2024-09-23 18:09:07.342959',NULL,'2024-09-23 18:12:11.395388',false,'화상회의 서비스 Nice2MeetU. 나이스투미츄라고도 불림.'),
	 ('공용서비스/NICE플래닛_planet.txt','NICE플래닛_planet.txt','NICE플래닛_planet.txt','공용서비스','COM_planet','NICE플래닛',true,NULL,'2024-09-23 18:09:06.949119',NULL,'2024-09-23 18:12:10.840122',false,'다양한 명칭으로 불림(플래닛, planet, 나이스플래닛). 내부 커뮤니케이션과 협업을 위한 플랫폼.'),
	 ('공용서비스/관제_totalmon.txt','관제_totalmon.txt','관제_totalmon.txt','공용서비스','COM_totalmon','관제',true,NULL,'2024-09-23 18:09:07.137994',NULL,'2024-09-23 18:12:11.115231',false,'통합 관제 시스템. 관제 시스템, 통합 관제, 관제포털로도 불리며 IT 인프라 통합 모니터링을 담당함.'),
	 ('공용서비스/내부메신저_inmsg.txt','내부메신저_inmsg.txt','내부메신저_inmsg.txt','공용서비스','COM_inmsg','내부메신저',true,NULL,'2024-09-23 18:09:06.910251',NULL,'2024-09-23 18:12:10.772048',false,'사내 메신저 서비스. NTALK, 엔톡, 사내메신저 등으로 불리며, 사내 소통을 지원함.'),
	 ('공용서비스/내부메일_inmail.txt','내부메일_inmail.txt','내부메일_inmail.txt','공용서비스','COM_inmail','내부메일',true,NULL,'2024-09-23 18:09:07.179638',NULL,'2024-09-23 18:12:11.172117',false,'내부 메일 서비스로, 사내 이메일 커뮤니케이션을 지원함.'),
	 ('공용서비스/내부그룹웨어_ingw.txt','내부그룹웨어_ingw.txt','내부그룹웨어_ingw.txt','공용서비스','COM_ingw','내부그룹웨어',true,NULL,'2024-09-23 18:09:06.782153',NULL,'2024-09-23 18:12:10.609807',false,'내부 그룹웨어 시스템. 내부망에서만 사용 가능하며 그룹웨어라는 일반적인 명칭으로 불림.'),
	 ('공용서비스/외부그룹웨어_exgw.txt','외부그룹웨어_exgw.txt','외부그룹웨어_exgw.txt','공용서비스','COM_exgw','외부그룹웨어',true,NULL,'2024-09-23 18:09:06.985167',NULL,'2024-09-23 18:12:10.896471',false,'외부 그룹웨어 시스템. 외부망에서만 사용 가능하며 외부망 그룹웨어, 인터넷망 그룹웨어로도 불림.');
INSERT INTO embedding_file (file_path,file_name,orign_file_name,category_name,service_cd,service_name,embedding_yn,created_by,created_time,modified_by,last_modified_time,delete_yn,service_desc) VALUES
	 ('공용서비스/외부메일_exmail.txt','외부메일_exmail.txt','외부메일_exmail.txt','공용서비스','COM_exmail','외부메일',true,NULL,'2024-09-23 18:09:07.305567',NULL,'2024-09-23 18:12:11.332524',false,'외부 메일 서비스.'),
	 ('공용서비스/원스톱CUE_cue.txt','원스톱CUE_cue.txt','원스톱CUE_cue.txt','공용서비스','COM_cue','원스톱CUE',true,NULL,'2024-09-23 18:09:07.061925',NULL,'2024-09-23 18:12:11.007476',false,'입사자 및 퇴사자의 업무 환경을 빠르게 구축하기 위한 원스톱 CUE 시스템. 원스톱 CUE, 큐 등으로 불림.'),
	 ('공용서비스/경영지원 담당자_manager1.txt','경영지원 담당자_manager1.txt','경영지원 담당자_manager1.txt','공용서비스','COM_manager1','경영지원 담당자',true,NULL,'2024-09-23 18:09:07.100772',NULL,'2024-09-23 18:12:11.060963',false,'온보딩에 적힌 경영지원 담당자 정보를 포함.'),
	 ('공용서비스/IT부문 및 정보보안 담당자_manager2.txt','IT부문 및 정보보안 담당자_manager2.txt','IT부문 및 정보보안 담당자_manager2.txt','공용서비스','COM_manager2','IT부문 및 정보보안 담당자',true,NULL,'2024-09-23 18:09:07.221141',NULL,'2024-09-23 18:12:11.224429',false,'온보딩에 적힌 IT부문 및 정보보안 담당자 정보를 포함. 공용서비스 담당자 정보도 포함되어 있다.'),
	 ('공용서비스/CB부문 담당자_manager3.txt','CB부문 담당자_manager3.txt','CB부문 담당자_manager3.txt','공용서비스','COM_manager3','CB부문 담당자',true,NULL,'2024-09-23 18:09:07.020749',NULL,'2024-09-23 18:12:10.956258',false,'온보딩에 적힌 CB부문 담당자 정보를 포함.'),
	 ('공용서비스/기업부문 담당자_manager4.txt','기업부문 담당자_manager4.txt','기업부문 담당자_manager4.txt','공용서비스','COM_manager4','기업부문 담당자',true,NULL,'2024-09-23 18:09:07.266344',NULL,'2024-09-23 18:12:11.280663',false,'온보딩에 적힌 기업부문 담당자 정보를 포함.');
 
INSERT INTO "user" (user_nm,email,"password",role_cd,created_by,created_time,modified_by,last_modified_time,delete_yn,emp_no,mng_services,ip,dept_nm,position_nm,guide_tour_json) VALUES
	 ('내규봇','nice-law@niceinfo.co.kr','1234','BOT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::ffff:10.97.192.101','서비스운영실','매니저','{"login":"N", "chatList":"N", "llmChatPannel":"N"}'),
	 ('박예린','rnrmf941@niceinfo.co.kr','1234','USR',NULL,NULL,NULL,'2024-10-16 17:24:38.092622',NULL,NULL,'::ffff:10.97.192.103','::11','서비스운영실','매니저','{"login":"Y","chatList":"Y","llmChatPannel":"Y"}'),
	 ('최우영','wychoi@niceinfo.co.kr','1234','HELP',NULL,NULL,NULL,'2024-10-14 16:10:38.053056',NULL,'011650033',NULL,'::11','서비스운영실','매니저','{"login":"Y","chatList":"Y","llmChatPannel":"Y"}');
