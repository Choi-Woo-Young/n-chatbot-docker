INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (240,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다.
저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 21:06:50.342286',NULL,'2024-09-24 21:06:50.342288',false,NULL,NULL),
	 (110,2,'USR','안녕하세요.',NULL,'2024-08-30 16:33:55.196775',NULL,'2024-08-30 16:33:55.196781',false,NULL,NULL),
	 (110,2,'USR','Datago',NULL,'2024-08-30 16:33:59.123678',NULL,'2024-08-30 16:33:59.123684',false,'COM_datago.txt','안녕하세요.'),
	 (254,0,'BOT','안녕하세요! NICE플래닛에서 테스트하려면 다음 단계를 따라주세요:
1. 플래닛 로그인
2. 최상단 메뉴 중 "공간" 클릭
3. 서브 메뉴 "공간 만들기" 클릭
4. "빈 공간" 선택 후 "다음" 클릭
5. 공간 이름과 스페이스 키 입력 후 "만들기" 클릭
6. 테스트 공간이 생성됩니다. 즐거운 테스트 되세요!
[출처:NICE플래닛]',NULL,'2024-09-26 14:00:28.90304',NULL,'2024-09-26 14:00:28.903043',false,NULL,NULL),
	 (111,2,'USR','안녕안녕하세요',NULL,'2024-08-30 16:36:15.538295',NULL,'2024-08-30 16:36:15.538303',false,NULL,NULL),
	 (111,2,'USR','ㅠㅡㅠ',NULL,'2024-08-30 16:39:14.59146',NULL,'2024-08-30 16:39:14.591466',false,NULL,NULL),
	 (NULL,NULL,NULL,NULL,NULL,'2024-08-30 16:39:19.737194',NULL,'2024-08-30 16:39:19.737201',false,NULL,NULL),
	 (254,0,'BOT','NICE플래닛에서 스페이스 키를 입력하는 이유는 공간을 식별하는 고유한 키를 생성하기 위해서입니다. 이를 통해 다른 공간과 중복되지 않는 고유한 식별자를 만들어 새로운 공간을 구분할 수 있습니다. 스페이스 키는 해당 공간을 나타내는 중요한 요소이며, 공간을 만들 때 필수적으로 입력해야 합니다.
[출처:NICE플래닛]',NULL,'2024-09-26 14:02:12.31313',NULL,'2024-09-26 14:02:12.313132',false,NULL,NULL),
	 (112,2,'USR','핼피야~',NULL,'2024-08-30 17:03:52.775825',NULL,'2024-08-30 17:03:52.775834',false,NULL,NULL),
	 (260,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}]}***',NULL,'2024-10-08 17:59:23.748131',NULL,'2024-10-08 17:59:23.748135',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (112,2,'USR','Nice2MeetU',NULL,'2024-08-30 17:04:02.975093',NULL,'2024-08-30 17:04:02.9751',false,'COM_n2mu.txt','핼피야~'),
	 (260,0,'BOT','내부메신저에 접속하는 방법은 다음과 같아요:
1. 내부그룹웨어에 로그인합니다.
2. 그룹웨어 메뉴 중 ''메신저''를 클릭합니다.
3. 메신저를 실행하여 계정으로 로그인합니다.
4. 이제 메신저를 통해 대화를 시작하거나 다양한 기능을 이용할 수 있어요.',NULL,'2024-10-08 18:00:01.770505',NULL,'2024-10-08 18:00:01.770508',false,NULL,NULL),
	 (111,2,'USR','aa',NULL,'2024-08-30 17:15:13.372315',NULL,'2024-08-30 17:15:13.372329',false,NULL,NULL),
	 (111,4,'MGR','!!!',NULL,'2024-08-30 17:19:07.452834',NULL,'2024-08-30 17:19:07.452843',false,NULL,NULL),
	 (111,4,'MGR','테스트',NULL,'2024-08-30 17:26:44.827701',NULL,'2024-08-30 17:26:44.827719',false,NULL,NULL),
	 (111,4,'MGR','안녕',NULL,'2024-08-30 17:36:06.767279',NULL,'2024-08-30 17:36:06.767286',false,NULL,NULL),
	 (111,4,'MGR','안녕!',NULL,'2024-08-30 17:41:33.029233',NULL,'2024-08-30 17:41:33.029248',false,NULL,NULL),
	 (111,2,'USR','안녕',NULL,'2024-08-30 17:50:06.571831',NULL,'2024-08-30 17:50:06.57184',false,NULL,NULL),
	 (111,4,'MGR','?',NULL,'2024-08-30 17:50:10.104822',NULL,'2024-08-30 17:50:10.104824',false,NULL,NULL),
	 (111,2,'USR','ㄹㄹ',NULL,'2024-08-30 17:50:12.920795',NULL,'2024-08-30 17:50:12.920808',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (111,2,'USR','테스트',NULL,'2024-08-30 17:56:44.449535',NULL,'2024-08-30 17:56:44.449548',false,NULL,NULL),
	 (111,4,'MGR','ㅁㅁ',NULL,'2024-08-30 17:56:47.854845',NULL,'2024-08-30 17:56:47.854854',false,NULL,NULL),
	 (111,4,'MGR','ㄹㄹ',NULL,'2024-08-30 17:58:08.242914',NULL,'2024-08-30 17:58:08.242925',false,NULL,NULL),
	 (111,2,'USR','ㅁㅁ',NULL,'2024-08-30 17:58:11.152356',NULL,'2024-08-30 17:58:11.152367',false,NULL,NULL),
	 (111,2,'USR','?',NULL,'2024-08-30 17:58:30.582736',NULL,'2024-08-30 17:58:30.582879',false,NULL,NULL),
	 (111,4,'MGR','dkssud',NULL,'2024-08-30 18:00:42.633608',NULL,'2024-08-30 18:00:42.633616',false,NULL,NULL),
	 (111,4,'MGR','나',NULL,'2024-08-30 18:07:16.064768',NULL,'2024-08-30 18:07:16.064791',false,NULL,NULL),
	 (111,4,'MGR','!!',NULL,'2024-08-30 18:07:24.554656',NULL,'2024-08-30 18:07:24.554661',false,NULL,NULL),
	 (111,2,'USR','?!',NULL,'2024-08-30 18:07:37.155715',NULL,'2024-08-30 18:07:37.155722',false,NULL,NULL),
	 (111,4,'MGR','!!',NULL,'2024-08-30 18:08:22.818295',NULL,'2024-08-30 18:08:22.818297',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (111,2,'USR','@@',NULL,'2024-08-30 18:08:26.941266',NULL,'2024-08-30 18:08:26.941272',false,NULL,NULL),
	 (111,4,'MGR','안녕하세요',NULL,'2024-09-02 10:39:08.391175',NULL,'2024-09-02 10:39:08.391189',false,NULL,NULL),
	 (111,2,'USR','전송',NULL,'2024-09-02 10:39:38.008499',NULL,'2024-09-02 10:39:38.00851',false,NULL,NULL),
	 (111,4,'MGR','22',NULL,'2024-09-02 10:40:49.724005',NULL,'2024-09-02 10:40:49.72401',false,NULL,NULL),
	 (111,4,'MGR','33',NULL,'2024-09-02 10:43:57.59038',NULL,'2024-09-02 10:43:57.590392',false,NULL,NULL),
	 (111,2,'USR','hi!!!',NULL,'2024-09-02 10:48:00.759978',NULL,'2024-09-02 10:48:00.759993',false,NULL,NULL),
	 (111,2,'USR','123123',NULL,'2024-09-02 10:48:11.76482',NULL,'2024-09-02 10:48:11.764835',false,NULL,NULL),
	 (111,4,'MGR','안녕ㅇㅇㅇㅇㅇㅇㅇㅇ',NULL,'2024-09-02 10:48:22.752522',NULL,'2024-09-02 10:48:22.752533',false,NULL,NULL),
	 (111,4,'MGR','??!!',NULL,'2024-09-02 10:48:32.782113',NULL,'2024-09-02 10:48:32.782126',false,NULL,NULL),
	 (111,4,'MGR','상대가 다른방에 있음',NULL,'2024-09-02 10:48:57.47859',NULL,'2024-09-02 10:48:57.478598',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (113,2,'USR','??!!?!?!?',NULL,'2024-09-02 10:49:13.546436',NULL,'2024-09-02 10:49:13.546448',false,NULL,NULL),
	 (111,4,'MGR','테스트',NULL,'2024-09-02 10:49:36.937651',NULL,'2024-09-02 10:49:36.937664',false,NULL,NULL),
	 (111,4,'MGR','@@@',NULL,'2024-09-02 10:49:50.183512',NULL,'2024-09-02 10:49:50.183534',false,NULL,NULL),
	 (111,2,'USR','읽음테스트1',NULL,'2024-09-02 10:58:24.494899',NULL,'2024-09-02 10:58:24.494908',false,NULL,NULL),
	 (111,2,'USR','22222222',NULL,'2024-09-02 10:58:30.207603',NULL,'2024-09-02 10:58:30.207625',false,NULL,NULL),
	 (111,4,'MGR','??',NULL,'2024-09-02 10:59:20.800587',NULL,'2024-09-02 10:59:20.80061',false,NULL,NULL),
	 (111,2,'USR','전송',NULL,'2024-09-02 11:02:45.39923',NULL,'2024-09-02 11:02:45.399245',false,NULL,NULL),
	 (111,2,'USR','다시1',NULL,'2024-09-02 11:07:51.225604',NULL,'2024-09-02 11:07:51.225627',false,NULL,NULL),
	 (114,4,'USR','aa',NULL,'2024-09-02 11:28:53.650565',NULL,'2024-09-02 11:28:53.650567',false,NULL,NULL),
	 (111,2,'USR','안녕',NULL,'2024-09-02 11:30:03.13971',NULL,'2024-09-02 11:30:03.139727',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (116,2,'USR','eeee',NULL,'2024-09-02 13:14:46.17461',NULL,'2024-09-02 13:14:46.174615',false,NULL,NULL),
	 (240,2,'USR','안녕',NULL,'2024-09-24 21:07:38.083495',NULL,'2024-09-24 21:07:38.083498',false,NULL,NULL),
	 (254,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "스페이스 키를 왜 입력해?", "items": [{"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2024-09-26 14:01:50.094549',NULL,'2024-09-26 14:01:50.094556',false,NULL,NULL),
	 (254,2,'USR','NICE플래닛',NULL,'2024-09-26 14:01:59.836037',NULL,'2024-09-26 14:01:59.836039',false,'COM_planet','스페이스 키를 왜 입력해?'),
	 (260,0,'BOT','안녕하세요! 그룹웨어에 궁금한 점이 있으신가요? 질문이 있으시면 언제든지 편하게 물어보세요. 함께 도와드릴게요.',NULL,'2024-10-08 17:59:37.773955',NULL,'2024-10-08 17:59:37.773958',false,NULL,NULL),
	 (260,2,'USR','무슨 정보를 알려줄 수 있어?',NULL,'2024-10-08 18:00:25.847815',NULL,'2024-10-08 18:00:25.847819',false,'',NULL),
	 (124,2,'USR','가나다라',NULL,'2024-09-02 13:31:58.170457',NULL,'2024-09-02 13:31:58.170459',false,NULL,NULL),
	 (282,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:02:00.681438',NULL,'2024-11-02 21:02:00.68144',false,NULL,NULL),
	 (111,2,'USR','읽음처리!',NULL,'2024-09-02 13:39:11.254501',NULL,'2024-09-02 13:39:11.254506',false,NULL,NULL),
	 (111,2,'USR','테스트',NULL,'2024-09-02 13:45:31.868074',NULL,'2024-09-02 13:45:31.868091',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (111,4,'MGR','테스트22',NULL,'2024-09-02 13:45:38.863944',NULL,'2024-09-02 13:45:38.86396',false,NULL,NULL),
	 (111,4,'MGR','읽음처리!!',NULL,'2024-09-02 13:45:52.097846',NULL,'2024-09-02 13:45:52.097853',false,NULL,NULL),
	 (111,4,'MGR','읽음처리!',NULL,'2024-09-02 13:46:01.807462',NULL,'2024-09-02 13:46:01.807475',false,NULL,NULL),
	 (111,2,'USR','안녕',NULL,'2024-09-02 13:50:02.505513',NULL,'2024-09-02 13:50:02.505528',false,NULL,NULL),
	 (111,4,'MGR','안녕',NULL,'2024-09-02 13:50:07.3389',NULL,'2024-09-02 13:50:07.338926',false,NULL,NULL),
	 (111,4,'MGR','상대방이 대화방에 없음',NULL,'2024-09-02 13:50:29.176277',NULL,'2024-09-02 13:50:29.176295',false,NULL,NULL),
	 (111,4,'MGR','있음',NULL,'2024-09-02 13:59:22.996144',NULL,'2024-09-02 13:59:22.996164',false,NULL,NULL),
	 (111,4,'MGR','없음',NULL,'2024-09-02 13:59:30.134712',NULL,'2024-09-02 13:59:30.134732',false,NULL,NULL),
	 (111,4,'MGR','없2',NULL,'2024-09-02 13:59:36.258216',NULL,'2024-09-02 13:59:36.25822',false,NULL,NULL),
	 (111,4,'MGR','없3',NULL,'2024-09-02 13:59:41.80278',NULL,'2024-09-02 13:59:41.802793',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (111,4,'MGR','있',NULL,'2024-09-02 13:59:49.312945',NULL,'2024-09-02 13:59:49.312951',false,NULL,NULL),
	 (111,4,'MGR','상대방 없음',NULL,'2024-09-02 14:19:04.125029',NULL,'2024-09-02 14:19:04.125039',false,NULL,NULL),
	 (111,4,'MGR','있음',NULL,'2024-09-02 14:19:18.791584',NULL,'2024-09-02 14:19:18.791589',false,NULL,NULL),
	 (111,4,'MGR','없',NULL,'2024-09-02 14:19:42.841027',NULL,'2024-09-02 14:19:42.84105',false,NULL,NULL),
	 (111,4,'MGR','잇',NULL,'2024-09-02 14:19:58.785995',NULL,'2024-09-02 14:19:58.786006',false,NULL,NULL),
	 (111,4,'MGR','있',NULL,'2024-09-02 14:21:17.457931',NULL,'2024-09-02 14:21:17.457949',false,NULL,NULL),
	 (111,4,'MGR','없',NULL,'2024-09-02 14:21:27.015336',NULL,'2024-09-02 14:21:27.015351',false,NULL,NULL),
	 (111,4,'MGR','입장',NULL,'2024-09-02 14:21:36.980691',NULL,'2024-09-02 14:21:36.9807',false,NULL,NULL),
	 (111,2,'USR','있',NULL,'2024-09-02 14:21:54.723314',NULL,'2024-09-02 14:21:54.723336',false,NULL,NULL),
	 (111,2,'USR','없',NULL,'2024-09-02 14:22:03.330504',NULL,'2024-09-02 14:22:03.330519',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (111,2,'USR','다른방',NULL,'2024-09-02 14:22:26.927419',NULL,'2024-09-02 14:22:26.927433',false,NULL,NULL),
	 (111,2,'USR','?!???',NULL,'2024-09-02 14:23:42.881866',NULL,'2024-09-02 14:23:42.881875',false,NULL,NULL),
	 (111,2,'USR','ㅁㅁ',NULL,'2024-09-02 14:25:10.179528',NULL,'2024-09-02 14:25:10.179539',false,NULL,NULL),
	 (111,2,'USR','입장함',NULL,'2024-09-02 14:25:29.03575',NULL,'2024-09-02 14:25:29.035753',false,NULL,NULL),
	 (111,4,'MGR','퇴장전',NULL,'2024-09-02 14:25:36.534787',NULL,'2024-09-02 14:25:36.534806',false,NULL,NULL),
	 (111,2,'USR','퇴장후',NULL,'2024-09-02 14:25:43.951637',NULL,'2024-09-02 14:25:43.951652',false,NULL,NULL),
	 (111,2,'USR','@@!',NULL,'2024-09-02 14:26:03.384773',NULL,'2024-09-02 14:26:03.384787',false,NULL,NULL),
	 (111,2,'USR','실시간 채팅중',NULL,'2024-09-02 14:30:42.991389',NULL,'2024-09-02 14:30:42.9914',false,NULL,NULL),
	 (111,4,'MGR','2',NULL,'2024-09-02 14:30:46.29447',NULL,'2024-09-02 14:30:46.294495',false,NULL,NULL),
	 (111,4,'MGR','나감',NULL,'2024-09-02 14:30:51.958138',NULL,'2024-09-02 14:30:51.95815',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (111,2,'USR','들어옴',NULL,'2024-09-02 14:30:58.276765',NULL,'2024-09-02 14:30:58.27677',false,NULL,NULL),
	 (111,2,'USR','나감2',NULL,'2024-09-02 14:31:04.375922',NULL,'2024-09-02 14:31:04.375946',false,NULL,NULL),
	 (111,2,'USR','3',NULL,'2024-09-02 14:31:10.148009',NULL,'2024-09-02 14:31:10.148015',false,NULL,NULL),
	 (111,4,'MGR','들어왔다!',NULL,'2024-09-02 14:31:19.378911',NULL,'2024-09-02 14:31:19.378916',false,NULL,NULL),
	 (111,4,'MGR','채팅!',NULL,'2024-09-02 14:32:07.832649',NULL,'2024-09-02 14:32:07.832667',false,NULL,NULL),
	 (111,2,'USR','11',NULL,'2024-09-02 14:32:16.614354',NULL,'2024-09-02 14:32:16.614367',false,NULL,NULL),
	 (111,2,'USR','시간테스트1429380123809124092103',NULL,'2024-09-02 14:33:21.846088',NULL,'2024-09-02 14:33:21.846095',false,NULL,NULL),
	 (111,2,'USR','??',NULL,'2024-09-02 18:05:16.024243',NULL,'2024-09-02 18:05:16.024253',false,NULL,NULL),
	 (215,2,'USR','결재선 지정 방법 알려줘',NULL,'2024-09-23 19:41:19.761589',NULL,'2024-09-23 19:41:19.761592',false,NULL,NULL),
	 (241,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다.
저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 21:11:58.35099',NULL,'2024-09-24 21:11:58.350991',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (255,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-26 14:49:23.904674',NULL,'2024-09-26 14:49:23.904685',false,NULL,NULL),
	 (260,2,'USR','접속방법 알려줘',NULL,'2024-10-08 17:59:47.01204',NULL,'2024-10-08 17:59:47.012044',false,'',NULL),
	 (132,2,'USR','       ',NULL,'2024-09-03 15:46:46.082142',NULL,'2024-09-03 15:46:46.082147',false,NULL,NULL),
	 (132,2,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-09-03 15:51:23.039072',NULL,'2024-09-03 15:51:23.039077',false,NULL,NULL),
	 (283,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:04:03.464169',NULL,'2024-11-02 21:04:03.464175',false,NULL,NULL),
	 (132,2,'USR','예',NULL,'2024-09-03 15:51:26.072453',NULL,'2024-09-03 15:51:26.072456',false,'NICE_NGROUPWARE_SVC_OK','내부 그룹웨어 비밀번호 초기화'),
	 (132,2,'USR','업무담당자를 찾고있어
사대보험관련 업무는 누구에게 문의해?',NULL,'2024-09-03 15:59:16.01607',NULL,'2024-09-03 15:59:16.016073',false,NULL,NULL),
	 (219,2,'USR','로그인 오류남',NULL,'2024-09-23 21:12:12.923014',NULL,'2024-09-23 21:12:12.923017',false,NULL,NULL),
	 (241,2,'USR','안녕',NULL,'2024-09-24 21:12:04.983196',NULL,'2024-09-24 21:12:04.983199',false,NULL,NULL),
	 (241,2,'USR','내부그룹웨어',NULL,'2024-09-24 21:12:31.536357',NULL,'2024-09-24 21:12:31.536362',false,'COM_ingw','안녕');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (148,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:25:40.762798',NULL,'2024-09-03 17:25:40.762803',false,NULL,NULL),
	 (149,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:27:07.963278',NULL,'2024-09-03 17:27:07.963279',false,NULL,NULL),
	 (255,2,'USR','안녕',NULL,'2024-09-26 14:49:26.867325',NULL,'2024-09-26 14:49:26.867332',false,'',NULL),
	 (260,0,'BOT','그룹웨어 관련해서 궁금한 내용이나 동호회 운영 관련해서 규정에 대해 궁금하신 점이 있나요? 자세한 정보를 알려드릴 수 있어요. 무엇을 도와드릴까요?
[출처:동호회 운영지침]',NULL,'2024-10-08 18:00:41.63077',NULL,'2024-10-08 18:00:41.630773',false,NULL,NULL),
	 (284,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:05:10.659077',NULL,'2024-11-02 21:05:10.659083',false,NULL,NULL),
	 (284,2,'USR','datago에서 otp설정 방법 알려줘',NULL,'2024-11-02 21:05:28.614263',NULL,'2024-11-02 21:05:28.614275',false,'',NULL),
	 (285,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:08:08.560011',NULL,'2024-11-02 21:08:08.560012',false,NULL,NULL),
	 (285,0,'BOT','',NULL,'2024-11-02 21:08:18.966539',NULL,'2024-11-02 21:08:18.966541',false,NULL,NULL),
	 (255,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2024-09-26 14:49:27.837375',NULL,'2024-09-26 14:49:27.837381',false,NULL,NULL),
	 (255,2,'USR','Datago',NULL,'2024-09-26 14:49:30.807002',NULL,'2024-09-26 14:49:30.807005',false,'COM_datago','안녕');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (255,0,'BOT','안녕하세요! 무엇을 도와드릴까요? Datago에 관련된 궁금한 점이 있으시면 언제든지 물어보세요.
[출처:Datago]',NULL,'2024-09-26 14:49:38.36324',NULL,'2024-09-26 14:49:38.363244',false,NULL,NULL),
	 (260,2,'USR','동호회 가입 방법',NULL,'2024-10-10 09:09:02.031912',NULL,'2024-10-10 09:09:02.031916',false,'',NULL),
	 (261,4,'MGR','안녕하세요',NULL,'2024-10-10 09:21:48.294453',NULL,'2024-10-10 09:21:48.294461',false,NULL,NULL),
	 (284,0,'BOT','OTP 설정 방법은 다음과 같습니다:
1. 계정 생성 시 OTP 설정키 자동 부여
- 계정 생성 시, 자동으로 OTP 설정 키가 부여됩니다.
- 설정 키를 잊어버렸다면, Datago 담당자에게 연락하여 설정 키를 재전송 받으세요.
2. 휴대폰에서 설정 키 사용 방법
- Google Authenticator 앱을 휴대폰에 다운로드하세요.
- 앱에 접속한 후, ''+'' 버튼을 누르고 ''설정 키 입력''을 선택합니다.
- 부여받은 설정 키를 등록하세요.
- 계정 이름은 원하는 대로 설정할 수 있으며, ''Datago'' 등 구분 가능한 이름으로 저장하세요.
- OTP 입력 팝업이 나타나면, 휴대폰 앱에서 확인한 OTP를 입력하여 로그인하실 수 있습니다.',NULL,'2024-11-02 21:05:52.957379',NULL,'2024-11-02 21:05:52.957383',false,NULL,NULL),
	 (284,2,'USR','고마워!',NULL,'2024-11-02 21:05:57.433323',NULL,'2024-11-02 21:05:57.433325',false,'',NULL),
	 (157,2,'USR','           ',NULL,'2024-09-04 10:16:17.709575',NULL,'2024-09-04 10:16:17.709578',false,NULL,NULL),
	 (157,2,'USR','     
      
aqeres',NULL,'2024-09-04 10:17:39.536629',NULL,'2024-09-04 10:17:39.536632',false,NULL,NULL),
	 (111,2,'USR','fff',NULL,'2024-09-04 10:21:49.81934',NULL,'2024-09-04 10:21:49.819353',false,NULL,NULL),
	 (111,2,'USR','  
zz',NULL,'2024-09-04 10:22:35.207346',NULL,'2024-09-04 10:22:35.207353',false,NULL,NULL),
	 (158,2,'USR','??',NULL,'2024-09-04 10:57:34.882683',NULL,'2024-09-04 10:57:34.882689',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (165,2,'USR','데이터고에서 비밀글로 등록할 수도 있어?',NULL,'2024-09-04 11:17:37.066322',NULL,'2024-09-04 11:17:37.06633',false,NULL,NULL),
	 (165,2,'USR','내규에[ 데이터고 관련 내용이 나와?',NULL,'2024-09-04 11:17:58.262805',NULL,'2024-09-04 11:17:58.262808',false,NULL,NULL),
	 (165,2,'USR','내규에 변경관리 내용이 있을까?',NULL,'2024-09-04 11:18:14.647213',NULL,'2024-09-04 11:18:14.64722',false,NULL,NULL),
	 (255,2,'USR','결재 프로세스 알려줘',NULL,'2024-09-26 14:55:50.522794',NULL,'2024-09-26 14:55:50.522802',false,'',NULL),
	 (165,0,'BOT','죄송합니다, 그에 대한 정보는 제가 가지고 있지 않습니다. 추가 질문이 있으시면 언제든지 물어보세요!',NULL,'2024-09-04 11:18:03.73382',NULL,'2024-09-04 11:18:03.733822',false,NULL,NULL),
	 (165,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"내규에 변경관리 내용이 있을까?", "items":[{"name": "ITONE", "value": "COM_itone.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}]}***',NULL,'2024-09-04 11:18:16.115357',NULL,'2024-09-04 11:18:16.115361',false,NULL,NULL),
	 (260,0,'BOT','동호회 가입 방법은 다음과 같아요:
1. 동호회 회원 가입 신청서를 작성합니다.
2. 회원 가입 신청서에 개인 정보와 가입 동기를 기입하고 서명합니다.
3. 회칙을 충실히 이행하고 회비를 매월 급여공제를 통해 납부하는 것을 서약합니다.
4. 동호회 회장과 동호회 회장의 서명을 받아 제출합니다.
5. 경영지원실에 제출하여 가입 절차를 완료합니다.

이렇게 동호회 가입을 할 수 있어요. 추가 질문이 있으시면 언제든지 물어보세요. 함께 도와드릴게요.
[출처:동호회 운영지침]',NULL,'2024-10-10 09:09:27.867692',NULL,'2024-10-10 09:09:27.867694',false,NULL,NULL),
	 (261,2,'USR','1412313',NULL,'2024-10-10 09:22:08.216207',NULL,'2024-10-10 09:22:08.216212',false,NULL,NULL),
	 (284,0,'BOT','언제든지 도와드릴게요! 궁금한 점이 있으면 언제든지 물어보세요. 함께 해결해나가요. 😊',NULL,'2024-11-02 21:06:05.13236',NULL,'2024-11-02 21:06:05.132364',false,NULL,NULL),
	 (165,2,'USR','ITONE',NULL,'2024-09-04 11:20:22.446128',NULL,'2024-09-04 11:20:22.446143',false,'COM_itone.txt','내규에 변경관리 내용이 있을까?');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (238,2,'USR','ITONE',NULL,'2024-09-24 21:16:55.596669',NULL,'2024-09-24 21:16:55.596721',false,'COM_itone','안녕?'),
	 (165,2,'USR','고마워~',NULL,'2024-09-04 11:22:13.696708',NULL,'2024-09-04 11:22:13.696713',false,NULL,NULL),
	 (255,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ''RunnableWithMessageHistory'' object has no attribute ''get_history_messages''',NULL,'2024-09-26 14:55:55.270914',NULL,'2024-09-26 14:55:55.270917',false,NULL,NULL),
	 (165,2,'USR','내규',NULL,'2024-09-04 11:22:23.880866',NULL,'2024-09-04 11:22:23.880873',false,'LAW','고마워~'),
	 (261,2,'USR','안녕하세요12',NULL,'2024-10-10 09:21:59.918981',NULL,'2024-10-10 09:21:59.918986',false,NULL,NULL),
	 (165,2,'USR','Nice2MeetU',NULL,'2024-09-04 11:22:37.26203',NULL,'2024-09-04 11:22:37.262032',false,'COM_n2mu.txt','고마워~'),
	 (285,2,'USR','datago에서 otp설정 방법 알려줘',NULL,'2024-11-02 21:08:17.761353',NULL,'2024-11-02 21:08:17.761359',false,'',NULL),
	 (164,2,'USR','안녕',NULL,'2024-09-04 13:14:18.554099',NULL,'2024-09-04 13:14:18.554103',false,NULL,NULL),
	 (164,2,'USR','하이',NULL,'2024-09-04 13:15:22.608241',NULL,'2024-09-04 13:15:22.608246',false,NULL,NULL),
	 (164,2,'USR','Nice2MeetU',NULL,'2024-09-04 13:15:26.774446',NULL,'2024-09-04 13:15:26.774448',false,'COM_n2mu.txt','하이');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (164,2,'USR','서비스 선택',NULL,'2024-09-04 13:16:55.501736',NULL,'2024-09-04 13:16:55.501744',false,NULL,NULL),
	 (164,2,'USR','Hello',NULL,'2024-09-04 13:17:24.045118',NULL,'2024-09-04 13:17:24.045471',false,NULL,NULL),
	 (164,2,'USR','접속방법 알려줘',NULL,'2024-09-04 13:17:46.098716',NULL,'2024-09-04 13:17:46.098718',false,NULL,NULL),
	 (164,2,'USR','ITONE',NULL,'2024-09-04 13:18:49.342328',NULL,'2024-09-04 13:18:49.342364',false,'COM_itone.txt','접속방법 알려줘'),
	 (164,2,'USR','Datago',NULL,'2024-09-04 13:19:01.20035',NULL,'2024-09-04 13:19:01.200352',false,'COM_datago.txt','접속방법 알려줘'),
	 (111,2,'USR','ㄹㄹ',NULL,'2024-09-04 13:57:14.198898',NULL,'2024-09-04 13:57:14.19892',false,NULL,NULL),
	 (111,2,'USR','

ㄹㄹ',NULL,'2024-09-04 13:57:19.726265',NULL,'2024-09-04 13:57:19.726274',false,NULL,NULL),
	 (111,2,'USR','내부메신저',NULL,'2024-09-04 13:57:31.675329',NULL,'2024-09-04 13:57:31.675335',false,'COM_inmsg.txt','??'),
	 (119,4,'MGR','어ㅏ민렁ㄴ',NULL,'2024-09-04 17:29:04.378623',NULL,'2024-09-04 17:29:04.378634',false,NULL,NULL),
	 (119,4,'MGR','아아아',NULL,'2024-09-04 17:29:06.825682',NULL,'2024-09-04 17:29:06.82569',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (166,4,'MGR','안녕하세요',NULL,'2024-09-04 17:34:41.187882',NULL,'2024-09-04 17:34:41.187889',false,NULL,NULL),
	 (166,4,'MGR','!!!',NULL,'2024-09-04 17:34:42.718882',NULL,'2024-09-04 17:34:42.718891',false,NULL,NULL),
	 (166,4,'MGR','안녕',NULL,'2024-09-04 17:36:34.114351',NULL,'2024-09-04 17:36:34.114375',false,NULL,NULL),
	 (114,4,'USR','Datago',NULL,'2024-09-05 10:31:08.344774',NULL,'2024-09-05 10:31:08.344783',false,'COM_datago.txt','aa'),
	 (169,4,'USR','Datago',NULL,'2024-09-05 11:29:57.502057',NULL,'2024-09-05 11:29:57.502061',false,'COM_datago.txt','aa'),
	 (170,4,'USR','뭐지?',NULL,'2024-09-05 11:31:16.55927',NULL,'2024-09-05 11:31:16.559272',false,NULL,NULL),
	 (256,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-26 14:57:39.917255',NULL,'2024-09-26 14:57:39.917263',false,NULL,NULL),
	 (111,2,'USR','aa',NULL,'2024-09-06 09:15:40.912511',NULL,'2024-09-06 09:15:40.91252',false,NULL,NULL),
	 (111,4,'MGR','지원종료?',NULL,'2024-09-06 09:16:06.05264',NULL,'2024-09-06 09:16:06.05265',false,NULL,NULL),
	 (111,2,'USR','ㅁㅁ',NULL,'2024-09-06 09:16:28.746012',NULL,'2024-09-06 09:16:28.746023',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (256,2,'USR','안녕!',NULL,'2024-09-26 14:57:43.624791',NULL,'2024-09-26 14:57:43.624797',false,'',NULL),
	 (261,4,'MGR','12313',NULL,'2024-10-10 09:22:03.988472',NULL,'2024-10-10 09:22:03.98848',false,NULL,NULL),
	 (178,2,'USR','1',NULL,'2024-09-06 10:11:19.484419',NULL,'2024-09-06 10:11:19.484423',false,NULL,NULL),
	 (286,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:10:30.712621',NULL,'2024-11-02 21:10:30.712623',false,NULL,NULL),
	 (179,2,'USR','2',NULL,'2024-09-06 10:11:23.460974',NULL,'2024-09-06 10:11:23.460976',false,NULL,NULL),
	 (183,2,'USR','xptmxm',NULL,'2024-09-06 10:23:12.525869',NULL,'2024-09-06 10:23:12.525874',false,NULL,NULL),
	 (169,4,'USR','안녕?',NULL,'2024-09-06 17:50:28.474224',NULL,'2024-09-06 17:50:28.474234',false,NULL,NULL),
	 (169,4,'USR','내부그룹웨어',NULL,'2024-09-06 17:50:38.61303',NULL,'2024-09-06 17:50:38.613036',false,'COM_ingw.txt','안녕?'),
	 (169,4,'USR','동호회 만들고 싶어',NULL,'2024-09-06 17:51:56.795315',NULL,'2024-09-06 17:51:56.795319',false,NULL,NULL),
	 (169,4,'USR','하라랄라랄라ㅏ라?',NULL,'2024-09-06 17:57:08.355885',NULL,'2024-09-06 17:57:08.355897',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (169,4,'USR','Nice2MeetU',NULL,'2024-09-06 17:57:12.087868',NULL,'2024-09-06 17:57:12.087873',false,'COM_n2mu.txt','하라랄라랄라ㅏ라?'),
	 (185,4,'USR','itone이 뭐야?',NULL,'2024-09-09 10:44:38.894634',NULL,'2024-09-09 10:44:38.894637',false,NULL,NULL),
	 (185,4,'USR','접속Url 알려줘',NULL,'2024-09-09 10:45:11.821265',NULL,'2024-09-09 10:45:11.821274',false,NULL,NULL),
	 (185,4,'USR','ITONE',NULL,'2024-09-09 10:45:20.342479',NULL,'2024-09-09 10:45:20.342482',false,'COM_itone.txt','접속Url 알려줘'),
	 (187,2,'USR','서비스별담당자1',NULL,'2024-09-09 17:38:44.835342',NULL,'2024-09-09 17:38:44.835346',false,'COM_manager1.txt','복리후생 담당자 알려줘'),
	 (185,4,'USR','그룹웨어 비밀번호 찾기 후에 비밀번호를 변경하라며 로그인화면으로 돌아가요.',NULL,'2024-09-09 10:50:48.755345',NULL,'2024-09-09 10:50:48.755359',false,NULL,NULL),
	 (185,4,'USR','내부그룹웨어',NULL,'2024-09-09 11:00:29.267883',NULL,'2024-09-09 11:00:29.267886',false,'COM_ingw.txt','전자결재 문서 검색 방법 알려줘'),
	 (185,4,'USR','인당 예약횟수가 몇번이야?',NULL,'2024-09-09 11:02:34.742057',NULL,'2024-09-09 11:02:34.742061',false,NULL,NULL),
	 (185,4,'USR','내부그룹웨어',NULL,'2024-09-09 11:02:38.039236',NULL,'2024-09-09 11:02:38.03924',false,'COM_ingw.txt','인당 예약횟수가 몇번이야?'),
	 (243,2,'USR','헬로',NULL,'2024-09-24 21:20:05.46918',NULL,'2024-09-24 21:20:05.46919',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (245,2,'USR','안면?',NULL,'2024-09-24 21:36:52.415683',NULL,'2024-09-24 21:36:52.415718',false,NULL,NULL),
	 (185,0,'BOT','ITONE에 접속하려면 "https://itsm.niceinfo.co.kr/" URL을 사용하시면 됩니다. 크롬 브라우저를 사용하는 것을 권고드립니다. 궁금한 점이 있으면 언제든지 물어봐주세요!',NULL,'2024-09-09 10:45:28.571634',NULL,'2024-09-09 10:45:28.571636',false,NULL,NULL),
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"sap 접속이 안돼요", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}, {"name": "내부메일", "value": "COM_inmail.txt"}]}***',NULL,'2024-09-09 10:55:41.07292',NULL,'2024-09-09 10:55:41.072922',false,NULL,NULL),
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"인당 예약횟수가 몇번이야?", "items":[{"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "ITONE", "value": "COM_itone.txt"}]}***',NULL,'2024-09-09 11:02:35.960774',NULL,'2024-09-09 11:02:35.960776',false,NULL,NULL),
	 (186,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-09 11:13:32.712507',NULL,'2024-09-09 11:13:32.712509',false,NULL,NULL),
	 (256,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕!", "items": [{"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}]}***',NULL,'2024-09-26 14:57:44.513283',NULL,'2024-09-26 14:57:44.513288',false,NULL,NULL),
	 (256,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ''LimitedRedisChatMessageHistory'' object has no attribute ''load_messages''',NULL,'2024-09-26 14:58:15.043207',NULL,'2024-09-26 14:58:15.043209',false,NULL,NULL),
	 (261,2,'USR','2232',NULL,'2024-10-10 09:22:18.969948',NULL,'2024-10-10 09:22:18.969954',false,NULL,NULL),
	 (286,2,'USR','datago에서 otp설정 방법 알려줘',NULL,'2024-11-02 21:10:44.334248',NULL,'2024-11-02 21:10:44.334251',false,'',NULL),
	 (185,4,'USR','내부그룹웨어',NULL,'2024-09-09 10:50:51.600203',NULL,'2024-09-09 10:50:51.600207',false,'COM_ingw.txt','그룹웨어 비밀번호 찾기 후에 비밀번호를 변경하라며 로그인화면으로 돌아가요.');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (185,4,'USR','내부 그룹웨어 비밀번호 찾기가 안돼요',NULL,'2024-09-09 10:55:18.628692',NULL,'2024-09-09 10:55:18.62872',false,NULL,NULL),
	 (185,4,'USR','내부그룹웨어',NULL,'2024-09-09 11:02:01.186235',NULL,'2024-09-09 11:02:01.186238',false,'COM_ingw.txt','휴게실 예약이 언제 열려?'),
	 (185,2,'USR','!',NULL,'2024-09-09 11:05:31.018106',NULL,'2024-09-09 11:05:31.018111',false,NULL,NULL),
	 (243,2,'USR','내규에서 동호회 만드는 방법이 명시되어 있어?',NULL,'2024-09-24 21:21:39.627465',NULL,'2024-09-24 21:21:39.627491',false,NULL,NULL),
	 (256,2,'USR','ITONE',NULL,'2024-09-26 14:57:45.999274',NULL,'2024-09-26 14:57:45.999277',false,'COM_itone','안녕!'),
	 (262,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-10 09:43:28.655556',NULL,'2024-10-10 09:43:28.655564',false,NULL,NULL),
	 (262,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "테스트할게", "items": [{"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}]}***',NULL,'2024-10-10 09:43:36.515379',NULL,'2024-10-10 09:43:36.515383',false,NULL,NULL),
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"그룹웨어 비밀번호 찾기 후에 비밀번호를 변경하라며 로그인화면으로 돌아가요.", "items":[{"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "외부그룹웨어", "value": "COM_exgw.txt"}]}***',NULL,'2024-09-09 10:50:49.783939',NULL,'2024-09-09 10:50:49.783942',false,NULL,NULL),
	 (185,0,'BOT','내부 그룹웨어서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":"내부 그룹웨어 비밀번호 찾기가 안돼요", "items":[{"name":"예", "value":"NICE_NGROUPWARE_SVC_OK"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***',NULL,'2024-09-09 10:55:19.42667',NULL,'2024-09-09 10:55:19.426673',false,NULL,NULL),
	 (185,0,'BOT','내부그룹웨어에서 SAP에 접속이 안 되는 경우, IT 담당자에게 문의하여 도움을 받는 것이 좋습니다. SAP 접속에 관련된 기술적인 문제가 발생한 것일 수 있으며, IT팀이 빠르게 해결해줄 수 있습니다. IT팀에 문의하여 상세한 상황을 설명하고 도움을 요청해보세요. 어떤 도움이 필요한지 더 알려주시면 더 자세히 안내해드릴게요.',NULL,'2024-09-09 10:56:12.055938',NULL,'2024-09-09 10:56:12.05594',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"휴게실 예약이 언제 열려?", "items":[{"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "ITONE", "value": "COM_itone.txt"}, {"name": "외부그룹웨어", "value": "COM_exgw.txt"}]}***',NULL,'2024-09-09 11:01:59.031413',NULL,'2024-09-09 11:01:59.031416',false,NULL,NULL),
	 (262,4,'USR','ITONE',NULL,'2024-10-10 09:43:40.801592',NULL,'2024-10-10 09:43:40.801598',false,'COM_itone','테스트할게'),
	 (286,0,'BOT','OTP 설정 방법은 다음과 같습니다:
1. 계정 생성 시 OTP 설정키 자동 부여
- 계정 생성 시, 자동으로 OTP 설정 키가 부여됩니다.
- 설정 키를 잊어버렸다면, Datago 담당자에게 연락하여 설정 키를 재전송 받으세요.
2. 휴대폰에서 설정 키 사용 방법
- Google Authenticator 앱을 휴대폰에 다운로드하세요.
- 앱에 접속한 후, ''+'' 버튼을 누르고 ''설정 키 입력''을 선택합니다.
- 부여받은 설정 키를 등록하세요.
- 계정 이름은 원하는 대로 설정할 수 있으며, ''Datago'' 등 구분 가능한 이름으로 저장하세요.
- OTP 입력 팝업이 나타나면, 휴대폰 앱에서 확인한 OTP를 입력하여 로그인하실 수 있습니다.',NULL,'2024-11-02 21:11:08.682259',NULL,'2024-11-02 21:11:08.682261',false,NULL,NULL),
	 (289,0,'BOT','ITSM 매뉴얼은 ITONE에 접속 후 "커뮤니티> 메뉴얼" 메뉴에서 확인 가능합니다. NICE플래닛 온보딩 페이지에서도 확인할 수 있습니다: https://planet.niceinfo.co.kr/pages/viewpage.action?pageId=94450856#heading-%EB%A7%A4%EB%89%B4%EC%96%BC',NULL,'2024-11-02 21:24:54.980955',NULL,'2024-11-02 21:24:54.980956',false,NULL,NULL),
	 (289,0,'BOT','동호회에 가입하는 방법은 다음과 같습니다:
1. NICE플래닛에 로그인합니다.
2. 좌측 메뉴에서 "커뮤니티"를 선택합니다.
3. "동호회"를 클릭하여 원하는 동호회를 선택합니다.
4. 동호회 페이지에서 "가입 신청" 또는 "가입하기" 버튼을 클릭합니다.
5. 동호회 관리자의 승인을 기다립니다.',NULL,'2024-11-02 21:25:25.626325',NULL,'2024-11-02 21:25:25.626328',false,NULL,NULL),
	 (289,0,'BOT','다른 사람을 내부메신저에 초대하는 방법은 다음과 같습니다:
1. 대화방을 만든 후 초대기능을 통해 초대할 수 있습니다.
2. 사용자 목록에서 ctrl 키 + 클릭을 이용해 다수 사용자를 선택한 후 우클릭하여 대화를 시작할 수도 있습니다.',NULL,'2024-11-02 21:25:52.266497',NULL,'2024-11-02 21:25:52.2665',false,NULL,NULL),
	 (290,0,'BOT','동호회 가입 방법은 다음과 같습니다:
1. 좌측 메뉴에서 "동호회"를 클릭합니다.
2. 가입하고 싶은 동호회를 선택합니다.
3. 동호회 홈페이지에서 "가입 신청" 버튼을 클릭합니다.
4. 동호회 관리자의 승인을 기다립니다.
5. 가입이 승인되면 해당 동호회의 회원이 됩니다.',NULL,'2024-11-02 21:26:25.007211',NULL,'2024-11-02 21:26:25.007216',false,NULL,NULL),
	 (291,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:26:48.480877',NULL,'2024-11-02 21:26:48.480878',false,NULL,NULL),
	 (185,4,'USR','sap 접속이 안돼요',NULL,'2024-09-09 10:55:40.125512',NULL,'2024-09-09 10:55:40.125515',false,NULL,NULL),
	 (185,4,'USR','내부그룹웨어에서 sap 접속이 안돼요',NULL,'2024-09-09 10:55:55.217953',NULL,'2024-09-09 10:55:55.217956',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (185,4,'USR','내부그룹웨어',NULL,'2024-09-09 10:55:58.132428',NULL,'2024-09-09 10:55:58.13243',false,'COM_ingw.txt','내부그룹웨어에서 sap 접속이 안돼요'),
	 (185,4,'USR','전자결재 문서 검색 방법 알려줘',NULL,'2024-09-09 11:00:26.147029',NULL,'2024-09-09 11:00:26.147042',false,NULL,NULL),
	 (243,2,'USR','예',NULL,'2024-09-24 21:33:57.389517',NULL,'2024-09-24 21:33:57.389569',false,'NICE_HGROUPWARE_SVC_OK','외부 그룹웨어 비밀번호 초기화'),
	 (255,2,'USR','ITONE',NULL,'2024-09-26 15:00:04.006694',NULL,'2024-09-26 15:00:04.0067',false,'COM_itone','안녕'),
	 (185,4,'USR','휴게실 예약이 언제 열려?',NULL,'2024-09-09 11:01:58.078203',NULL,'2024-09-09 11:01:58.078209',false,NULL,NULL),
	 (255,0,'BOT','ITONE에서 안녕하세요! ITONE을 통해 궁금한 사항이 있으시면 언제든지 물어보세요. 필요한 정보나 도움이 필요하신 경우 도와드리겠습니다.
[출처:ITONE]',NULL,'2024-09-26 15:00:14.262138',NULL,'2024-09-26 15:00:14.26214',false,NULL,NULL),
	 (255,0,'BOT','원스톱 CUE에서 서비스 카탈로그 등록 방법은 다음과 같습니다:
1. 원스톱 CUE 포털에 로그인합니다.
2. 좌측 메뉴에서 "서비스 카탈로그"를 선택합니다.
3. "서비스 등록" 버튼을 클릭하고 필요한 정보를 입력합니다.
4. 등록이 완료되면 "저장" 버튼을 클릭하여 변경 사항을 적용합니다.
원스톱 CUE를 통해 간편하게 서비스 카탈로그를 등록할 수 있습니다.
[출처:원스톱CUE]',NULL,'2024-09-26 15:00:47.374921',NULL,'2024-09-26 15:00:47.374923',false,NULL,NULL),
	 (262,4,'USR','테스트할게',NULL,'2024-10-10 09:43:34.396378',NULL,'2024-10-10 09:43:34.396382',false,'',NULL),
	 (286,2,'USR','고마워!',NULL,'2024-11-02 21:11:12.163923',NULL,'2024-11-02 21:11:12.163927',false,'',NULL),
	 (187,2,'USR','업무 담당자 정보를 알고싶어',NULL,'2024-09-09 14:48:13.743134',NULL,'2024-09-09 14:48:13.743139',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (286,0,'BOT','언제든지 도와드릴게요! 궁금한 점이 있으면 언제든지 물어보세요. 함께 해결해나가요! 😊',NULL,'2024-11-02 21:11:19.378425',NULL,'2024-11-02 21:11:19.378429',false,NULL,NULL),
	 (187,2,'USR','ALM 솔루션 담당자 정보 알려줘',NULL,'2024-09-09 14:49:05.870958',NULL,'2024-09-09 14:49:05.871217',false,NULL,NULL),
	 (288,0,'BOT','내부그룹웨어에서 ''고마워!''라는 메시지가 나왔다면, 이는 ''Thank you!''의 의미로 상대방에게 감사를 표현하는 메시지입니다. 이에 대한 응답으로는 ''천만에요!'' 또는 ''도와줄 수 있어 기쁩니다!''와 같은 긍정적인 표현을 사용할 수 있습니다.',NULL,'2024-11-02 21:18:01.060693',NULL,'2024-11-02 21:18:01.060696',false,NULL,NULL),
	 (187,2,'USR','업무 담당자 정보를 알고싶어',NULL,'2024-09-09 16:03:37.589497',NULL,'2024-09-09 16:03:37.589501',false,NULL,NULL),
	 (187,2,'USR','서비스별담당자2',NULL,'2024-09-09 16:03:40.309666',NULL,'2024-09-09 16:03:40.309669',false,'COM_manager2.txt','업무 담당자 정보를 알고싶어'),
	 (187,2,'USR','서비스별담당자4',NULL,'2024-09-09 16:03:56.83854',NULL,'2024-09-09 16:03:56.838544',false,'COM_manager4.txt','업무 담당자 정보를 알고싶어'),
	 (187,2,'USR','서비스별담당자3',NULL,'2024-09-09 16:04:06.317247',NULL,'2024-09-09 16:04:06.317251',false,'COM_manager3.txt','업무 담당자 정보를 알고싶어'),
	 (187,2,'USR','복리후생 담당자 알려줘',NULL,'2024-09-09 17:38:41.257291',NULL,'2024-09-09 17:38:41.2573',false,NULL,NULL),
	 (187,2,'USR','nice-i 담당자는 누구야?',NULL,'2024-09-09 17:41:41.561594',NULL,'2024-09-09 17:41:41.561621',false,NULL,NULL),
	 (187,2,'USR','nice-i 담당자는 누구야?
',NULL,'2024-09-09 17:41:55.553092',NULL,'2024-09-09 17:41:55.553101',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (187,2,'USR','급여관련 문의하고싶어',NULL,'2024-09-09 17:42:16.31019',NULL,'2024-09-09 17:42:16.310193',false,NULL,NULL),
	 (243,2,'USR','외부그룹웨어',NULL,'2024-09-24 21:23:44.121425',NULL,'2024-09-24 21:23:44.121442',false,'COM_exgw','헬로'),
	 (187,0,'BOT','복리후생 업무를 담당하는 "서비스담당자1"은 최선아(4158)입니다. 도움이 되셨나요?',NULL,'2024-09-09 17:38:50.387604',NULL,'2024-09-09 17:38:50.387609',false,NULL,NULL),
	 (187,0,'BOT','죄송합니다. "서비스담당자2"에서 "nice-i" 업무를 담당하는 담당자 정보가 없습니다.',NULL,'2024-09-09 17:41:46.921691',NULL,'2024-09-09 17:41:46.921693',false,NULL,NULL),
	 (243,2,'USR','내부그룹웨어',NULL,'2024-09-24 21:34:39.268109',NULL,'2024-09-24 21:34:39.268166',false,'COM_ingw','헬로'),
	 (255,2,'USR','서비스 카탈로그 등록 방법 알려줘',NULL,'2024-09-26 15:00:30.629339',NULL,'2024-09-26 15:00:30.629344',false,'',NULL),
	 (262,0,'BOT','죄송합니다. 제가 이해하는 한 ITONE에 대한 테스트 요청이 있으신 건가요? 테스트하실 내용을 좀 더 자세히 알려주시면 도와드릴게요.',NULL,'2024-10-10 09:43:51.175022',NULL,'2024-10-10 09:43:51.175024',false,NULL,NULL),
	 (287,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:15:45.053045',NULL,'2024-11-02 21:15:45.053047',false,NULL,NULL),
	 (288,2,'USR','그룹웨어 로그인이 안돼',NULL,'2024-11-02 21:17:02.231445',NULL,'2024-11-02 21:17:02.23145',false,'',NULL),
	 (288,2,'USR','땡큐',NULL,'2024-11-02 21:17:37.857214',NULL,'2024-11-02 21:17:37.857217',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (289,2,'USR','다른사람 초대는 어떻게 해?',NULL,'2024-11-02 21:25:40.303148',NULL,'2024-11-02 21:25:40.303152',false,'',NULL),
	 (243,2,'USR','외부 그룹웨어 비밀번호 초기화',NULL,'2024-09-24 21:25:59.966878',NULL,'2024-09-24 21:25:59.96697',false,NULL,NULL),
	 (245,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다.
저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 21:36:26.865449',NULL,'2024-09-24 21:36:26.865451',false,NULL,NULL),
	 (187,2,'USR','서비스별담당자1',NULL,'2024-09-09 17:42:19.177999',NULL,'2024-09-09 17:42:19.178002',false,'COM_manager1.txt','급여관련 문의하고싶어'),
	 (255,2,'USR','확실해?',NULL,'2024-09-26 15:04:08.621197',NULL,'2024-09-26 15:04:08.621207',false,'',NULL),
	 (187,2,'USR','그룹웨어 접속 방법 알려줘',NULL,'2024-09-09 18:49:42.201389',NULL,'2024-09-09 18:49:42.201422',false,NULL,NULL),
	 (255,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "확실해?", "items": [{"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2024-09-26 15:04:09.582953',NULL,'2024-09-26 15:04:09.582958',false,NULL,NULL),
	 (187,2,'USR','내부그룹웨어',NULL,'2024-09-09 18:49:46.070369',NULL,'2024-09-09 18:49:46.070378',false,'COM_ingw.txt','그룹웨어 접속 방법 알려줘'),
	 (255,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-26 15:04:23.228881',NULL,'2024-09-26 15:04:23.228884',false,NULL,NULL),
	 (187,2,'USR','접속url을 알려줘',NULL,'2024-09-09 18:50:12.826524',NULL,'2024-09-09 18:50:12.82653',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (166,4,'MGR','??!',NULL,'2024-10-10 10:01:45.39871',NULL,'2024-10-10 10:01:45.398723',false,NULL,NULL),
	 (187,2,'USR','그룹웨어 접속방법',NULL,'2024-09-09 18:50:30.168952',NULL,'2024-09-09 18:50:30.168956',false,NULL,NULL),
	 (287,2,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-11-02 21:16:20.982273',NULL,'2024-11-02 21:16:20.982279',false,'NICE_NGROUPWARE_SVC',NULL),
	 (187,2,'USR','외부그룹웨어',NULL,'2024-09-09 18:50:32.560233',NULL,'2024-09-09 18:50:32.560236',false,'COM_exgw.txt','그룹웨어 접속방법'),
	 (287,2,'USR','예',NULL,'2024-11-02 21:16:23.269036',NULL,'2024-11-02 21:16:23.26904',false,'NICE_NGROUPWARE_SVC_OK','내부 그룹웨어 비밀번호 초기화'),
	 (187,2,'USR','데이터고 접속 방법은/',NULL,'2024-09-09 18:51:06.503127',NULL,'2024-09-09 18:51:06.503135',false,NULL,NULL),
	 (288,2,'USR','천만에요',NULL,'2024-11-02 21:18:04.056636',NULL,'2024-11-02 21:18:04.056642',false,'',NULL),
	 (187,2,'USR','Datago',NULL,'2024-09-09 18:51:10.614999',NULL,'2024-09-09 18:51:10.615002',false,'COM_datago.txt','데이터고 접속 방법은/'),
	 (288,0,'BOT','내부그룹웨어에서 ''천만에요''라는 표현이 나왔다면, 이는 ''You''re welcome''의 한국어 표현으로 상대방의 감사에 대한 답변입니다. 이는 상대방에게 도움이 되어 기쁘다는 의미를 전달하는 것이니, 원활한 소통을 이어가는 데 도움이 됩니다.',NULL,'2024-11-02 21:18:16.825442',NULL,'2024-11-02 21:18:16.825444',false,NULL,NULL),
	 (289,2,'USR','동호회 가입 방법 알려줘',NULL,'2024-11-02 21:25:09.797091',NULL,'2024-11-02 21:25:09.797096',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (188,2,'USR','기업부문 인사 담당자를 알려줘',NULL,'2024-09-09 19:01:53.178986',NULL,'2024-09-09 19:01:53.178992',false,NULL,NULL),
	 (291,2,'USR','동호회 가입 방법?',NULL,'2024-11-02 21:26:54.814083',NULL,'2024-11-02 21:26:54.814086',false,'',NULL),
	 (188,2,'USR','서비스별담당자4',NULL,'2024-09-09 19:01:56.238306',NULL,'2024-09-09 19:01:56.238309',false,'COM_manager4.txt','기업부문 인사 담당자를 알려줘'),
	 (188,2,'USR','nice bizline 담당자는 누구야?',NULL,'2024-09-09 19:02:20.790229',NULL,'2024-09-09 19:02:20.790254',false,NULL,NULL),
	 (188,2,'USR','서비스별담당자4',NULL,'2024-09-09 19:02:22.737045',NULL,'2024-09-09 19:02:22.737047',false,'COM_manager4.txt','nice bizline 담당자는 누구야?'),
	 (188,2,'USR','데이터고 접속 방법을 알려줘',NULL,'2024-09-09 19:02:43.344981',NULL,'2024-09-09 19:02:43.344985',false,NULL,NULL),
	 (188,2,'USR','Datago',NULL,'2024-09-09 19:02:46.124917',NULL,'2024-09-09 19:02:46.12492',false,'COM_datago.txt','데이터고 접속 방법을 알려줘'),
	 (244,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 21:36:21.886364',NULL,'2024-09-24 21:36:21.88637',false,NULL,NULL),
	 (255,2,'USR','ITONE',NULL,'2024-09-26 15:04:17.944378',NULL,'2024-09-26 15:04:17.944382',false,'COM_itone','확실해?'),
	 (188,0,'BOT','Datago 시스템에 접속하는 두 가지 방법은 다음과 같습니다:
1. URL을 통한 직접 접속: 웹 브라우저에서 ''https://datago.niceinfo.co.kr'' 주소로 접속하세요.
2. 내부 그룹웨어를 통한 접속: 내부 그룹웨어에 접속하여, ''Link'' > ''datago'' 바로가기를 클릭하세요.',NULL,'2024-09-09 19:02:58.325498',NULL,'2024-09-09 19:02:58.325502',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (188,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"그룹웨어 접속 url이 뭐야?", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-09 19:03:24.243122',NULL,'2024-09-09 19:03:24.243125',false,NULL,NULL),
	 (166,4,'MGR','xptmxm',NULL,'2024-10-10 10:01:50.774438',NULL,'2024-10-10 10:01:50.774444',false,NULL,NULL),
	 (287,0,'BOT','내부 그룹웨어서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":"내부 그룹웨어 비밀번호 초기화", "items":[{"name":"예", "value":"NICE_NGROUPWARE_SVC_OK"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***',NULL,'2024-11-02 21:16:21.291443',NULL,'2024-11-02 21:16:21.291445',false,NULL,NULL),
	 (287,0,'BOT','박예린님, 내부 그룹웨어에 등록되어 있는 휴대전화번호로 임시 비밀번호가 발송되었습니다. 메세지 수신에 문제 발생 시 담당자에게 문의 부탁드립니다.',NULL,'2024-11-02 21:16:23.455603',NULL,'2024-11-02 21:16:23.455608',false,NULL,NULL),
	 (288,0,'BOT','내부 그룹웨어서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":"내부 그룹웨어 비밀번호 초기화", "items":[{"name":"예", "value":"NICE_NGROUPWARE_SVC_OK"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***',NULL,'2024-11-02 21:17:27.837091',NULL,'2024-11-02 21:17:27.837099',false,NULL,NULL),
	 (288,0,'BOT','박예린님, 내부 그룹웨어에 등록되어 있는 휴대전화번호로 임시 비밀번호가 발송되었습니다. 메세지 수신에 문제 발생 시 담당자에게 문의 부탁드립니다.',NULL,'2024-11-02 21:17:29.529727',NULL,'2024-11-02 21:17:29.529729',false,NULL,NULL),
	 (188,2,'USR','서비스별담당자2',NULL,'2024-09-09 19:03:03.863396',NULL,'2024-09-09 19:03:03.863404',false,'COM_manager2.txt','데이터고 접속 방법을 알려줘'),
	 (245,2,'USR','Datago',NULL,'2024-09-24 21:37:20.020806',NULL,'2024-09-24 21:37:20.020818',false,'COM_datago','안면?'),
	 (255,2,'USR','Datago',NULL,'2024-09-26 15:06:52.661725',NULL,'2024-09-26 15:06:52.661734',false,'COM_datago','확실해?'),
	 (166,4,'MGR','테스트',NULL,'2024-10-10 10:01:52.719208',NULL,'2024-10-10 10:01:52.719214',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (262,0,'BOT','안녕하세요! ITONE이 무엇을 도와드릴까요? 계속해서 질문해주세요.',NULL,'2024-10-10 10:02:10.986699',NULL,'2024-10-10 10:02:10.986701',false,NULL,NULL),
	 (288,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:16:55.844438',NULL,'2024-11-02 21:16:55.844442',false,NULL,NULL),
	 (288,2,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-11-02 21:17:27.554745',NULL,'2024-11-02 21:17:27.554749',false,'NICE_NGROUPWARE_SVC',NULL),
	 (288,2,'USR','예',NULL,'2024-11-02 21:17:29.332427',NULL,'2024-11-02 21:17:29.332429',false,'NICE_NGROUPWARE_SVC_OK','내부 그룹웨어 비밀번호 초기화'),
	 (288,0,'BOT','내부그룹웨어에서 ''땡큐''라는 메시지가 나왔다면, 이는 감사 또는 인사말을 의미합니다. 이는 일상적인 소통에서 사용되는 표현이니, 상황에 맞게 적극 활용해보세요!',NULL,'2024-11-02 21:17:47.851962',NULL,'2024-11-02 21:17:47.851967',false,NULL,NULL),
	 (289,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:24:29.841467',NULL,'2024-11-02 21:24:29.841468',false,NULL,NULL),
	 (290,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:26:05.316637',NULL,'2024-11-02 21:26:05.316639',false,NULL,NULL),
	 (188,2,'USR','그룹웨어 접속 url이 뭐야?',NULL,'2024-09-09 19:03:23.254642',NULL,'2024-09-09 19:03:23.254645',false,NULL,NULL),
	 (246,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다.
저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 21:42:06.951073',NULL,'2024-09-24 21:42:06.951075',false,NULL,NULL),
	 (188,0,'BOT','Datago 시스템에 접속하는 두 가지 방법은 다음과 같습니다:
1. URL을 통한 직접 접속: 웹 브라우저에서 ''https://datago.niceinfo.co.kr'' 주소로 접속하세요.
2. 내부 그룹웨어를 통한 접속: 내부 그룹웨어에 접속하여, ''Link'' > ''datago'' 바로가기를 클릭하세요.',NULL,'2024-09-09 19:03:16.331388',NULL,'2024-09-09 19:03:16.33139',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (255,0,'BOT','네, Datago에서 확실합니다. 무엇이 궁금하신가요? Datago에 관련된 질문이 있으면 언제든지 물어보세요.
[출처:Datago]',NULL,'2024-09-26 15:07:00.662191',NULL,'2024-09-26 15:07:00.662193',false,NULL,NULL),
	 (262,4,'USR','안녕',NULL,'2024-10-10 10:02:00.670985',NULL,'2024-10-10 10:02:00.670987',false,'',NULL),
	 (288,0,'BOT','그룹웨어 로그인이 안 될 때는 다음을 확인해보세요:
1. 아이디와 비밀번호가 정확한지 확인합니다.
2. 캐시 및 쿠키를 지워보거나 다른 브라우저를 시도해봅니다.
3. 네트워크 연결을 확인하고, VPN을 사용 중이라면 연결을 확인합니다.
4. 장시간 미사용으로 인한 계정 잠금 여부를 확인합니다.
5. 위 방법으로도 해결되지 않으면 관리팀에 문의해 보세요.',NULL,'2024-11-02 21:17:19.976776',NULL,'2024-11-02 21:17:19.976778',false,NULL,NULL),
	 (288,2,'USR','고마워!',NULL,'2024-11-02 21:17:49.857827',NULL,'2024-11-02 21:17:49.85783',false,'',NULL),
	 (289,2,'USR','itsm 매뉴얼 확인하고 싶어',NULL,'2024-11-02 21:24:42.478947',NULL,'2024-11-02 21:24:42.478949',false,'',NULL),
	 (290,2,'USR','동호회 가입 방법 알려줘',NULL,'2024-11-02 21:26:12.555531',NULL,'2024-11-02 21:26:12.555535',false,'',NULL),
	 (188,2,'USR','내부그룹웨어',NULL,'2024-09-09 19:03:26.499229',NULL,'2024-09-09 19:03:26.499233',false,'COM_ingw.txt','그룹웨어 접속 url이 뭐야?'),
	 (246,2,'USR','안녕?',NULL,'2024-09-24 21:42:22.443321',NULL,'2024-09-24 21:42:22.443327',false,NULL,NULL),
	 (246,2,'USR','내규',NULL,'2024-09-24 21:42:27.542661',NULL,'2024-09-24 21:42:27.542665',false,'LAW','안녕?'),
	 (255,2,'USR','Datago',NULL,'2024-09-26 15:09:53.675356',NULL,'2024-09-26 15:09:53.67536',false,'COM_datago','확실해?');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (265,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-10 14:10:21.675463',NULL,'2024-10-10 14:10:21.675467',false,NULL,NULL),
	 (265,4,'USR','ㅎ이',NULL,'2024-10-10 14:10:28.750933',NULL,'2024-10-10 14:10:28.750942',false,'',NULL),
	 (266,1,'MGR','?',NULL,'2024-10-10 14:11:59.054235',NULL,'2024-10-10 14:11:59.054246',false,NULL,NULL),
	 (292,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:27:38.804022',NULL,'2024-11-02 21:27:38.804024',false,NULL,NULL),
	 (292,0,'BOT','동호회 가입 방법은 그룹웨어 포탈에서 ''동호회'' 메뉴를 클릭하여 해당 동호회 페이지로 이동한 후, 상단에 있는 ''가입하기'' 버튼을 클릭하면 됩니다. 동호회 관리자의 승인을 받은 후 가입이 완료됩니다. 동호회 목록에서 관심 있는 동호회를 선택하여 가입 요청을 할 수도 있습니다.',NULL,'2024-11-02 21:27:59.300341',NULL,'2024-11-02 21:27:59.300345',false,NULL,NULL),
	 (255,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ''RunnableWithMessageHistory'' object has no attribute ''getMessages''',NULL,'2024-09-26 15:09:57.128033',NULL,'2024-09-26 15:09:57.128035',false,NULL,NULL),
	 (189,2,'USR','그룹웨어 접속 url이 뭐야?',NULL,'2024-09-09 19:10:13.614082',NULL,'2024-09-09 19:10:13.614091',false,NULL,NULL),
	 (265,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "ㅎ이", "items": [{"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}]}***',NULL,'2024-10-10 14:10:31.693087',NULL,'2024-10-10 14:10:31.693089',false,NULL,NULL),
	 (189,2,'USR','내부그룹웨어',NULL,'2024-09-09 19:10:16.773061',NULL,'2024-09-09 19:10:16.773064',false,'COM_ingw.txt','그룹웨어 접속 url이 뭐야?'),
	 (266,4,'USR','읽지 마세요ㅎ',NULL,'2024-10-10 14:17:12.089789',NULL,'2024-10-10 14:17:12.089825',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (189,2,'USR','내부그룹웨어 접속방법을 알려줘',NULL,'2024-09-09 19:10:41.01485',NULL,'2024-09-09 19:10:41.014856',false,NULL,NULL),
	 (292,2,'USR','동호회 가입 방법 알려줘',NULL,'2024-11-02 21:27:44.90556',NULL,'2024-11-02 21:27:44.905567',false,'',NULL),
	 (189,2,'USR','내부그룹웨어',NULL,'2024-09-09 19:10:44.620839',NULL,'2024-09-09 19:10:44.620844',false,'COM_ingw.txt','내부그룹웨어 접속방법을 알려줘'),
	 (189,2,'USR','내부그룹웨어 접속 url을 알려줘',NULL,'2024-09-09 19:14:48.333516',NULL,'2024-09-09 19:14:48.333521',false,NULL,NULL),
	 (189,2,'USR','내부그룹웨어',NULL,'2024-09-09 19:14:53.401173',NULL,'2024-09-09 19:14:53.401177',false,'COM_ingw.txt','내부그룹웨어 접속 url을 알려줘'),
	 (190,2,'USR','내부그룹웨어 접속 url을 알려줘
',NULL,'2024-09-09 19:16:13.327397',NULL,'2024-09-09 19:16:13.327401',false,NULL,NULL),
	 (190,2,'USR','내부그룹웨어',NULL,'2024-09-09 19:16:16.867517',NULL,'2024-09-09 19:16:16.86752',false,'COM_ingw.txt','내부그룹웨어 접속 url을 알려줘 '),
	 (190,2,'USR','외부그룹웨어',NULL,'2024-09-09 19:16:43.282998',NULL,'2024-09-09 19:16:43.283002',false,'COM_exgw.txt','내부그룹웨어 접속 url을 알려줘 '),
	 (191,2,'USR','접속방법',NULL,'2024-09-10 09:18:20.951716',NULL,'2024-09-10 09:18:20.951728',false,NULL,NULL),
	 (191,2,'USR','내부그룹웨어 접속 방법은?',NULL,'2024-09-10 09:18:52.263429',NULL,'2024-09-10 09:18:52.263433',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (191,2,'USR','내부그룹웨어',NULL,'2024-09-10 09:18:56.317383',NULL,'2024-09-10 09:18:56.317389',false,'COM_ingw.txt','내부그룹웨어 접속 방법은?'),
	 (191,2,'USR','Datago',NULL,'2024-09-10 09:19:31.229753',NULL,'2024-09-10 09:19:31.229757',false,'COM_datago.txt','데이터고 접속방법'),
	 (191,2,'USR','데이터고 접속방법',NULL,'2024-09-10 09:19:28.095122',NULL,'2024-09-10 09:19:28.095132',false,NULL,NULL),
	 (246,2,'USR','안녕?',NULL,'2024-09-24 22:08:47.657483',NULL,'2024-09-24 22:08:47.657488',false,NULL,NULL),
	 (191,0,'BOT','내부그룹웨어에 접속하려면 내부망에서 접속이 가능합니다. 내부망 그룹웨어에 접속하여 상단메뉴 ''게시판''을 선택하고, 좌측 트리에서 원하는 메뉴를 클릭하여 이용할 수 있습니다.',NULL,'2024-09-10 09:19:05.071188',NULL,'2024-09-10 09:19:05.07119',false,NULL,NULL),
	 (191,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"데이터고 접속방법", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-10 09:19:29.206459',NULL,'2024-09-10 09:19:29.206461',false,NULL,NULL),
	 (246,2,'USR','외부그룹웨어',NULL,'2024-09-24 22:12:28.380394',NULL,'2024-09-24 22:12:28.380398',false,'COM_exgw','안녕?'),
	 (247,2,'USR','안녕?? 핼피야~',NULL,'2024-09-24 22:20:05.162843',NULL,'2024-09-24 22:20:05.162846',false,NULL,NULL),
	 (257,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-26 19:59:25.484829',NULL,'2024-09-26 19:59:25.484831',false,NULL,NULL),
	 (266,4,'USR','안녕하세요',NULL,'2024-10-10 14:11:34.582964',NULL,'2024-10-10 14:11:34.582971',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (293,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:28:29.377601',NULL,'2024-11-02 21:28:29.377611',false,NULL,NULL),
	 (293,2,'USR','관리망 vdi가 안켜져요',NULL,'2024-11-02 21:28:36.039509',NULL,'2024-11-02 21:28:36.039512',false,'',NULL),
	 (246,2,'USR','내부그룹웨어',NULL,'2024-09-24 22:08:51.224649',NULL,'2024-09-24 22:08:51.224654',false,'COM_ingw','안녕?'),
	 (191,2,'USR','데이터고 결재선 지정 방법 알려줘',NULL,'2024-09-10 09:36:35.730997',NULL,'2024-09-10 09:36:35.731167',false,NULL,NULL),
	 (246,2,'USR','안녕?',NULL,'2024-09-24 22:14:59.346395',NULL,'2024-09-24 22:14:59.3464',false,NULL,NULL),
	 (191,2,'USR','화상회의 시스템 문의가있는데 담당자 알려줘',NULL,'2024-09-10 09:37:20.628345',NULL,'2024-09-10 09:37:20.628352',false,NULL,NULL),
	 (247,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕?? 핼피야~", "items": [{"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}]}***',NULL,'2024-09-24 22:20:06.711626',NULL,'2024-09-24 22:20:06.711628',false,NULL,NULL),
	 (191,2,'USR','서비스별담당자2',NULL,'2024-09-10 09:37:24.47007',NULL,'2024-09-10 09:37:24.470073',false,'COM_manager2.txt','화상회의 시스템 문의가있는데 담당자 알려줘'),
	 (247,2,'USR','ITONE',NULL,'2024-09-24 22:20:16.011053',NULL,'2024-09-24 22:20:16.011057',false,'COM_itone','안녕?? 핼피야~'),
	 (247,0,'BOT','안녕하세요! ITONE에 대해 궁금한 점이 있나요? 무엇을 도와드릴까요?',NULL,'2024-09-24 22:20:22.039584',NULL,'2024-09-24 22:20:22.039587',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (192,2,'USR','접속방법',NULL,'2024-09-10 09:43:22.912639',NULL,'2024-09-10 09:43:22.912646',false,NULL,NULL),
	 (257,2,'USR','헬로~',NULL,'2024-09-26 19:59:32.807443',NULL,'2024-09-26 19:59:32.807447',false,'',NULL),
	 (192,2,'USR','좀더 친근하게 말해줘',NULL,'2024-09-10 09:43:43.625357',NULL,'2024-09-10 09:43:43.625361',false,NULL,NULL),
	 (257,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "헬로~", "items": [{"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}]}***',NULL,'2024-09-26 19:59:33.909845',NULL,'2024-09-26 19:59:33.909848',false,NULL,NULL),
	 (192,2,'USR','서비스별담당자3',NULL,'2024-09-10 09:43:47.619454',NULL,'2024-09-10 09:43:47.619458',false,'COM_manager3.txt','좀더 친근하게 말해줘'),
	 (266,1,'MGR','네 안녕하세요',NULL,'2024-10-10 14:11:51.778673',NULL,'2024-10-10 14:11:51.778678',false,NULL,NULL),
	 (192,2,'USR','안녕',NULL,'2024-09-10 09:44:07.76489',NULL,'2024-09-10 09:44:07.764894',false,NULL,NULL),
	 (266,4,'USR','3',NULL,'2024-10-10 14:17:40.745731',NULL,'2024-10-10 14:17:40.745741',false,NULL,NULL),
	 (192,2,'USR','인사 담당자를 알려주라',NULL,'2024-09-10 09:44:23.937238',NULL,'2024-09-10 09:44:23.937246',false,NULL,NULL),
	 (293,0,'BOT','ITONE에서 관리망 VDI가 작동하지 않을 때는 다음 단계를 따라주세요:
1. 관리망 VDI 장치를 다시 시작해보세요.
2. 네트워크 연결을 확인하고 문제가 있는 경우 ITONE IT 서비스데스크에 알려주세요.
3. ITONE의 인시던트 관리 메뉴에서 VDI 장치의 상태를 확인할 수 있습니다. 해당 메뉴가 보이지 않는 경우 ITONE일반 요청서를 통해 권한을 신청해주세요.',NULL,'2024-11-02 21:28:52.806939',NULL,'2024-11-02 21:28:52.806942',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (192,2,'USR','인사 담당자가 누구야?',NULL,'2024-09-10 09:44:32.410615',NULL,'2024-09-10 09:44:32.410619',false,NULL,NULL),
	 (192,2,'USR','서비스별담당자3',NULL,'2024-09-10 09:44:35.723834',NULL,'2024-09-10 09:44:35.723836',false,'COM_manager3.txt','인사 담당자가 누구야?'),
	 (192,2,'USR','친근하게 말해줘',NULL,'2024-09-10 10:13:29.219976',NULL,'2024-09-10 10:13:29.21998',false,NULL,NULL),
	 (192,2,'USR','서비스별담당자3',NULL,'2024-09-10 10:13:32.777121',NULL,'2024-09-10 10:13:32.777124',false,'COM_manager3.txt','친근하게 말해줘'),
	 (192,2,'USR','NPay스코어는 누구한테 문의하면돼/',NULL,'2024-09-10 10:21:54.942736',NULL,'2024-09-10 10:21:54.942746',false,NULL,NULL),
	 (192,2,'USR','AIMS는?',NULL,'2024-09-10 10:22:08.358575',NULL,'2024-09-10 10:22:08.358578',false,NULL,NULL),
	 (192,2,'USR','CB부문 담당자',NULL,'2024-09-10 10:22:13.150163',NULL,'2024-09-10 10:22:13.150166',false,'COM_manager3.txt','AIMS는?'),
	 (192,2,'USR','전자결재 상태를 확인하고 싶어',NULL,'2024-09-10 11:30:30.01084',NULL,'2024-09-10 11:30:30.010847',false,NULL,NULL),
	 (215,2,'USR','Datago',NULL,'2024-09-23 19:41:00.833814',NULL,'2024-09-23 19:41:00.833823',false,'COM_datago.txt','접속방법이 무엇인가요?'),
	 (246,2,'USR','안녕?',NULL,'2024-09-24 22:12:22.131715',NULL,'2024-09-24 22:12:22.131719',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (192,2,'USR','내부그룹웨어',NULL,'2024-09-10 11:30:34.657548',NULL,'2024-09-10 11:30:34.657551',false,'COM_ingw.txt','전자결재 상태를 확인하고 싶어'),
	 (247,2,'USR','ITONE에서 비번 초기화 하는 방법 알려줘',NULL,'2024-09-24 22:20:33.643371',NULL,'2024-09-24 22:20:33.643375',false,NULL,NULL),
	 (193,2,'USR','담당자 정보를 확인하고싶어',NULL,'2024-09-10 13:51:16.907393',NULL,'2024-09-10 13:51:16.907395',false,NULL,NULL),
	 (247,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: cannot access local variable ''query'' where it is not associated with a value',NULL,'2024-09-24 22:20:36.114874',NULL,'2024-09-24 22:20:36.114876',false,NULL,NULL),
	 (193,2,'USR','IT부문, 정보보안 담당자',NULL,'2024-09-10 13:51:27.383831',NULL,'2024-09-10 13:51:27.383833',false,'COM_manager2.txt','담당자 정보를 확인하고싶어'),
	 (257,2,'USR','헬로~',NULL,'2024-09-26 20:10:51.662725',NULL,'2024-09-26 20:10:51.662731',false,'',NULL),
	 (193,2,'USR','IT부문',NULL,'2024-09-10 13:51:38.306702',NULL,'2024-09-10 13:51:38.306706',false,NULL,NULL),
	 (266,4,'USR','!',NULL,'2024-10-10 14:13:14.85077',NULL,'2024-10-10 14:13:14.850777',false,NULL,NULL),
	 (193,2,'USR','CB부문 담당자',NULL,'2024-09-10 13:53:02.008895',NULL,'2024-09-10 13:53:02.008923',false,'COM_manager3.txt','담당자 정보를 확인하고싶어'),
	 (266,4,'USR','2',NULL,'2024-10-10 14:17:27.304748',NULL,'2024-10-10 14:17:27.304761',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (193,2,'USR','인사',NULL,'2024-09-10 13:53:10.962025',NULL,'2024-09-10 13:53:10.962027',false,NULL,NULL),
	 (294,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:30:35.509564',NULL,'2024-11-02 21:30:35.509565',false,NULL,NULL),
	 (193,2,'USR','CB부문 인사 담당자 알려줘',NULL,'2024-09-10 13:54:03.900038',NULL,'2024-09-10 13:54:03.900077',false,NULL,NULL),
	 (295,2,'USR','cue가 뭐야?',NULL,'2024-11-02 21:31:52.530492',NULL,'2024-11-02 21:31:52.530497',false,'',NULL),
	 (193,2,'USR','IT전략기획 담당자를 알려줘',NULL,'2024-09-10 13:54:55.616742',NULL,'2024-09-10 13:54:55.616756',false,NULL,NULL),
	 (299,2,'USR','메신저가 멈췄어요
',NULL,'2024-11-02 21:43:33.759565',NULL,'2024-11-02 21:43:33.759567',false,'',NULL),
	 (300,2,'USR','메신저가 멈췄어요',NULL,'2024-11-02 21:44:09.626744',NULL,'2024-11-02 21:44:09.626747',false,'',NULL),
	 (194,2,'USR','안녕',NULL,'2024-09-10 13:55:15.26029',NULL,'2024-09-10 13:55:15.260295',false,NULL,NULL),
	 (300,0,'BOT','',NULL,'2024-11-02 21:44:10.14134',NULL,'2024-11-02 21:44:10.141342',false,NULL,NULL),
	 (304,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:47:55.918809',NULL,'2024-11-02 21:47:55.918819',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (195,2,'USR','안녕',NULL,'2024-09-10 13:59:26.76169',NULL,'2024-09-10 13:59:26.761691',false,NULL,NULL),
	 (196,2,'USR','IT전략기획 담당자를 알려줘',NULL,'2024-09-10 14:07:31.959296',NULL,'2024-09-10 14:07:31.959301',false,NULL,NULL),
	 (196,2,'USR','복리후생 담당자도 알려줘',NULL,'2024-09-10 14:15:10.244736',NULL,'2024-09-10 14:15:10.244749',false,NULL,NULL),
	 (197,2,'USR','전산구매 담당자가 누구야?',NULL,'2024-09-10 14:15:41.068988',NULL,'2024-09-10 14:15:41.068995',false,NULL,NULL),
	 (247,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다.
저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 22:19:54.920832',NULL,'2024-09-24 22:19:54.920834',false,NULL,NULL),
	 (257,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "헬로~", "items": [{"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}]}***',NULL,'2024-09-26 20:10:52.676604',NULL,'2024-09-26 20:10:52.676606',false,NULL,NULL),
	 (198,2,'USR','SAP 담당자는 누구야?',NULL,'2024-09-10 14:19:41.973682',NULL,'2024-09-10 14:19:41.973689',false,NULL,NULL),
	 (266,1,'MGR','왜 바로 읽어지지..',NULL,'2024-10-10 14:17:19.393207',NULL,'2024-10-10 14:17:19.393213',false,NULL,NULL),
	 (191,2,'USR','Nice2MeetU',NULL,'2024-09-10 14:35:23.961895',NULL,'2024-09-10 14:35:23.961898',false,'COM_n2mu.txt','화상회의 시스템 문의가있는데 담당자 알려줘'),
	 (294,2,'USR','동호회 가입 방법 알려줘',NULL,'2024-11-02 21:30:42.724178',NULL,'2024-11-02 21:30:42.724183',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (295,0,'BOT','CUE는 Common User IT Environment의 약자로, 일반 사용자의 IT 업무환경을 원스톱으로 빠르게 지원하는 것을 목표로 합니다. 현재는 입사자를 위한 "원스톱 CUE 발급 신청" 절차와 퇴사, 직무중지 등으로 자원을 일괄로 회수하기 위한 "원스톱 CUE 해지 신청" 절차를 운영하고 있습니다.',NULL,'2024-11-02 21:32:06.340848',NULL,'2024-11-02 21:32:06.340852',false,NULL,NULL),
	 (199,2,'USR','메일 첨부파일에 용량제한이 있어?',NULL,'2024-09-10 14:56:56.038161',NULL,'2024-09-10 14:56:56.038166',false,NULL,NULL),
	 (299,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:43:12.493455',NULL,'2024-11-02 21:43:12.493457',false,NULL,NULL),
	 (197,2,'USR','서비스 접속 방법',NULL,'2024-09-10 17:23:16.67203',NULL,'2024-09-10 17:23:16.672041',false,NULL,NULL),
	 (300,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:44:01.875613',NULL,'2024-11-02 21:44:01.875622',false,NULL,NULL),
	 (197,2,'USR','ITONE',NULL,'2024-09-10 17:23:28.111006',NULL,'2024-09-10 17:23:28.111013',false,'COM_itone.txt','서비스 접속 방법'),
	 (305,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:48:13.501241',NULL,'2024-11-02 21:48:13.501249',false,NULL,NULL),
	 (305,2,'USR','메신저가 멈췄어',NULL,'2024-11-02 21:48:16.745955',NULL,'2024-11-02 21:48:16.74596',false,'',NULL),
	 (200,2,'USR','챗봇테스트',NULL,'2024-09-11 14:27:33.978505',NULL,'2024-09-11 14:27:33.978509',false,NULL,NULL),
	 (200,2,'USR','종료',NULL,'2024-09-11 14:27:39.960755',NULL,'2024-09-11 14:27:39.960757',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (175,1,'USR','안녕',NULL,'2024-09-19 11:24:54.986422',NULL,'2024-09-19 11:24:54.986426',false,NULL,NULL),
	 (175,1,'USR','IT부문 및 정보보안 담당자',NULL,'2024-09-19 13:21:10.951049',NULL,'2024-09-19 13:21:10.951052',false,'COM_manager2.txt','안녕'),
	 (206,1,'USR','고마워',NULL,'2024-09-20 16:35:52.816335',NULL,'2024-09-20 16:35:52.816341',false,NULL,NULL),
	 (206,1,'USR','내규',NULL,'2024-09-20 16:49:13.637749',NULL,'2024-09-20 16:49:13.637757',false,'LAW','고마워'),
	 (206,1,'USR','내부그룹웨어',NULL,'2024-09-20 16:50:14.385322',NULL,'2024-09-20 16:50:14.385324',false,'COM_ingw.txt','고마워'),
	 (209,2,'USR','인사 담당자 알려줘',NULL,'2024-09-23 14:24:15.947205',NULL,'2024-09-23 14:24:15.947208',false,NULL,NULL),
	 (209,2,'USR','IT부문 및 정보보안 담당자',NULL,'2024-09-23 14:24:25.034416',NULL,'2024-09-23 14:24:25.03443',false,'COM_manager2.txt','인사 담당자 알려줘'),
	 (257,2,'USR','itsm에서 승인 티켓 회수할 수 있어?',NULL,'2024-09-26 20:13:19.013294',NULL,'2024-09-26 20:13:19.013299',false,'',NULL),
	 (211,2,'USR','안녕~',NULL,'2024-09-23 15:39:51.952181',NULL,'2024-09-23 15:39:51.952185',false,NULL,NULL),
	 (257,2,'USR','itsm에서 승인 티켓 회수할 수 있어?',NULL,'2024-09-26 20:14:25.063682',NULL,'2024-09-26 20:14:25.063687',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,2,'USR','itsm에서 승인 티켓 회수할 수 있어?',NULL,'2024-09-26 20:15:42.042476',NULL,'2024-09-26 20:15:42.042479',false,'',NULL),
	 (213,2,'USR','알리미 설치 방법 알려줘',NULL,'2024-09-23 17:33:30.531722',NULL,'2024-09-23 17:33:30.531728',false,NULL,NULL),
	 (207,1,'USR','너는 누가 만들었어?',NULL,'2024-10-14 15:27:58.024905',NULL,'2024-10-14 15:27:58.02492',false,NULL,NULL),
	 (168,2,'USR','알리미 설치 방법 알려줘',NULL,'2024-09-23 17:42:47.592992',NULL,'2024-09-23 17:42:47.593',false,NULL,NULL),
	 (267,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-14 15:28:18.316695',NULL,'2024-10-14 15:28:18.316697',false,NULL,NULL),
	 (214,2,'USR','알리미 설치방법 알려줘',NULL,'2024-09-23 17:43:26.400491',NULL,'2024-09-23 17:43:26.400495',false,NULL,NULL),
	 (267,1,'USR','너는 누가 만들었어?',NULL,'2024-10-14 15:28:25.48104',NULL,'2024-10-14 15:28:25.481046',false,'',NULL),
	 (214,2,'USR','알리미 설치 방법 알려줘',NULL,'2024-09-23 17:44:55.591748',NULL,'2024-09-23 17:44:55.591758',false,NULL,NULL),
	 (267,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "너는 누가 만들었어?", "items": [{"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}]}***',NULL,'2024-10-14 15:28:27.034698',NULL,'2024-10-14 15:28:27.034704',false,NULL,NULL),
	 (214,2,'USR','알리미 설치 방법 알려줘',NULL,'2024-09-23 17:47:11.790001',NULL,'2024-09-23 17:47:11.790006',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (267,1,'USR','외부메일',NULL,'2024-10-14 15:29:19.425436',NULL,'2024-10-14 15:29:19.425439',false,'COM_exmail','너는 누가 만들었어?'),
	 (214,2,'USR','알리미 설치 방법 알려줘',NULL,'2024-09-23 17:49:15.701346',NULL,'2024-09-23 17:49:15.701352',false,NULL,NULL),
	 (294,0,'BOT','동호회 가입 방법은 그룹웨어 포탈에서 ''동호회'' 메뉴를 클릭하여 해당 동호회를 선택하고, 상세 페이지에서 ''가입하기'' 버튼을 클릭하면 됩니다. 동호회 관리자의 승인 후 가입이 완료됩니다.',NULL,'2024-11-02 21:30:54.146054',NULL,'2024-11-02 21:30:54.146056',false,NULL,NULL),
	 (214,2,'USR','망연계 솔루션 비번 초기화하는 방법 알려줘',NULL,'2024-09-23 17:58:28.663158',NULL,'2024-09-23 17:58:28.663163',false,NULL,NULL),
	 (295,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:31:05.002308',NULL,'2024-11-02 21:31:05.002316',false,NULL,NULL),
	 (167,4,'MGR','안녕하세요',NULL,'2024-09-23 18:13:32.894827',NULL,'2024-09-23 18:13:32.894847',false,NULL,NULL),
	 (295,0,'BOT','ITSM 매뉴얼은 ITONE에 접속 후 "커뮤니티> 메뉴얼" 메뉴에서 확인 가능합니다. NICE플래닛 온보딩 페이지에서도 확인할 수 있습니다. 페이지 링크: https://planet.niceinfo.co.kr/pages/viewpage.action?pageId=94450856#heading-%EB%A7%A4%EB%89%B4%EC%96%BC',NULL,'2024-11-02 21:31:26.631052',NULL,'2024-11-02 21:31:26.631056',false,NULL,NULL),
	 (215,2,'USR','알리미 설칩 방법 알려줘',NULL,'2024-09-23 18:21:57.400125',NULL,'2024-09-23 18:21:57.400132',false,NULL,NULL),
	 (181,4,'MGR','종료~',NULL,'2024-09-23 18:24:46.528022',NULL,'2024-09-23 18:24:46.52803',false,NULL,NULL),
	 (215,2,'USR','알리미 설치 방법 알려줘',NULL,'2024-09-23 18:25:25.686838',NULL,'2024-09-23 18:25:25.686844',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (299,2,'USR','메신저가 멈췄어요',NULL,'2024-11-02 21:43:25.680431',NULL,'2024-11-02 21:43:25.680434',false,'',NULL),
	 (215,2,'USR','알리미 설치 방법 알려줘',NULL,'2024-09-23 18:26:20.052108',NULL,'2024-09-23 18:26:20.052114',false,NULL,NULL),
	 (299,0,'BOT','',NULL,'2024-11-02 21:43:26.990845',NULL,'2024-11-02 21:43:26.990848',false,NULL,NULL),
	 (215,2,'USR','NICE플래닛',NULL,'2024-09-23 18:27:00.688346',NULL,'2024-09-23 18:27:00.688349',false,'COM_planet.txt','알리미 설치 방법을 알려주세요?'),
	 (301,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:46:15.710172',NULL,'2024-11-02 21:46:15.710178',false,NULL,NULL),
	 (215,2,'USR','접속방법 알려줘',NULL,'2024-09-23 19:40:11.665312',NULL,'2024-09-23 19:40:11.665316',false,NULL,NULL),
	 (304,2,'USR','메신저가 멈췄어',NULL,'2024-11-02 21:48:03.734085',NULL,'2024-11-02 21:48:03.734088',false,'',NULL),
	 (305,2,'USR','메신저가 머췄어',NULL,'2024-11-02 21:48:20.802156',NULL,'2024-11-02 21:48:20.802161',false,'',NULL),
	 (209,0,'BOT','매니저: 김지은(4239)',NULL,'2024-09-23 14:24:27.49745',NULL,'2024-09-23 14:24:27.497453',false,NULL,NULL),
	 (215,2,'USR','Datago',NULL,'2024-09-23 19:41:30.298122',NULL,'2024-09-23 19:41:30.298124',false,'COM_datago.txt','결재선 지정 방법을 알려주세요?');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (247,2,'USR',' 비번 초기화 하는 방법 알려줘',NULL,'2024-09-24 22:23:26.557027',NULL,'2024-09-24 22:23:26.557033',false,NULL,NULL),
	 (215,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"결재선 지정 방법을 알려주세요?", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-23 19:41:22.33046',NULL,'2024-09-23 19:41:22.330462',false,NULL,NULL),
	 (247,0,'BOT','외부메일에서 안녕?? 핼피야~를 확인할 수 없습니다. 외부메일은 인터넷 PC에서 외부그룹웨어(https://gw.nice.co.kr)에 접속하여 확인할 수 있습니다. 궁금한 내용이 있으면 더 자세히 알려주세요.',NULL,'2024-09-24 22:24:59.024334',NULL,'2024-09-24 22:24:59.024339',false,NULL,NULL),
	 (247,2,'USR','itone 비번 초기화하는 방법 알려줘',NULL,'2024-09-24 22:25:10.976624',NULL,'2024-09-24 22:25:10.97663',false,NULL,NULL),
	 (257,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "itsm에서 승인 티켓 회수할 수 있어?", "items": [{"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}]}***',NULL,'2024-09-26 20:13:36.553727',NULL,'2024-09-26 20:13:36.553731',false,NULL,NULL),
	 (207,1,'USR','??',NULL,'2024-10-14 15:28:05.228198',NULL,'2024-10-14 15:28:05.228206',false,NULL,NULL),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:28:45.894611',NULL,'2024-10-14 15:28:45.894614',false,NULL,NULL),
	 (267,1,'USR','원스톱CUE',NULL,'2024-10-14 15:28:50.734675',NULL,'2024-10-14 15:28:50.734677',false,'COM_cue','너는 누가 만들었어?'),
	 (267,1,'USR','Datago',NULL,'2024-10-14 15:29:06.786213',NULL,'2024-10-14 15:29:06.786218',false,'COM_datago','너는 누가 만들었어?'),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:29:21.676346',NULL,'2024-10-14 15:29:21.676348',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (267,1,'USR','내부메일',NULL,'2024-10-14 15:29:54.67668',NULL,'2024-10-14 15:29:54.676684',false,'COM_inmail','너는 누가 만들었어?'),
	 (295,2,'USR','itsm 매뉴얼 확인하고 싶어',NULL,'2024-11-02 21:31:14.173384',NULL,'2024-11-02 21:31:14.173387',false,'',NULL),
	 (296,2,'USR','메신저가 멈췄어요',NULL,'2024-11-02 21:37:08.862275',NULL,'2024-11-02 21:37:08.862278',false,'',NULL),
	 (296,0,'BOT','메신저가 멈춘 경우, 먼저 프로그램을 다시 시작해보세요. 문제가 지속되면 그룹웨어 계정과 연동된 메신저 관련 문제는 내부 그룹웨어 담당자에게 문의해주세요.',NULL,'2024-11-02 21:37:19.172792',NULL,'2024-11-02 21:37:19.172795',false,NULL,NULL),
	 (247,0,'BOT','로그인 화면 하단의 "비밀번호를 잊으셨나요?" 링크를 통해 임시 비밀번호를 발급받을 수 있습니다. 이 방법으로 ITONE 비밀번호를 초기화할 수 있어요.',NULL,'2024-09-24 22:23:38.073948',NULL,'2024-09-24 22:23:38.073951',false,NULL,NULL),
	 (215,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 19:41:30.671506',NULL,'2024-09-23 19:41:30.671508',false,NULL,NULL),
	 (257,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "itsm에서 승인 티켓 회수할 수 있어?", "items": [{"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}]}***',NULL,'2024-09-26 20:14:50.988117',NULL,'2024-09-26 20:14:50.988121',false,NULL,NULL),
	 (207,1,'USR','아 쳇봇과 대화가 아니군요 ㅋㅋㅋㅋ',NULL,'2024-10-14 15:28:15.425375',NULL,'2024-10-14 15:28:15.425383',false,NULL,NULL),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:28:52.849513',NULL,'2024-10-14 15:28:52.849515',false,NULL,NULL),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:29:57.176625',NULL,'2024-10-14 15:29:57.176627',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (296,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:36:30.781078',NULL,'2024-11-02 21:36:30.781079',false,NULL,NULL),
	 (299,0,'BOT','메신저가 멈추었을 때 다음 단계를 따라주세요:
1. 메신저를 종료하고 다시 실행해보세요.
2. 컴퓨터를 재부팅하여 문제를 해결해보세요.
3. 계속해서 문제가 발생하면 내부그룹웨어 담당자에게 문의하여 도움을 받아보세요.',NULL,'2024-11-02 21:43:45.78472',NULL,'2024-11-02 21:43:45.784722',false,NULL,NULL),
	 (303,2,'USR','메신저가 멈췄어',NULL,'2024-11-02 21:47:50.029634',NULL,'2024-11-02 21:47:50.029637',false,'',NULL),
	 (306,0,'BOT','',NULL,'2024-11-02 21:49:10.798622',NULL,'2024-11-02 21:49:10.798623',false,NULL,NULL),
	 (215,2,'USR','Datago',NULL,'2024-09-23 19:42:15.043684',NULL,'2024-09-23 19:42:15.043694',false,'COM_datago','결재선 지정 방법을 알려주세요?'),
	 (247,2,'USR','내규',NULL,'2024-09-24 22:23:44.065753',NULL,'2024-09-24 22:23:44.065758',false,'LAW','안녕?? 핼피야~'),
	 (247,0,'BOT','안녕하세요! ITONE에 대해 궁금한 점이 있나요? 무엇을 도와드릴까요?
[출처:내부그룹웨어,ITONE,Nice2MeetU]',NULL,'2024-09-24 22:23:51.326356',NULL,'2024-09-24 22:23:51.326362',false,NULL,NULL),
	 (216,2,'USR','결재선 지정 방법 알려줘',NULL,'2024-09-23 20:16:25.537793',NULL,'2024-09-23 20:16:25.537798',false,NULL,NULL),
	 (247,0,'BOT','죄송합니다, 해당 질문에 대한 정보가 없습니다. 다른 궁금한 점이 있으시면 언제든지 물어보세요!',NULL,'2024-09-24 22:24:26.391715',NULL,'2024-09-24 22:24:26.391718',false,NULL,NULL),
	 (216,2,'USR','Datago',NULL,'2024-09-23 20:16:30.255631',NULL,'2024-09-23 20:16:30.255635',false,'COM_datago.txt','결재선 지정 방법을 알려드릴까요?');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (247,0,'BOT','ITONE 외부메일에서 비밀번호를 초기화하려면 외부그룹웨어(https://gw.nice.co.kr)에 접속한 후, 로그인 화면 하단의 "비밀번호를 잊으셨나요?" 링크를 클릭하여 임시 비밀번호를 발급받을 수 있습니다. 이를 통해 ITONE 비밀번호를 초기화할 수 있습니다.',NULL,'2024-09-24 22:25:23.662461',NULL,'2024-09-24 22:25:23.662465',false,NULL,NULL),
	 (216,2,'USR','Datago',NULL,'2024-09-23 20:16:33.833231',NULL,'2024-09-23 20:16:33.833234',false,'COM_datago','결재선 지정 방법을 알려드릴까요?'),
	 (257,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "itsm에서 승인 티켓 회수할 수 있어?", "items": [{"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}]}***',NULL,'2024-09-26 20:17:02.294335',NULL,'2024-09-26 20:17:02.294341',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:47:13.751277',NULL,'2024-09-26 20:47:13.751281',false,'',NULL),
	 (217,2,'USR','결재선 지정 방법 알려줘',NULL,'2024-09-23 20:22:31.218472',NULL,'2024-09-23 20:22:31.218482',false,NULL,NULL),
	 (267,1,'USR','ITONE',NULL,'2024-10-14 15:28:38.400318',NULL,'2024-10-14 15:28:38.400319',false,'COM_itone','너는 누가 만들었어?'),
	 (217,2,'USR','Datago',NULL,'2024-09-23 20:22:35.416972',NULL,'2024-09-23 20:22:35.416976',false,'COM_datago','결재선 지정 방법을 알려드릴까요?'),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:29:09.247318',NULL,'2024-10-14 15:29:09.24733',false,NULL,NULL),
	 (217,2,'USR','안녕!',NULL,'2024-09-23 20:23:23.34878',NULL,'2024-09-23 20:23:23.348789',false,NULL,NULL),
	 (296,2,'USR','관리망 vdi가 안켜져요',NULL,'2024-11-02 21:36:38.741421',NULL,'2024-11-02 21:36:38.741423',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (296,0,'BOT','VDI 서비스 상태를 확인하려면 관제포탈에 로그인한 후 홈 화면 대시보드를 확인하세요. 상세한 정보가 필요하다면 이벤트 메뉴의 성능대시보드를 이용해 조회할 수 있습니다.',NULL,'2024-11-02 21:36:49.043627',NULL,'2024-11-02 21:36:49.04363',false,NULL,NULL),
	 (218,2,'USR','안녕',NULL,'2024-09-23 20:24:19.319827',NULL,'2024-09-23 20:24:19.319833',false,NULL,NULL),
	 (297,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:38:05.00634',NULL,'2024-11-02 21:38:05.006341',false,NULL,NULL),
	 (216,2,'USR','서비스 접속방법도 알려줘',NULL,'2024-09-23 20:31:32.131542',NULL,'2024-09-23 20:31:32.131543',false,NULL,NULL),
	 (301,0,'BOT','메신저가 멈추었을 때 다음 단계를 따라주세요:
1. 메신저를 종료하고 다시 실행해보세요.
2. 컴퓨터를 재부팅하여 문제를 해결해보세요.
3. 최신 버전의 메신저를 설치하고 업데이트해보세요.
4. 문제가 지속되면 내부그룹웨어 담당자에게 문의하여 도움을 받아보세요.',NULL,'2024-11-02 21:46:36.203178',NULL,'2024-11-02 21:46:36.20318',false,NULL,NULL),
	 (218,2,'USR','동호회 운영지침',NULL,'2024-09-23 20:36:28.756674',NULL,'2024-09-23 20:36:28.756677',false,'LAW_001','안녕'),
	 (304,0,'BOT','',NULL,'2024-11-02 21:48:04.216098',NULL,'2024-11-02 21:48:04.2161',false,NULL,NULL),
	 (305,0,'BOT','',NULL,'2024-11-02 21:48:17.21585',NULL,'2024-11-02 21:48:17.215853',false,NULL,NULL),
	 (247,2,'USR','NICE플래닛',NULL,'2024-09-24 22:24:19.73196',NULL,'2024-09-24 22:24:19.731969',false,'COM_planet','안녕?? 핼피야~'),
	 (247,2,'USR','외부메일',NULL,'2024-09-24 22:24:48.710836',NULL,'2024-09-24 22:24:48.710846',false,'COM_exmail','안녕?? 핼피야~');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (218,0,'BOT','안녕하세요! 궁금한 게 있나요? 😊',NULL,'2024-09-23 20:36:32.685663',NULL,'2024-09-23 20:36:32.685665',false,NULL,NULL),
	 (219,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 21:12:02.735602',NULL,'2024-09-23 21:12:02.735604',false,NULL,NULL),
	 (257,2,'USR','itsm에서 승인 티켓 회수할 수 있어?',NULL,'2024-09-26 20:17:10.855791',NULL,'2024-09-26 20:17:10.855797',false,'',NULL),
	 (257,0,'BOT','승인 티켓을 회수하려면 다음 단계를 따르세요:
1. 해당 티켓의 상세화면으로 이동합니다.
2. "승인" 탭에서 승인 내역을 확인합니다.
3. 회수하려는 승인을 선택하고 "회수" 버튼을 클릭합니다.
4. 변경 사항을 저장하고 승인을 회수합니다. 
승인 티켓 회수는 승인 탭에서 진행 가능합니다.
[출처:ITONE]',NULL,'2024-09-26 20:17:42.526424',NULL,'2024-09-26 20:17:42.526426',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:19:15.253615',NULL,'2024-09-26 20:19:15.25362',false,'',NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:41:08.179672',NULL,'2024-09-26 20:41:08.179676',false,'',NULL),
	 (267,1,'USR','동호회 만들고 싶어',NULL,'2024-10-14 15:32:08.932238',NULL,'2024-10-14 15:32:08.932248',false,'',NULL),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:35:33.976909',NULL,'2024-10-14 15:35:33.976911',false,NULL,NULL),
	 (297,2,'USR','메신저가 멈췄어요',NULL,'2024-11-02 21:38:11.422958',NULL,'2024-11-02 21:38:11.422961',false,'',NULL),
	 (297,0,'BOT','메신저가 멈추었을 때 다음 단계를 따라주세요:
1. 메신저를 종료하고 다시 실행해보세요.
2. 컴퓨터를 재부팅하여 문제를 해결해보세요.
3. 계속해서 문제가 발생하면 내부그룹웨어 담당자에게 문의하여 도움을 받아보세요.',NULL,'2024-11-02 21:38:22.126445',NULL,'2024-11-02 21:38:22.12645',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (301,2,'USR','메신저가 멈췄어',NULL,'2024-11-02 21:46:21.74329',NULL,'2024-11-02 21:46:21.743293',false,'',NULL),
	 (303,0,'BOT','',NULL,'2024-11-02 21:47:50.693469',NULL,'2024-11-02 21:47:50.693471',false,NULL,NULL),
	 (306,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:49:05.474539',NULL,'2024-11-02 21:49:05.474547',false,NULL,NULL),
	 (306,2,'USR','메신저가 멈췄어요',NULL,'2024-11-02 21:49:10.335921',NULL,'2024-11-02 21:49:10.335924',false,'',NULL),
	 (247,2,'USR','ITONE 비번 초기화하는 방법 알려줘',NULL,'2024-09-24 22:28:11.635774',NULL,'2024-09-24 22:28:11.635779',false,NULL,NULL),
	 (257,0,'BOT','죄송합니다. 대시보드에서 사용자 정의 설정은 현재 불가능합니다. 대시보드는 미리 정의된 형식으로 제공되며 사용자가 직접 설정을 변경하거나 사용자 정의하는 기능은 제공되지 않습니다.원하는 정보를 빠르게 확인할 수 있도록 최적화되어 있습니다.',NULL,'2024-09-26 20:19:49.640608',NULL,'2024-09-26 20:19:49.640611',false,NULL,NULL),
	 (220,2,'USR','안녕',NULL,'2024-09-23 21:16:58.093738',NULL,'2024-09-23 21:16:58.093751',false,NULL,NULL),
	 (257,0,'BOT','죄송합니다. 대시보드에서 사용자 정의 설정은 현재 불가능합니다. 대시보드는 미리 정의된 형식으로 제공되며 사용자가 직접 설정을 변경하거나 사용자 정의하는 기능은 제공되지 않습니다. 원하는 정보를 빠르게 확인할 수 있도록 최적화되어 있습니다.',NULL,'2024-09-26 20:47:41.092933',NULL,'2024-09-26 20:47:41.092935',false,NULL,NULL),
	 (220,2,'USR','로그인 오류나',NULL,'2024-09-23 21:17:19.091304',NULL,'2024-09-23 21:17:19.091307',false,NULL,NULL),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:32:11.50938',NULL,'2024-10-14 15:32:11.509382',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (220,2,'USR','ITONE',NULL,'2024-09-23 21:19:41.441148',NULL,'2024-09-23 21:19:41.441154',false,'COM_itone.txt','로그인 오류인가요?'),
	 (267,1,'USR','ㅗㅗㅗ',NULL,'2024-10-14 15:35:39.908961',NULL,'2024-10-14 15:35:39.908966',false,'',NULL),
	 (220,2,'USR','ITONE',NULL,'2024-09-23 21:19:59.577653',NULL,'2024-09-23 21:19:59.577655',false,'COM_itone.txt','로그인 오류인가요?'),
	 (303,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:47:45.491001',NULL,'2024-11-02 21:47:45.491011',false,NULL,NULL),
	 (220,2,'USR','ITONE',NULL,'2024-09-23 21:20:02.974184',NULL,'2024-09-23 21:20:02.974187',false,'COM_itone','로그인 오류인가요?'),
	 (305,2,'USR','ㅇ러ㅏㅁㄴ얼;ㅓㄹ암',NULL,'2024-11-02 21:48:41.058587',NULL,'2024-11-02 21:48:41.05859',false,'',NULL),
	 (220,2,'USR','ITONE',NULL,'2024-09-23 21:20:28.456253',NULL,'2024-09-23 21:20:28.456256',false,'COM_itone.txt','로그인 오류인가요?'),
	 (221,2,'USR','안녕',NULL,'2024-09-23 22:05:53.488326',NULL,'2024-09-23 22:05:53.488327',false,NULL,NULL),
	 (221,2,'USR','Datago',NULL,'2024-09-23 22:05:56.936145',NULL,'2024-09-23 22:05:56.936148',false,'COM_datago','안녕'),
	 (222,2,'USR','로그인이 안돼.',NULL,'2024-09-23 22:06:29.024196',NULL,'2024-09-23 22:06:29.024205',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (222,2,'USR','Datago',NULL,'2024-09-23 22:06:47.047919',NULL,'2024-09-23 22:06:47.047921',false,'COM_datago.txt','Rephrased Request: 로그인 방법을 알려주세요.'),
	 (223,2,'USR','비밀번호 변경하려고 하는데 변경 팝업이 안보여.',NULL,'2024-09-23 22:11:45.994137',NULL,'2024-09-23 22:11:45.994145',false,NULL,NULL),
	 (247,0,'BOT','ITONE 외부메일에서 비밀번호를 초기화하려면 로그인 화면 하단의 "비밀번호를 잊으셨나요?" 링크를 클릭하여 임시 비밀번호를 발급받을 수 있습니다. 이를 통해 ITONE 비밀번호를 초기화할 수 있습니다.',NULL,'2024-09-24 22:28:37.562734',NULL,'2024-09-24 22:28:37.562738',false,NULL,NULL),
	 (257,0,'BOT','죄송합니다. 대시보드에서 사용자 정의 설정은 현재 불가능합니다. 대시보드는 미리 정의된 형식으로 제공되며 사용자가 직접 설정을 변경하거나 사용자 정의하는 기능은 제공되지 않습니다.원하는 정보를 빠르게 확인할 수 있도록 최적화되어 있습니다.',NULL,'2024-09-26 20:41:27.855124',NULL,'2024-09-26 20:41:27.855131',false,NULL,NULL),
	 (224,2,'USR','비밀번호 변경하는데 팝업이 안떠',NULL,'2024-09-23 22:14:06.177659',NULL,'2024-09-23 22:14:06.177662',false,NULL,NULL),
	 (267,1,'USR','동호회 만들고 싶어',NULL,'2024-10-14 15:34:07.983486',NULL,'2024-10-14 15:34:07.983491',false,'',NULL),
	 (224,2,'USR','Datago',NULL,'2024-09-23 22:14:24.763246',NULL,'2024-09-23 22:14:24.763249',false,'COM_datago.txt','비밀번호 변경하는 방법을 알려주세요.'),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:35:45.455928',NULL,'2024-10-14 15:35:45.455932',false,NULL,NULL),
	 (224,2,'USR','Datago',NULL,'2024-09-23 22:14:28.670493',NULL,'2024-09-23 22:14:28.670495',false,'COM_datago','비밀번호 변경하는 방법을 알려주세요.'),
	 (305,0,'BOT','메신저가 멈춘 경우 다음 단계를 따라 해결할 수 있습니다:
1. 메신저를 종료하고 다시 실행해보세요.
2. 컴퓨터를 재부팅하여 문제를 해결해보세요.
3. 최신 버전의 메신저를 설치하고 업데이트해보세요.
4. 문제가 지속되면 내부그룹웨어 담당자에게 문의하여 도움을 받아보세요.',NULL,'2024-11-02 21:48:35.243513',NULL,'2024-11-02 21:48:35.243515',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (305,0,'BOT','죄송합니다. 사용자의 입력이 이해되지 않습니다. 더 자세한 정보를 제공해주시거나 다른 질문이 있으시면 도와드리겠습니다.',NULL,'2024-11-02 21:48:49.57007',NULL,'2024-11-02 21:48:49.570078',false,NULL,NULL),
	 (225,2,'USR','비밀번호 변경하는데 팝업이 안떠',NULL,'2024-09-23 22:17:18.804179',NULL,'2024-09-23 22:17:18.804184',false,NULL,NULL),
	 (225,2,'USR','Datago',NULL,'2024-09-23 22:17:35.694422',NULL,'2024-09-23 22:17:35.694427',false,'COM_datago','비밀번호 변경할 때 팝업이 안 떠.'),
	 (225,2,'USR','외부그룹웨어',NULL,'2024-09-23 22:17:58.339323',NULL,'2024-09-23 22:17:58.339328',false,'COM_exgw','비밀번호 변경할 때 팝업이 안 떠.'),
	 (226,2,'USR','안녕',NULL,'2024-09-23 22:48:34.138894',NULL,'2024-09-23 22:48:34.138898',false,NULL,NULL),
	 (226,2,'USR','내부메일',NULL,'2024-09-23 22:49:17.812951',NULL,'2024-09-23 22:49:17.812957',false,'COM_inmail','안녕'),
	 (227,2,'USR','로그인이 왜 안되지',NULL,'2024-09-23 22:49:35.895119',NULL,'2024-09-23 22:49:35.895121',false,NULL,NULL),
	 (227,2,'USR','Datago',NULL,'2024-09-23 22:49:47.495194',NULL,'2024-09-23 22:49:47.495196',false,'COM_datago.txt','로그인이 왜 안되는지 원인과 해결방법을 알려주세요.'),
	 (247,2,'USR','ITONE 비번 초기화하는 방법 알려줘',NULL,'2024-09-24 22:49:35.687869',NULL,'2024-09-24 22:49:35.687882',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:51:16.410636',NULL,'2024-09-26 20:51:16.410642',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:34:08.492446',NULL,'2024-10-14 15:34:08.492448',false,NULL,NULL),
	 (267,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-10-14 15:35:42.323948',NULL,'2024-10-14 15:35:42.323951',false,NULL,NULL),
	 (307,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 21:50:07.533812',NULL,'2024-11-02 21:50:07.533814',false,NULL,NULL),
	 (308,4,'MGR','안녕하세요. itsm 담당자 최석진입니다.',NULL,'2024-11-02 22:01:57.369299',NULL,'2024-11-02 22:01:57.369328',false,NULL,NULL),
	 (227,2,'USR','Datago',NULL,'2024-09-23 22:49:50.987565',NULL,'2024-09-23 22:49:50.987569',false,'COM_datago','로그인이 왜 안되는지 원인과 해결방법을 알려주세요.'),
	 (247,0,'BOT','ITONE 외부메일에서 비밀번호를 초기화하려면 로그인 화면 하단의 "비밀번호를 잊으셨나요?" 링크를 클릭하여 임시 비밀번호를 발급받을 수 있습니다. 이를 통해 ITONE 비밀번호를 초기화할 수 있습니다.',NULL,'2024-09-24 22:49:54.51112',NULL,'2024-09-24 22:49:54.511124',false,NULL,NULL),
	 (227,2,'USR','로그인이 안되네....',NULL,'2024-09-24 10:05:32.199186',NULL,'2024-09-24 10:05:32.199193',false,NULL,NULL),
	 (227,0,'BOT','-',NULL,'2024-09-24 10:05:37.432508',NULL,'2024-09-24 10:05:37.432512',false,NULL,NULL),
	 (227,2,'USR','로그인이 안되네....',NULL,'2024-09-24 10:19:43.224405',NULL,'2024-09-24 10:19:43.22441',false,NULL,NULL),
	 (257,0,'BOT','사용자 정의 설정은 현재 불가능합니다. 대시보드는 미리 정의된 형식으로 제공되며 사용자가 직접 설정을 변경하거나 사용자 정의하는 기능은 제공되지 않습니다. 대시보드는 미리 설정된 정보를 효율적으로 제공하기 위해 최적화되어 있습니다.
[출처:ITONE]',NULL,'2024-09-26 20:51:29.817357',NULL,'2024-09-26 20:51:29.817362',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (227,2,'USR','내부메일',NULL,'2024-09-24 10:19:59.9476',NULL,'2024-09-24 10:19:59.947603',false,'COM_inmail.txt','로그인이 안되는데 해결 방법을 알려주세요.'),
	 (267,1,'USR','??',NULL,'2024-10-14 15:35:31.038588',NULL,'2024-10-14 15:35:31.038591',false,'',NULL),
	 (227,2,'USR','내부메일',NULL,'2024-09-24 10:20:29.038294',NULL,'2024-09-24 10:20:29.038306',false,'COM_inmail.txt','로그인이 안되는데 해결 방법을 알려주세요.'),
	 (307,2,'USR','메신저가 멈췄어요',NULL,'2024-11-02 21:50:17.890265',NULL,'2024-11-02 21:50:17.890269',false,'',NULL),
	 (227,2,'USR','로그인이 왜 안되지',NULL,'2024-09-24 10:33:10.087951',NULL,'2024-09-24 10:33:10.087956',false,NULL,NULL),
	 (308,1,'MGR','지금 다시 확인 부탁드립니다~',NULL,'2024-11-02 21:54:12.774861',NULL,'2024-11-02 21:54:12.774872',false,NULL,NULL),
	 (227,2,'USR','ITONE',NULL,'2024-09-24 10:51:56.852558',NULL,'2024-09-24 10:51:56.85256',false,'COM_itone','로그인이 왜 안되지'),
	 (227,2,'USR','Datago',NULL,'2024-09-24 11:01:55.537454',NULL,'2024-09-24 11:01:55.537484',false,'COM_datago','로그인이 왜 안되지'),
	 (308,2,'USR','넵!!',NULL,'2024-11-02 22:03:37.864231',NULL,'2024-11-02 22:03:37.86424',false,NULL,NULL),
	 (227,2,'USR','내부메일',NULL,'2024-09-24 11:03:12.609491',NULL,'2024-09-24 11:03:12.609523',false,'COM_inmail','로그인이 왜 안되지');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (228,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 11:05:14.15701',NULL,'2024-09-24 11:05:14.157126',false,NULL,NULL),
	 (228,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 11:23:26.260252',NULL,'2024-09-24 11:23:26.260287',false,NULL,NULL),
	 (229,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 13:49:11.74519',NULL,'2024-09-24 13:49:11.745196',false,NULL,NULL),
	 (229,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 13:56:02.627305',NULL,'2024-09-24 13:56:02.627311',false,NULL,NULL),
	 (229,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 13:57:19.008715',NULL,'2024-09-24 13:57:19.008724',false,NULL,NULL),
	 (229,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 14:06:35.309703',NULL,'2024-09-24 14:06:35.309725',false,NULL,NULL),
	 (229,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 14:12:31.883787',NULL,'2024-09-24 14:12:31.883794',false,NULL,NULL),
	 (229,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 14:19:39.628987',NULL,'2024-09-24 14:19:39.628993',false,NULL,NULL),
	 (247,2,'USR','ITONE 비번 초기화하는 방법 알려줘',NULL,'2024-09-24 22:51:40.271428',NULL,'2024-09-24 22:51:40.271451',false,NULL,NULL),
	 (229,2,'USR','내부그룹웨어',NULL,'2024-09-24 14:19:53.083292',NULL,'2024-09-24 14:19:53.083297',false,'COM_ingw','로그인이 왜 안되지?');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:52:10.022255',NULL,'2024-09-26 20:52:10.022261',false,'',NULL),
	 (229,2,'USR','Datago',NULL,'2024-09-24 14:19:57.624852',NULL,'2024-09-24 14:19:57.624855',false,'COM_datago','내부그룹웨어'),
	 (267,1,'USR','ㅎㅎㅎ
',NULL,'2024-10-14 15:35:43.037762',NULL,'2024-10-14 15:35:43.037767',false,'',NULL),
	 (229,2,'USR','Datago',NULL,'2024-09-24 14:22:16.260491',NULL,'2024-09-24 14:22:16.260546',false,'COM_datago','Datago'),
	 (307,0,'BOT','메신저가 멈추었을 때 다음 단계를 따라주세요:
1. 메신저를 종료하고 다시 실행해보세요.
2. 컴퓨터를 재부팅하여 문제를 해결해보세요.
3. 계속해서 문제가 발생하면 내부그룹웨어 담당자에게 문의하여 도움을 받아보세요.',NULL,'2024-11-02 21:50:31.302128',NULL,'2024-11-02 21:50:31.302131',false,NULL,NULL),
	 (229,2,'USR','Datago',NULL,'2024-09-24 14:24:27.871188',NULL,'2024-09-24 14:24:27.871199',false,'COM_datago','Datago'),
	 (229,2,'USR','로그인이 왜 안되지?',NULL,'2024-09-24 16:05:25.625487',NULL,'2024-09-24 16:05:25.625492',false,NULL,NULL),
	 (229,2,'USR','내규',NULL,'2024-09-24 16:05:31.581226',NULL,'2024-09-24 16:05:31.581229',false,'LAW','로그인이 왜 안되지?'),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:31:03.535781',NULL,'2024-09-24 17:31:03.535787',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 16:07:27.758999',NULL,'2024-09-24 16:07:27.759013',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (247,0,'BOT','ITONE 외부메일에서 비밀번호를 초기화하려면 로그인 화면 하단의 "비밀번호를 잊으셨나요?" 링크를 클릭하여 임시 비밀번호를 발급받을 수 있습니다. 이를 통해 ITONE 비밀번호를 초기화할 수 있습니다.',NULL,'2024-09-24 22:54:07.459783',NULL,'2024-09-24 22:54:07.459787',false,NULL,NULL),
	 (229,0,'BOT','로그인이 안 되는 경우, 먼저 아이디와 비밀번호를 정확히 입력했는지 확인해주세요. 그리고 네트워크 연결 상태도 확인해보세요. 만약에도 로그인에 문제가 있다면 Datago 담당자에게 문의하여 도움을 받아보시는 것이 좋을 것 같아요. 어떤 도움이 필요하신가요?',NULL,'2024-09-24 16:05:48.447187',NULL,'2024-09-24 16:05:48.447189',false,NULL,NULL),
	 (247,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "담당자 정보 알려줘", "items": [{"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}]}***',NULL,'2024-09-24 23:28:28.969861',NULL,'2024-09-24 23:28:28.969863',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:54:11.371668',NULL,'2024-09-26 20:54:11.371677',false,'',NULL),
	 (267,1,'USR','너는 누가 만들었어?',NULL,'2024-10-14 15:44:38.95375',NULL,'2024-10-14 15:44:38.953755',false,'',NULL),
	 (267,1,'USR','동호회를 만들고 싶어',NULL,'2024-10-14 15:45:47.144483',NULL,'2024-10-14 15:45:47.144486',false,'',NULL),
	 (267,1,'USR','동호회를 만들고 싶어',NULL,'2024-10-14 15:55:23.584616',NULL,'2024-10-14 15:55:23.584618',false,'',NULL),
	 (267,0,'BOT','동호회를 만들고 싶을 때는 다음 단계를 따르세요:
1. 플래닛 로그인 후
2. 최상단 메뉴 중 "공간" 클릭
3. 서브 메뉴 "공간 만들기" 클릭
4. "빈 공간" 선택 후 "다음" 클릭
5. 공간 이름과 스페이스 키 입력 후 "만들기" 클릭
6. 동호회 공간이 생성됩니다.',NULL,'2024-10-14 15:55:35.951827',NULL,'2024-10-14 15:55:35.951829',false,NULL,NULL),
	 (308,1,'MGR','안녕하세요, 서비스운영실 최우영입니다. 메신저 재부팅 후에도 동일한 현상 나타나시나요?',NULL,'2024-11-02 21:52:07.374951',NULL,'2024-11-02 21:52:07.374958',false,NULL,NULL),
	 (308,2,'USR','네, 이제 정상 동작하고 있습니다! 감사합니다!',NULL,'2024-11-02 21:54:41.036104',NULL,'2024-11-02 21:54:41.036112',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (247,2,'USR','ITONE 비번 초기화하는 방법 알려줘',NULL,'2024-09-24 22:56:12.701425',NULL,'2024-09-24 22:56:12.701431',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 16:07:52.907948',NULL,'2024-09-24 16:07:52.90795',false,NULL,NULL),
	 (247,2,'USR','너는 아는게 뭐야?',NULL,'2024-09-24 23:32:48.026764',NULL,'2024-09-24 23:32:48.026767',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 16:09:51.547012',NULL,'2024-09-24 16:09:51.547019',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 16:12:43.629955',NULL,'2024-09-24 16:12:43.629961',false,NULL,NULL),
	 (257,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-26 20:55:58.682102',NULL,'2024-09-26 20:55:58.682107',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 16:13:47.924683',NULL,'2024-09-24 16:13:47.924687',false,NULL,NULL),
	 (267,0,'BOT','저는 NICE플래닛에서 만들어진 AI 어시스턴트입니다.',NULL,'2024-10-14 15:44:45.649302',NULL,'2024-10-14 15:44:45.649304',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 16:16:58.69282',NULL,'2024-09-24 16:16:58.692828',false,NULL,NULL),
	 (308,2,'USR','안녕하세요. 메신저 재부팅했는데 로그인 한 후에 또 멈췄습니다.',NULL,'2024-11-02 21:52:37.640627',NULL,'2024-11-02 21:52:37.640638',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,2,'USR','데이터고 비번 변경 방법 알려줘',NULL,'2024-09-24 16:17:52.908121',NULL,'2024-09-24 16:17:52.908126',false,NULL,NULL),
	 (308,2,'USR','확인되었습니다! 감사합니다:)',NULL,'2024-11-02 22:03:02.373743',NULL,'2024-11-02 22:03:02.373749',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 16:48:01.570104',NULL,'2024-09-24 16:48:01.570114',false,NULL,NULL),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 16:48:56.461084',NULL,'2024-09-24 16:48:56.461088',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 17:03:36.418749',NULL,'2024-09-24 17:03:36.418759',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 17:05:23.83103',NULL,'2024-09-24 17:05:23.831036',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 17:06:33.952764',NULL,'2024-09-24 17:06:33.952771',false,NULL,NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 17:14:57.39715',NULL,'2024-09-24 17:14:57.397156',false,NULL,NULL),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:17:50.874035',NULL,'2024-09-24 17:17:50.874041',false,NULL,NULL),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:19:18.658404',NULL,'2024-09-24 17:19:18.658411',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:22:47.841444',NULL,'2024-09-24 17:22:47.841448',false,NULL,NULL),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:25:35.764112',NULL,'2024-09-24 17:25:35.764117',false,NULL,NULL),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:27:35.365623',NULL,'2024-09-24 17:27:35.365631',false,NULL,NULL),
	 (247,0,'BOT','로그인 화면 하단의 "비밀번호를 잊으셨나요?" 링크를 통해 임시 비밀번호를 발급받을 수 있습니다. 이 방법으로 ITONE 비밀번호를 초기화할 수 있어요.',NULL,'2024-09-24 22:56:40.111528',NULL,'2024-09-24 22:56:40.11153',false,NULL,NULL),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:32:44.69636',NULL,'2024-09-24 17:32:44.696367',false,NULL,NULL),
	 (247,2,'USR','ITONE',NULL,'2024-09-24 23:28:34.339373',NULL,'2024-09-24 23:28:34.339376',false,'COM_itone','담당자 정보 알려줘'),
	 (229,2,'USR','그룹웨어 비번 변경 방법 알려줘',NULL,'2024-09-24 17:34:16.521651',NULL,'2024-09-24 17:34:16.521655',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:56:40.485084',NULL,'2024-09-26 20:56:40.485091',false,'',NULL),
	 (229,2,'USR','동호회 만들려면 조건이 있을까?',NULL,'2024-09-24 17:36:18.994035',NULL,'2024-09-24 17:36:18.994041',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:57:34.375835',NULL,'2024-09-26 20:57:34.375838',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,2,'USR','안녕?',NULL,'2024-09-24 17:37:32.419175',NULL,'2024-09-24 17:37:32.419181',false,NULL,NULL),
	 (267,0,'BOT','동호회를 만들고 싶을 때는 다음 단계를 따르세요:
1. 플래닛 로그인 후
2. 최상단 메뉴 중 "공간" 클릭
3. 서브 메뉴 "공간 만들기" 클릭
4. "빈 공간" 선택 후 "다음" 클릭
5. 공간 이름과 스페이스 키 입력 후 "만들기" 클릭
6. 동호회 공간이 생성됩니다.',NULL,'2024-10-14 15:46:02.157914',NULL,'2024-10-14 15:46:02.157916',false,NULL,NULL),
	 (229,2,'USR','기업부문 담당자',NULL,'2024-09-24 17:37:40.433002',NULL,'2024-09-24 17:37:40.433007',false,'COM_manager4','안녕?'),
	 (308,1,'MGR','pc에 메모리가 부족해서 해당 현상 발생할 수 있습니다. 잠시만 기다리시면 조치해드리겠습니다.',NULL,'2024-11-02 21:53:38.670413',NULL,'2024-11-02 21:53:38.670417',false,NULL,NULL),
	 (229,2,'USR','Datago',NULL,'2024-09-24 17:41:12.545444',NULL,'2024-09-24 17:41:12.545448',false,'COM_datago','안녕?'),
	 (229,2,'USR','itsm 비번 변경하고 싶어',NULL,'2024-09-24 17:43:46.307603',NULL,'2024-09-24 17:43:46.307608',false,NULL,NULL),
	 (229,2,'USR','itone 비번 변경하고 싶어',NULL,'2024-09-24 17:44:14.394178',NULL,'2024-09-24 17:44:14.394186',false,NULL,NULL),
	 (229,2,'USR','아니오',NULL,'2024-09-24 17:44:21.288834',NULL,'2024-09-24 17:44:21.288838',false,'NICE_ALL_SVC','itone 비번 변경하고 싶어'),
	 (229,2,'USR','원하는 서비스가 없어',NULL,'2024-09-24 17:44:32.729853',NULL,'2024-09-24 17:44:32.729856',false,NULL,NULL),
	 (229,2,'USR','ITONE',NULL,'2024-09-24 17:44:38.612156',NULL,'2024-09-24 17:44:38.612159',false,'COM_itone','원하는 서비스가 없어');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,2,'USR','ITONE',NULL,'2024-09-24 17:45:22.010663',NULL,'2024-09-24 17:45:22.010666',false,'COM_itone','원하는 서비스가 없어'),
	 (247,2,'USR','담당자 정보 알려줘',NULL,'2024-09-24 23:28:21.333023',NULL,'2024-09-24 23:28:21.333026',false,NULL,NULL),
	 (229,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "원하는 서비스가 없어", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}]}***',NULL,'2024-09-24 17:44:33.625',NULL,'2024-09-24 17:44:33.625004',false,NULL,NULL),
	 (257,0,'BOT','사용자 정의 설정은 현재 불가능합니다. 대시보드는 미리 정의된 형식으로 제공되며 사용자가 직접 설정을 변경하거나 사용자 정의하는 기능은 제공되지 않습니다. 대시보드는 미리 설정된 정보를 효율적으로 제공하기 위해 최적화되어 있습니다.
[출처:관제]',NULL,'2024-09-26 20:56:59.455759',NULL,'2024-09-26 20:56:59.455763',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:57:20.839673',NULL,'2024-09-26 20:57:20.83968',false,'',NULL),
	 (257,0,'BOT','',NULL,'2024-09-26 20:57:24.520053',NULL,'2024-09-26 20:57:24.520058',false,NULL,NULL),
	 (268,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 09:10:06.639108',NULL,'2024-10-16 09:10:06.639109',false,NULL,NULL),
	 (308,2,'USR','넵!',NULL,'2024-11-02 21:53:51.41205',NULL,'2024-11-02 21:53:51.412057',false,NULL,NULL),
	 (308,1,'MGR','네~ itsm 담당자분 연결해서 바로 조치해드릴 수 있도록 하겠습니다. 잠시만 기다려주세요!',NULL,'2024-11-02 21:56:54.624455',NULL,'2024-11-02 21:56:54.624463',false,NULL,NULL),
	 (247,0,'BOT','ITONE에서 담당자 정보를 확인하려면 IT기획실에 문의하시거나 ITONE 일반 양식을 통해 요청하시면 됩니다. 담당자 정보를 확인하여 필요한 도움을 받을 수 있습니다.',NULL,'2024-09-24 23:28:43.690007',NULL,'2024-09-24 23:28:43.690009',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,0,'BOT','',NULL,'2024-09-26 20:57:34.745697',NULL,'2024-09-26 20:57:34.745699',false,NULL,NULL),
	 (230,2,'USR','안녕?',NULL,'2024-09-24 18:31:58.858378',NULL,'2024-09-24 18:31:58.858384',false,NULL,NULL),
	 (269,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 11:28:23.461251',NULL,'2024-10-16 11:28:23.461253',false,NULL,NULL),
	 (230,2,'USR','안녕?',NULL,'2024-09-24 18:32:20.3463',NULL,'2024-09-24 18:32:20.346304',false,NULL,NULL),
	 (269,1,'USR','CUE가 뭐야?',NULL,'2024-10-16 11:29:05.750395',NULL,'2024-10-16 11:29:05.7504',false,'',NULL),
	 (230,2,'USR','안녕?',NULL,'2024-09-24 18:34:10.585574',NULL,'2024-09-24 18:34:10.585585',false,NULL,NULL),
	 (269,0,'BOT','내부그룹웨어에서 로그인에 문제가 발생한 경우, 다음 단계를 따라 해결할 수 있습니다:
1. 먼저 인터넷 연결 상태를 확인하고, 정상적으로 연결되어 있는지 확인해주세요.
2. 사용자 ID와 비밀번호를 정확히 입력했는지 다시 한번 확인해주세요.
3. 비밀번호를 잊어버렸다면, 비밀번호 재설정을 위해 ''비밀번호 찾기'' 기능을 이용해보세요.
4. 계속해서 로그인에 문제가 있다면, IT 지원팀에 문의하여 추가 도움을 받을 수 있습니다.',NULL,'2024-10-16 11:29:48.314619',NULL,'2024-10-16 11:29:48.314626',false,NULL,NULL),
	 (231,2,'USR','안녕',NULL,'2024-09-24 18:34:25.549575',NULL,'2024-09-24 18:34:25.549581',false,NULL,NULL),
	 (269,0,'BOT','내부그룹웨어에서 IT 지원팀에 대한 정보를 얻으려면 다음 단계를 따르세요:
1. 그룹웨어 포탈에 로그인합니다.
2. 상단 메뉴에서 ''IT 지원'' 또는 ''도움말''과 같은 섹션을 찾아봅니다.
3. 해당 섹션에서 IT 지원팀의 연락처 또는 도움을 받을 수 있는 방법에 대한 정보를 확인할 수 있습니다.
4. 필요한 경우, 전화나 이메일을 통해 직접 IT 지원팀에 문의할 수 있습니다.',NULL,'2024-10-16 11:30:14.546539',NULL,'2024-10-16 11:30:14.546544',false,NULL,NULL),
	 (231,2,'USR','동호회가입방법',NULL,'2024-09-24 18:35:10.04762',NULL,'2024-09-24 18:35:10.047626',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (308,2,'USR','그리고 itsm 문의도 드리려고 하는데요, 그룹it요청 티켓 상신하였는데 담당자에게 해당 티켓이 보이지 않는다고 해서 확인 부탁드립니다!',NULL,'2024-11-02 21:56:16.711412',NULL,'2024-11-02 21:56:16.711421',false,NULL,NULL),
	 (231,2,'USR','안녕',NULL,'2024-09-24 18:35:42.577439',NULL,'2024-09-24 18:35:42.577443',false,NULL,NULL),
	 (231,2,'USR','안녕',NULL,'2024-09-24 18:35:56.804407',NULL,'2024-09-24 18:35:56.804416',false,NULL,NULL),
	 (232,2,'USR','안녕?',NULL,'2024-09-24 18:38:01.417082',NULL,'2024-09-24 18:38:01.41709',false,NULL,NULL),
	 (232,2,'USR','경영지원 담당자',NULL,'2024-09-24 18:38:05.514194',NULL,'2024-09-24 18:38:05.5142',false,'COM_manager1','안녕?'),
	 (233,2,'USR','안녕',NULL,'2024-09-24 18:39:11.18601',NULL,'2024-09-24 18:39:11.186018',false,NULL,NULL),
	 (233,2,'USR','내부그룹웨어',NULL,'2024-09-24 18:39:26.618922',NULL,'2024-09-24 18:39:26.618925',false,'COM_ingw','안녕'),
	 (233,2,'USR','원스톱CUE',NULL,'2024-09-24 18:41:08.354026',NULL,'2024-09-24 18:41:08.35403',false,'COM_cue','안녕'),
	 (233,2,'USR','로그인이 안돼',NULL,'2024-09-24 18:41:55.737621',NULL,'2024-09-24 18:41:55.737635',false,NULL,NULL),
	 (247,2,'USR','너는 아는게 뭐야?',NULL,'2024-09-24 23:33:58.108134',NULL,'2024-09-24 23:33:58.108139',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (247,2,'USR','내규',NULL,'2024-09-24 23:35:28.060323',NULL,'2024-09-24 23:35:28.060326',false,'LAW','아는게 뭐야?'),
	 (233,0,'BOT','경영지원 담당자 중에서 내부그룹웨어를 담당하는 담당자는 없습니다. 내부그룹웨어 관련 문의는 사옥관리 부서로 연락하시거나 외부그룹웨어 게시판을 통해 불편사항을 접수하시면 도움을 받을 수 있습니다.',NULL,'2024-09-24 18:39:38.276549',NULL,'2024-09-24 18:39:38.276552',false,NULL,NULL),
	 (234,0,'BOT','로그인에 문제가 있는 경우 다음 단계를 따라주세요:
1. 인터넷 연결 상태 확인
2. 정확한 아이디와 비밀번호 입력
3. 캐시 및 쿠키 삭제 후 다시 시도
4. 다른 브라우저나 기기로 시도
5. 여전히 문제가 해결되지 않으면 IT 부서에 문의해주세요.로그인에 문제가 있는 경우 다음 단계를 따라주세요:
1. 인터넷 연결 상태 확인
2. 정확한 아이디와 비밀번호 입력
3. 캐시 및 쿠키 삭제 후 다시 시도
4. 다른 브라우저나 기기로 시도
5. 여전히 문제가 해결되지 않으면 IT 부서에 문의해주세요.
[출처:내부그룹웨어]',NULL,'2024-09-24 18:46:20.486169',NULL,'2024-09-24 18:46:20.486172',false,NULL,NULL),
	 (248,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "너는 아는게 뭐야?", "items": [{"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}]}***',NULL,'2024-09-24 23:36:43.073491',NULL,'2024-09-24 23:36:43.073494',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:57:40.986612',NULL,'2024-09-26 20:57:40.986615',false,'',NULL),
	 (269,1,'USR','동호회 가입 절차가 궁금해',NULL,'2024-10-16 11:28:33.641195',NULL,'2024-10-16 11:28:33.6412',false,'',NULL),
	 (269,0,'BOT','CUE는 Common User IT Environment의 약자로, 일반 사용자의 IT 업무환경을 원스톱으로 빠르게 지원하는 것을 목표로 합니다. 현재는 입사자를 위한 "원스톱 CUE 발급 신청" 절차와 퇴사, 직무중지 등으로 자원을 일괄로 회수하기 위한 "원스톱 CUE 해지 신청" 절차를 운영하고 있습니다.',NULL,'2024-10-16 11:29:20.61141',NULL,'2024-10-16 11:29:20.611414',false,NULL,NULL),
	 (269,1,'USR','그룹웨어에서 로그인이 안돼',NULL,'2024-10-16 11:29:27.748732',NULL,'2024-10-16 11:29:27.748737',false,'',NULL),
	 (308,4,'MGR','해당 티켓 조치하였습니다. 확인부탁드려요~!',NULL,'2024-11-02 22:02:46.964021',NULL,'2024-11-02 22:02:46.96403',false,NULL,NULL),
	 (247,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "너는 아는게 뭐야?", "items": [{"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}]}***',NULL,'2024-09-24 23:33:59.019109',NULL,'2024-09-24 23:33:59.019112',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (233,0,'BOT','내부그룹웨어에서 원스톱CUE는 현재 시스템에는 없는 기능입니다. 그러나 다른 업무 지원 및 서비스에 대한 문의가 있으시면 언제든지 도와드릴 수 있습니다. 부족한 부분이 있거나 추가 정보가 필요하시면 자세한 내용을 알려주시면 도와드리겠습니다.',NULL,'2024-09-24 18:41:21.072093',NULL,'2024-09-24 18:41:21.072096',false,NULL,NULL),
	 (247,0,'BOT','죄송합니다, ITONE과 관련된 정보만 제공할 수 있어요. 궁금한 점이 있으면 언제든지 물어보세요!',NULL,'2024-09-24 23:34:13.991956',NULL,'2024-09-24 23:34:13.991958',false,NULL,NULL),
	 (247,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "아는게 뭐야?", "items": [{"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}]}***',NULL,'2024-09-24 23:35:03.357707',NULL,'2024-09-24 23:35:03.357709',false,NULL,NULL),
	 (248,0,'BOT','제가 알고 있는 정보는 IT 서비스와 관련된 내용입니다. 궁금한 점이 있으시면 언제든지 물어봐주세요! 😊
[출처:Datago,ITONE,관제]',NULL,'2024-09-24 23:36:50.839339',NULL,'2024-09-24 23:36:50.839341',false,NULL,NULL),
	 (257,0,'BOT','',NULL,'2024-09-26 20:57:41.367468',NULL,'2024-09-26 20:57:41.367472',false,NULL,NULL),
	 (269,0,'BOT','CUE 문서에 동호회 가입 절차는 포함되어 있지 않습니다. 동호회 가입과 관련된 절차는 별도로 운영되며 CUE 문서에는 입사자 및 퇴사자 등의 IT 업무환경 지원 절차가 포함되어 있습니다. 동호회 가입에 대한 정보는 해당 동호회나 관련 부서에 문의하시는 것이 좋습니다.',NULL,'2024-10-16 11:28:54.477051',NULL,'2024-10-16 11:28:54.477053',false,NULL,NULL),
	 (269,1,'USR','IT 지원팀이 어디야?',NULL,'2024-10-16 11:29:56.734651',NULL,'2024-10-16 11:29:56.734654',false,'',NULL),
	 (308,4,'MGR','넵 감사합니다~ 문의사항 더 없으시면 종료하겠습니다~!',NULL,'2024-11-02 22:03:31.018345',NULL,'2024-11-02 22:03:31.018356',false,NULL,NULL),
	 (247,2,'USR','내규',NULL,'2024-09-24 23:34:05.318902',NULL,'2024-09-24 23:34:05.318905',false,'LAW','너는 아는게 뭐야?'),
	 (247,2,'USR','아는게 뭐야?',NULL,'2024-09-24 23:35:02.25166',NULL,'2024-09-24 23:35:02.251665',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (247,2,'USR','내규',NULL,'2024-09-24 23:36:18.041239',NULL,'2024-09-24 23:36:18.041242',false,'LAW','아는게 뭐야?'),
	 (233,0,'BOT','원스톱CUE에서 로그인이 안 되는 이유는 다양할 수 있습니다. 로그인 문제를 해결하기 위해 다음 단계를 따라주세요:
1. 사용자 ID 및 비밀번호 확인
2. 인터넷 연결 상태 확인
3. 캐시 및 쿠키 삭제 후 다시 시도
4. 브라우저 업데이트
5. 관리자에게 문의하여 계정 상태 확인
위 단계를 따라도 문제가 해결되지 않으면 추가 지원이 필요할 수 있습니다.
[출처:원스톱CUE]',NULL,'2024-09-24 18:42:11.99549',NULL,'2024-09-24 18:42:11.995492',false,NULL,NULL),
	 (233,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-24 18:44:59.303671',NULL,'2024-09-24 18:44:59.303675',false,NULL,NULL),
	 (234,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 18:45:11.655409',NULL,'2024-09-24 18:45:11.65541',false,NULL,NULL),
	 (247,0,'BOT','',NULL,'2024-09-24 23:36:19.230958',NULL,'2024-09-24 23:36:19.23096',false,NULL,NULL),
	 (257,2,'USR','대시보드에서 사용자 정의 설정 가능해?',NULL,'2024-09-26 20:59:31.726742',NULL,'2024-09-26 20:59:31.72675',false,'',NULL),
	 (268,1,'USR','회의실 예약하고 싶어',NULL,'2024-10-16 17:05:34.330895',NULL,'2024-10-16 17:05:34.330898',false,'',NULL),
	 (270,1,'USR','datago에서 otp 설정은 어떻게 해?',NULL,'2024-10-16 17:14:10.706594',NULL,'2024-10-16 17:14:10.706596',false,'',NULL),
	 (272,1,'USR','datago에서 로그인 otp는 어떻게 설정해?',NULL,'2024-10-16 17:20:38.539694',NULL,'2024-10-16 17:20:38.539699',false,'',NULL),
	 (273,1,'USR','예',NULL,'2024-10-16 17:21:41.445268',NULL,'2024-10-16 17:21:41.445271',false,'NICE_NGROUPWARE_SVC_OK','내부 그룹웨어 비밀번호 초기화');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (274,1,'USR','감사합니다~!',NULL,'2024-10-16 17:27:45.266724',NULL,'2024-10-16 17:27:45.266734',false,NULL,NULL),
	 (309,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2025-02-24 17:21:52.949798',NULL,'2025-02-24 17:21:52.949798',false,NULL,NULL),
	 (309,6,'USR','안녕',NULL,'2025-02-24 17:22:38.222393',NULL,'2025-02-24 17:22:38.222393',false,'',NULL),
	 (233,2,'USR','vdi 접속이 안돼',NULL,'2024-09-24 18:42:39.000872',NULL,'2024-09-24 18:42:39.000877',false,NULL,NULL),
	 (233,2,'USR','안녕',NULL,'2024-09-24 18:44:59.104125',NULL,'2024-09-24 18:44:59.104131',false,NULL,NULL),
	 (234,2,'USR','로그인이 안되고 있어',NULL,'2024-09-24 18:45:58.647595',NULL,'2024-09-24 18:45:58.6476',false,NULL,NULL),
	 (247,2,'USR','관제',NULL,'2024-09-24 23:35:06.675106',NULL,'2024-09-24 23:35:06.675109',false,'COM_totalmon','아는게 뭐야?'),
	 (233,0,'BOT','원스톱CUE에서 내부그룹웨어 관련 기능은 제공되지 않습니다. 내부그룹웨어에 대한 문의나 업무는 사옥관리 부서나 외부그룹웨어 게시판을 통해 처리하실 수 있습니다. 추가 도움이 필요하시면 언제든지 말씀해주세요.',NULL,'2024-09-24 18:44:54.128627',NULL,'2024-09-24 18:44:54.128632',false,NULL,NULL),
	 (247,0,'BOT','관제에서는 서비스 상태 확인, 인시던트 처리 내역 조회, 수동 메시지 발송, 통지예외관리 등 다양한 기능을 제공합니다. 또한 사용자 권한 설정, 그룹 설정, 관제 정책 변경 등을 지원하여 시스템을 효율적으로 관리할 수 있습니다. 궁금한 점이 있으면 언제든지 물어보세요!',NULL,'2024-09-24 23:35:21.358611',NULL,'2024-09-24 23:35:21.358614',false,NULL,NULL),
	 (247,0,'BOT','죄송합니다. 제가 알고 있는 정보는 ITONE 시스템과 관련된 것뿐이에요. 다른 궁금한 점이 있으면 언제든지 물어보세요!',NULL,'2024-09-24 23:35:34.421164',NULL,'2024-09-24 23:35:34.421166',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (247,2,'USR','내규',NULL,'2024-09-24 23:36:24.715849',NULL,'2024-09-24 23:36:24.715853',false,'LAW','아는게 뭐야?'),
	 (247,0,'BOT','',NULL,'2024-09-24 23:36:25.096982',NULL,'2024-09-24 23:36:25.096985',false,NULL,NULL),
	 (248,2,'USR','너는 아는게 뭐야?',NULL,'2024-09-24 23:36:42.856837',NULL,'2024-09-24 23:36:42.856841',false,NULL,NULL),
	 (257,0,'BOT','사용자 정의 설정은 불가능합니다. 대시보드는 미리 정의된 형식으로 제공되며 사용자가 설정을 변경하거나 사용자 정의하는 기능은 제공되지 않습니다. 대시보드는 미리 설정된 정보를 제공하기 위해 최적화되어 있습니다.
[출처:관제]',NULL,'2024-09-26 20:59:43.91153',NULL,'2024-09-26 20:59:43.911536',false,NULL,NULL),
	 (257,2,'USR','안녕~~',NULL,'2024-09-26 21:04:19.597794',NULL,'2024-09-26 21:04:19.597796',false,'',NULL),
	 (257,2,'USR','안녕~~',NULL,'2024-09-26 21:04:37.834599',NULL,'2024-09-26 21:04:37.834603',false,'',NULL),
	 (268,0,'BOT','죄송합니다. 현재 제공된 정보에는 회의실 예약에 관한 내용이 포함되어 있지 않습니다. 추가 질문이 있으시면 언제든지 물어보세요!',NULL,'2024-10-16 17:05:44.105996',NULL,'2024-10-16 17:05:44.106',false,NULL,NULL),
	 (268,0,'BOT','죄송합니다. 현재 제공된 정보에는 VDI(C드라이브) 용량을 늘리는 방법에 대한 내용이 포함되어 있지 않습니다. 추가 질문이 있으시면 언제든지 물어보세요!',NULL,'2024-10-16 17:09:13.415881',NULL,'2024-10-16 17:09:13.415883',false,NULL,NULL),
	 (268,1,'USR','동호회 가입하는 방법은?',NULL,'2024-10-16 17:11:33.88663',NULL,'2024-10-16 17:11:33.886637',false,'',NULL),
	 (268,0,'BOT','Datago에서 로그인 OTP 설정 방법은 다음과 같습니다:
1. 계정 생성 시 OTP 설정키 자동 부여
- 계정 생성 시, 자동으로 OTP 설정 키가 부여됩니다. 설정 키를 잊어버렸다면 Datago 담당자에게 연락하여 재전송 받으세요.
2. 휴대폰에서 설정 키 사용 방법
- Google Authenticator 앱을 휴대폰에 다운로드하세요.
- 앱에 접속한 후, ''+'' 버튼을 누르고 ''설정 키 입력''을 선택합니다.
- 부여받은 설정 키를 등록하세요. 계정 이름은 원하는 대로 설정할 수 있으며, ''Datago'' 등 구분 가능한 이름으로 저장하세요.
- Datago 웹사이트에 접속하여 로그인 화면에서 아이디와 패스워드를 입력합니다.
- OTP 입력 팝업이 나타나면, 휴대폰 앱에서 확인한 OTP를 입력하여 로그인하실 수 있습니다.',NULL,'2024-10-16 17:12:42.260048',NULL,'2024-10-16 17:12:42.26005',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (270,0,'BOT','Datago 시스템에서 OTP 설정하는 방법은 다음과 같습니다:
1. 계정 생성 시 OTP 설정키 자동 부여
- 계정 생성 시, 자동으로 OTP 설정 키가 부여됩니다.
- 설정 키를 잊어버렸다면 Datago 담당자에게 연락하여 재전송 받으세요.
2. 휴대폰에서 설정 키 사용 방법
- Google Authenticator 앱을 휴대폰에 다운로드하세요.
- 앱에 접속한 후, ''+'' 버튼을 누르고 ''설정 키 입력''을 선택합니다.
- 부여받은 설정 키를 등록하세요.
- 계정 이름은 원하는 대로 설정할 수 있으며, ''Datago'' 등 구분 가능한 이름으로 저장하세요.
- 로그인 화면에서 아이디와 패스워드를 입력한 후, 휴대폰 앱에서 확인한 OTP를 입력하여 로그인하실 수 있습니다.',NULL,'2024-10-16 17:14:36.806436',NULL,'2024-10-16 17:14:36.806438',false,NULL,NULL),
	 (273,1,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-10-16 17:21:39.429839',NULL,'2024-10-16 17:21:39.429847',false,'NICE_NGROUPWARE_SVC',NULL),
	 (276,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 17:25:15.135625',NULL,'2024-10-16 17:25:15.135629',false,NULL,NULL),
	 (309,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}]}***',NULL,'2025-02-24 17:22:40.819114',NULL,'2025-02-24 17:22:40.819114',false,NULL,NULL),
	 (309,0,'BOT','관제포탈에서 특정 서비스 선택 없이 전체 서비스를 선택하려면 관제포탈 홈 화면 대시보드에서 전체 서비스 상태를 확인할 수 있습니다. 특정 서비스를 선택하지 않고 전체 서비스 상태를 한눈에 볼 수 있습니다.',NULL,'2025-02-24 17:25:17.817219',NULL,'2025-02-24 17:25:17.817219',false,NULL,NULL),
	 (247,2,'USR','내규',NULL,'2024-09-24 23:36:29.204738',NULL,'2024-09-24 23:36:29.20474',false,'LAW','아는게 뭐야?'),
	 (233,0,'BOT','VDI 접속이 원스톱CUE에서 안 되는 이유는 다음과 같을 수 있습니다:
1. 네트워크 연결 문제
2. VDI 서버 다운
3. 사용자 계정 권한 부족
4. 브라우저 호환성 문제
5. 잘못된 설정
문제 해결을 위해 IT 지원팀에 문의하거나 관련 가이드를 확인해보세요. 추가 도움이 필요하시면 자세한 내용을 알려주세요.
[출처:원스톱CUE]',NULL,'2024-09-24 18:42:54.507649',NULL,'2024-09-24 18:42:54.507654',false,NULL,NULL),
	 (247,0,'BOT','',NULL,'2024-09-24 23:36:29.615278',NULL,'2024-09-24 23:36:29.615281',false,NULL,NULL),
	 (248,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다.
저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 23:36:36.965848',NULL,'2024-09-24 23:36:36.96585',false,NULL,NULL),
	 (248,2,'USR','내규',NULL,'2024-09-24 23:36:45.196222',NULL,'2024-09-24 23:36:45.196225',false,'LAW','너는 아는게 뭐야?');
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕~~", "items": [{"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}]}***',NULL,'2024-09-26 21:04:20.732634',NULL,'2024-09-26 21:04:20.732641',false,NULL,NULL),
	 (257,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕~~", "items": [{"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}]}***',NULL,'2024-09-26 21:04:38.039731',NULL,'2024-09-26 21:04:38.039733',false,NULL,NULL),
	 (268,1,'USR','회의실 예약하고 싶어',NULL,'2024-10-16 17:05:53.348252',NULL,'2024-10-16 17:05:53.348256',false,'',NULL),
	 (268,1,'USR','vdi c드라이브 용량 늘리고 싶어',NULL,'2024-10-16 17:09:02.127095',NULL,'2024-10-16 17:09:02.127097',false,'',NULL),
	 (270,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 17:13:53.602482',NULL,'2024-10-16 17:13:53.602483',false,NULL,NULL),
	 (270,1,'USR','otp 설정 키를 잊어버렸어',NULL,'2024-10-16 17:14:49.94054',NULL,'2024-10-16 17:14:49.940547',false,'',NULL),
	 (273,0,'BOT','내부 그룹웨어서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":"내부 그룹웨어 비밀번호 초기화", "items":[{"name":"예", "value":"NICE_NGROUPWARE_SVC_OK"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***',NULL,'2024-10-16 17:21:39.636886',NULL,'2024-10-16 17:21:39.636893',false,NULL,NULL),
	 (275,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 17:24:32.567391',NULL,'2024-10-16 17:24:32.567392',false,NULL,NULL),
	 (309,6,'USR','전체로 할래',NULL,'2025-02-24 17:24:09.566213',NULL,'2025-02-24 17:24:09.566213',false,'',NULL),
	 (309,0,'BOT','죄송합니다. 제가 이해하지 못했어요. 더 자세한 정보를 알려주시겠어요?',NULL,'2025-02-24 17:24:22.624198',NULL,'2025-02-24 17:24:22.624198',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (309,6,'USR','특정 서비스 선택없이 전체 서비스로 선택할래',NULL,'2025-02-24 17:25:04.850178',NULL,'2025-02-24 17:25:04.850178',false,'',NULL),
	 (233,2,'USR','내부그룹웨어',NULL,'2024-09-24 18:44:43.985043',NULL,'2024-09-24 18:44:43.985048',false,'COM_ingw','안녕'),
	 (234,2,'USR','로그인이 안되고 있어',NULL,'2024-09-24 20:30:12.214336',NULL,'2024-09-24 20:30:12.214339',false,NULL,NULL),
	 (248,2,'USR','안녕?',NULL,'2024-09-25 11:25:25.938601',NULL,'2024-09-25 11:25:25.938607',false,NULL,NULL),
	 (248,0,'BOT','내부메일에서 비밀번호를 초기화하는 방법을 알려드릴게요.

내부메일의 비밀번호를 초기화하려면 회원정보에 등록된 연락처를 통한 본인인증이 필요합니다. 연락처 정보가 등록되지 않은 경우 APP통합 계정관리시스템을 통해 연락처 정보를 수정해야 합니다. 연락처를 업데이트한 후 비밀번호를 초기화할 수 있습니다.',NULL,'2024-09-25 11:27:42.898938',NULL,'2024-09-25 11:27:42.898943',false,NULL,NULL),
	 (235,2,'USR','안녕?',NULL,'2024-09-24 20:35:55.580858',NULL,'2024-09-24 20:35:55.580863',false,NULL,NULL),
	 (257,2,'USR','안녕~~~',NULL,'2024-09-26 21:05:30.523094',NULL,'2024-09-26 21:05:30.5231',false,'',NULL),
	 (235,2,'USR','관제',NULL,'2024-09-24 20:36:33.70874',NULL,'2024-09-24 20:36:33.708745',false,'COM_totalmon','안녕?'),
	 (257,2,'USR','기업부문 담당자 정보 알려줘',NULL,'2024-09-26 21:06:24.370332',NULL,'2024-09-26 21:06:24.370335',false,'',NULL),
	 (257,0,'BOT','기업부문 담당자 정보는 다음과 같습니다:
- 민간평가/공공평가 신청 및 서류접수 안내: 통합CS 허운정(1793)
- 기술평가 서류접수 안내: 통합CS 오연숙(1806)
- 네이버 등 포탈사이트, 채용사이트 기업정보 수정, 삭제: 통합CS 김근빈(1301)
- 매출정산 관련 문의: 김정은(1530)
- 비용 정산 문의(기업부문기획실, 정보운영본부) 및 구매 총무: 이예림(1738)
[출처:기업부문 담당자]',NULL,'2024-09-26 21:06:43.08004',NULL,'2024-09-26 21:06:43.080042',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (268,0,'BOT','죄송합니다. 현재 Nice2MeetU 시스템에서는 회의실 예약 기능을 제공하지 않습니다. 다른 도움이 필요하시면 언제든지 물어보세요!',NULL,'2024-10-16 17:06:00.819966',NULL,'2024-10-16 17:06:00.81997',false,NULL,NULL),
	 (237,2,'USR','안녕?',NULL,'2024-09-24 20:40:35.556626',NULL,'2024-09-24 20:40:35.556632',false,NULL,NULL),
	 (271,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 17:18:58.688051',NULL,'2024-10-16 17:18:58.688053',false,NULL,NULL),
	 (273,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 17:21:24.269373',NULL,'2024-10-16 17:21:24.269376',false,NULL,NULL),
	 (238,2,'USR','안녕?',NULL,'2024-09-24 20:45:13.115123',NULL,'2024-09-24 20:45:13.115147',false,NULL,NULL),
	 (274,1,'USR','네!',NULL,'2024-10-16 17:27:16.079513',NULL,'2024-10-16 17:27:16.079517',false,NULL,NULL),
	 (110,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-08-30 16:32:57.738634',NULL,'2024-08-30 16:32:57.738636',false,NULL,NULL),
	 (110,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"안녕하세요.", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-08-30 16:33:56.981152',NULL,'2024-08-30 16:33:56.981153',false,NULL,NULL),
	 (110,0,'BOT','안녕하세요! Datago에 대해 궁금한 점이 있나요? 자세히 알려드릴게요.',NULL,'2024-08-30 16:34:09.214033',NULL,'2024-08-30 16:34:09.214034',false,NULL,NULL),
	 (309,6,'USR','CB부문으로 변경해줘',NULL,'2025-02-24 17:25:33.045145',NULL,'2025-02-24 17:25:33.045145',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (309,6,'USR','기업부문으로 변경해줘',NULL,'2025-02-24 17:26:44.110855',NULL,'2025-02-24 17:26:44.110855',false,'',NULL),
	 (309,0,'BOT','알겠습니다. 기업부문으로 변경해드릴게요.',NULL,'2025-02-24 17:26:50.961718',NULL,'2025-02-24 17:26:50.961718',false,NULL,NULL),
	 (248,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕?", "items": [{"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}]}***',NULL,'2024-09-25 11:25:26.973923',NULL,'2024-09-25 11:25:26.973926',false,NULL,NULL),
	 (248,2,'USR','원스톱CUE',NULL,'2024-09-25 11:26:15.449182',NULL,'2024-09-25 11:26:15.449186',false,'COM_cue','안녕?'),
	 (248,0,'BOT','안녕하세요! 원스톱 CUE에 대해 궁금하신가요? 자세한 내용을 알려드릴게요. 😊',NULL,'2024-09-25 11:26:22.136496',NULL,'2024-09-25 11:26:22.1365',false,NULL,NULL),
	 (257,0,'BOT','안녕하세요! 무엇을 도와드릴까요? 관제에 궁금한 점이 있나요? 부담 갖지 마시고 편하게 질문해주세요. 😊
[출처:관제]',NULL,'2024-09-26 21:05:39.33095',NULL,'2024-09-26 21:05:39.330956',false,NULL,NULL),
	 (268,0,'BOT','죄송합니다. 현재 제공된 정보에는 동호회 가입 방법에 대한 내용이 포함되어 있지 않습니다. 추가 질문이 있으시면 언제든지 물어보세요!',NULL,'2024-10-16 17:11:43.322658',NULL,'2024-10-16 17:11:43.322661',false,NULL,NULL),
	 (270,0,'BOT','ITONE에서 OTP 설정 키를 잊어버리신 경우, 다음 단계를 따라 진행하시면 됩니다:
1. ITONE 관리자나 담당자에게 연락하여 OTP 설정 키를 재전송 요청하세요.
2. 새로운 OTP 설정 키를 받은 후, Google Authenticator 앱에 등록하여 계정에 다시 액세스할 수 있습니다.
3. 앱에 새로운 설정 키를 등록한 후, 로그인 화면에서 아이디, 패스워드와 새로운 OTP를 입력하여 로그인하세요.
4. 이후에는 새로운 OTP를 사용하여 ITONE에 로그인하실 수 있습니다.',NULL,'2024-10-16 17:15:10.185038',NULL,'2024-10-16 17:15:10.185042',false,NULL,NULL),
	 (272,0,'BOT','Datago 시스템에 접속하여 로그인 OTP를 설정하는 방법은 다음과 같습니다:
1. 계정 생성 시 OTP 설정키 자동 부여
- 계정 생성 시, 자동으로 OTP 설정 키가 부여됩니다.
- 설정 키를 잊어버렸다면, Datago 담당자에게 연락하여 설정 키를 재전송 받으세요.
2. 휴대폰에서 설정 키 사용 방법
- Google Authenticator 앱을 휴대폰에 다운로드하세요.
- 앱에 접속한 후, ''+'' 버튼을 누르고 ''설정 키 입력''을 선택합니다.
- 부여받은 설정 키를 등록하세요.
- 계정 이름은 원하는 대로 설정할 수 있으며, ''Datago'' 등 구분 가능한 이름으로 저장하세요.
- Datago 웹사이트에 접속하여 로그인 화면에서 아이디와 패스워드를 입력합니다.
- OTP 입력 팝업이 나타나면, 휴대폰 앱에서 확인한 OTP를 입력하여 로그인하실 수 있습니다.',NULL,'2024-10-16 17:21:08.958647',NULL,'2024-10-16 17:21:08.958651',false,NULL,NULL),
	 (273,0,'BOT','비밀번호 초기화에 실패하였습니다.',NULL,'2024-10-16 17:21:41.681529',NULL,'2024-10-16 17:21:41.681531',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (309,0,'BOT','죄송합니다. CB부문 담당자로 변경해주시겠어요?',NULL,'2025-02-24 17:25:41.92049',NULL,'2025-02-24 17:25:41.92049',false,NULL,NULL),
	 (248,2,'USR','내부메신저',NULL,'2024-09-25 11:25:29.67648',NULL,'2024-09-25 11:25:29.676485',false,'COM_inmsg','안녕?'),
	 (257,2,'USR','CUE문서 처리 결과가 알림으로 발송되나요?',NULL,'2024-09-26 21:18:29.419234',NULL,'2024-09-26 21:18:29.419237',false,'',NULL),
	 (257,2,'USR','안녕?',NULL,'2024-09-26 21:32:43.225012',NULL,'2024-09-26 21:32:43.225015',false,'',NULL),
	 (268,1,'USR','datago에서 로그인 otp 는 어떻게 설정해?',NULL,'2024-10-16 17:12:14.438696',NULL,'2024-10-16 17:12:14.438707',false,'',NULL),
	 (272,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-16 17:20:08.660985',NULL,'2024-10-16 17:20:08.660992',false,NULL,NULL),
	 (274,2,'MGR','1234 로 초기화되었습니다. 확인 부탁드려요:)',NULL,'2024-10-16 17:27:32.83291',NULL,'2024-10-16 17:27:32.832916',false,NULL,NULL),
	 (310,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2025-02-26 15:43:32.722564',NULL,'2025-02-26 15:43:32.722564',false,NULL,NULL),
	 (312,6,'USR','#App통합계정관리',NULL,'2025-02-26 15:44:37.124911',NULL,'2025-02-26 15:44:37.124911',false,'',NULL),
	 (248,0,'BOT','안녕하세요! 메신저 관련해서 궁금한 점이 있으신가요? 자세한 내용을 알려드릴게요. 😊',NULL,'2024-09-25 11:25:37.263702',NULL,'2024-09-25 11:25:37.263704',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,0,'BOT','처리 결과는 알림으로 발송되지 않습니다. 처리 결과를 확인하려면 ''원스톱 CUE 발급 현황''에서 ''진행단계'' 항목이 ''완료''인 경우를 확인하거나, ''원스톱 CUE 해지 현황''에서 ''처리완료'' 일자를 확인하면 됩니다. 처리 결과는 해당 항목에서 확인 가능합니다.
[출처:원스톱CUE]',NULL,'2024-09-26 21:18:42.19055',NULL,'2024-09-26 21:18:42.190553',false,NULL,NULL),
	 (274,2,'MGR','안녕하세요~ 내부 그룹웨어 비밀번호 초기화 해드릴까요?',NULL,'2024-10-16 17:27:06.477529',NULL,'2024-10-16 17:27:06.477532',false,NULL,NULL),
	 (311,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2025-02-26 15:43:32.993628',NULL,'2025-02-26 15:43:32.993628',false,NULL,NULL),
	 (248,2,'USR','내규',NULL,'2024-09-25 11:25:45.596466',NULL,'2024-09-25 11:25:45.596473',false,'LAW','안녕?'),
	 (248,2,'USR','비번 초기화하는 방법 알려줘',NULL,'2024-09-25 11:27:28.234522',NULL,'2024-09-25 11:27:28.234525',false,NULL,NULL),
	 (257,2,'USR','간 내의 페이지를 효과적으로 구성하는 가장 좋은 방법',NULL,'2024-09-26 21:20:39.79959',NULL,'2024-09-26 21:20:39.799592',false,'',NULL),
	 (277,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-28 17:45:34.928619',NULL,'2024-10-28 17:45:34.928622',false,NULL,NULL),
	 (312,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2025-02-26 15:44:23.169995',NULL,'2025-02-26 15:44:23.169995',false,NULL,NULL),
	 (169,0,'BOT','',NULL,'2024-09-05 11:29:59.122616',NULL,'2024-09-05 11:29:59.122617',false,NULL,NULL),
	 (248,0,'BOT','안녕하세요! 궁금한 점 있으신가요? 친절하게 답변해드릴게요. 😊',NULL,'2024-09-25 11:25:51.572123',NULL,'2024-09-25 11:25:51.572127',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,0,'BOT','공간에서 공유 및 정리할 데이터의 목차를 미리 만들어 목차의 부제목과 소제목들로 페이지를 생성하는 방법이 가장 효과적입니다. 페이지 구성을 위해 목차를 먼저 만들고 그에 맞게 세부 내용을 추가하여 페이지를 구성하면 정보를 체계적으로 정리할 수 있습니다.
[출처:NICE플래닛]',NULL,'2024-09-26 21:20:52.461616',NULL,'2024-09-26 21:20:52.461621',false,NULL,NULL),
	 (257,0,'BOT','안녕하세요! 무엇을 도와드릴까요?
[출처:동호회 운영지침]',NULL,'2024-09-26 21:32:48.203822',NULL,'2024-09-26 21:32:48.203828',false,NULL,NULL),
	 (277,2,'USR','너의 이름이 뭐야?',NULL,'2024-10-28 17:45:55.0057',NULL,'2024-10-28 17:45:55.005703',false,'',NULL),
	 (277,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "너의 이름이 뭐야?", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}]}***',NULL,'2024-10-28 17:45:56.922751',NULL,'2024-10-28 17:45:56.922754',false,NULL,NULL),
	 (275,0,'BOT','동호회 가입은 그룹웨어 포탈의 ''동호회'' 메뉴에서 가입할 수 있습니다. 해당 메뉴로 이동하여 원하는 동호회를 선택하고 가입 요청을 할 수 있습니다. 가입 승인 후 해당 동호회의 활동 및 소식을 확인할 수 있습니다.',NULL,'2024-10-28 17:56:08.140752',NULL,'2024-10-28 17:56:08.140754',false,NULL,NULL),
	 (275,2,'USR','너가 알고 있는 내용말고 주어진 context에서만 대답해',NULL,'2024-10-28 17:56:21.715948',NULL,'2024-10-28 17:56:21.715953',false,'',NULL),
	 (312,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "#App통합계정관리", "items": [{"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2025-02-26 15:44:38.698897',NULL,'2025-02-26 15:44:38.698897',false,NULL,NULL),
	 (249,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-25 14:34:46.594494',NULL,'2024-09-25 14:34:46.594497',false,NULL,NULL),
	 (257,2,'USR','시차출퇴근 근무시간의 유형?',NULL,'2024-09-26 21:23:33.485013',NULL,'2024-09-26 21:23:33.485015',false,'',NULL),
	 (257,0,'BOT','동호회 운영 지침 제 3조는 회사가 설립된 동호회에 대해 매 분기 동호회 활동에 소요되는 비용의 일부를 지원할 수 있으며, 회원수나 활동 내역에 따라 지원금 규모를 조정할 수 있다는 내용을 담고 있습니다. 또한, 동호회는 연 1회 이상의 전사적인 사내 행사를 개최하거나 회사가 개최하는 행사에 참여해야 하며, 우수동호회에는 포상이 가능하다고 명시되어 있습니다.
[출처:동호회 운영지침]',NULL,'2024-09-26 21:25:11.291712',NULL,'2024-09-26 21:25:11.291714',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,2,'USR','동호회 운영 지침 제 2조 요약해서 알려줘',NULL,'2024-09-26 21:32:58.149975',NULL,'2024-09-26 21:32:58.149981',false,'',NULL),
	 (257,0,'BOT','동호회 운영지침 제 2조는 "동호회 정의 및 설립절차"에 관한 내용을 다룹니다. 이 조에서는 동호회의 정의와 설립 절차, 그리고 동호회에서 사용하는 용어의 의미에 대해 설명하고 있습니다.
[출처:동호회 운영지침]',NULL,'2024-09-26 21:33:09.111176',NULL,'2024-09-26 21:33:09.111179',false,NULL,NULL),
	 (277,2,'USR','외부그룹웨어',NULL,'2024-10-28 17:45:59.954614',NULL,'2024-10-28 17:45:59.954619',false,'COM_exgw','너의 이름이 뭐야?'),
	 (277,2,'USR','이름이 궁금해',NULL,'2024-10-28 17:46:18.307022',NULL,'2024-10-28 17:46:18.307025',false,'',NULL),
	 (312,6,'USR','?',NULL,'2025-02-26 15:49:10.032806',NULL,'2025-02-26 15:49:10.032806',false,'',NULL),
	 (249,2,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-09-25 14:34:52.106772',NULL,'2024-09-25 14:34:52.106778',false,NULL,NULL),
	 (250,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-25 14:35:07.495218',NULL,'2024-09-25 14:35:07.495221',false,NULL,NULL),
	 (250,2,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-09-25 14:35:44.219112',NULL,'2024-09-25 14:35:44.219145',false,NULL,NULL),
	 (257,0,'BOT','시차출퇴근 근무시간의 유형은 다음과 같습니다:
- 주간: 09:00 - 18:00
- 야간: 22:00 - 07:00
- 중간: 12:00 - 21:00
- 오전: 07:00 - 16:00
- 오후: 14:00 - 23:00
원스톱CUE에서는 이러한 다양한 근무시간 유형을 지원하고 있습니다.
[출처:원스톱CUE]',NULL,'2024-09-26 21:23:48.618029',NULL,'2024-09-26 21:23:48.618033',false,NULL,NULL),
	 (277,0,'BOT','저는 답변만을 제공하는 AI 어시스턴트입니다. 궁금한 것이 있으면 언제든지 물어보세요!',NULL,'2024-10-28 17:46:11.567771',NULL,'2024-10-28 17:46:11.567773',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (277,0,'BOT','저는 내부메신저에게 이름을 가지고 있지 않습니다. 무엇을 도와드릴까요?',NULL,'2024-10-28 17:46:24.901108',NULL,'2024-10-28 17:46:24.901112',false,NULL,NULL),
	 (275,2,'USR','동호회 가입할 수 있어?',NULL,'2024-10-28 17:55:56.601674',NULL,'2024-10-28 17:55:56.601677',false,'',NULL),
	 (312,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "?", "items": [{"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2025-02-26 15:49:11.564676',NULL,'2025-02-26 15:49:11.564676',false,NULL,NULL),
	 (249,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "내부 그룹웨어 비밀번호 초기화", "items": [{"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-25 14:34:53.441713',NULL,'2024-09-25 14:34:53.441716',false,NULL,NULL),
	 (251,2,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-09-25 14:45:42.549093',NULL,'2024-09-25 14:45:42.549147',false,'NICE_NGROUPWARE_SVC_OK',NULL),
	 (253,2,'USR','itsm에서 비번 초기화하고 싶어',NULL,'2024-09-25 14:48:13.328869',NULL,'2024-09-25 14:48:13.328876',false,'',NULL),
	 (253,0,'BOT','비밀번호 초기화를 위해서는 ITSM 티켓을 열어야 합니다. 동호회 관련 문서를 참고하여 필요한 단계를 따라 진행해보세요. 도움이 필요하시면 더 자세한 정보를 제공해주세요. 함께 해결해 나갈게요! 😊
[출처:동호회 운영지침]',NULL,'2024-09-25 14:58:26.93258',NULL,'2024-09-25 14:58:26.932583',false,NULL,NULL),
	 (207,2,'MGR','www',NULL,'2024-09-25 16:07:25.074335',NULL,'2024-09-25 16:07:25.074345',false,NULL,NULL),
	 (257,2,'USR','동호회 운영 지침 제 3조에 대해 설명해줘',NULL,'2024-09-26 21:24:48.275964',NULL,'2024-09-26 21:24:48.275969',false,'',NULL),
	 (275,0,'BOT','알겠어요. 동호회 가입은 그룹웨어 포탈의 ''동호회'' 메뉴에서 가입할 수 있습니다. 해당 메뉴로 이동하여 원하는 동호회를 선택하고 가입 요청을 할 수 있습니다. 가입 승인 후 해당 동호회의 활동 및 소식을 확인할 수 있습니다.',NULL,'2024-10-28 17:56:33.207627',NULL,'2024-10-28 17:56:33.20763',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (313,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2025-02-27 17:21:35.194845',NULL,'2025-02-27 17:21:35.194845',false,NULL,NULL),
	 (250,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "내부 그룹웨어 비밀번호 초기화", "items": [{"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-25 14:35:44.508985',NULL,'2024-09-25 14:35:44.508988',false,NULL,NULL),
	 (251,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-25 14:45:30.324792',NULL,'2024-09-25 14:45:30.324794',false,NULL,NULL),
	 (252,2,'USR','내부 그룹웨어 비밀번호 초기화',NULL,'2024-09-25 14:46:38.42859',NULL,'2024-09-25 14:46:38.428593',false,'NICE_NGROUPWARE_SVC',NULL),
	 (252,0,'BOT','내부 그룹웨어서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":"내부 그룹웨어 비밀번호 초기화", "items":[{"name":"예", "value":"NICE_NGROUPWARE_SVC_OK"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***',NULL,'2024-09-25 14:46:38.609704',NULL,'2024-09-25 14:46:38.609707',false,NULL,NULL),
	 (253,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-25 14:48:01.104384',NULL,'2024-09-25 14:48:01.104388',false,NULL,NULL),
	 (253,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "itsm에서 비번 초기화하고 싶어", "items": [{"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-25 14:48:28.266044',NULL,'2024-09-25 14:48:28.266046',false,NULL,NULL),
	 (257,2,'USR','동호회 운영 지침 제 5조 요약해서 알려줘',NULL,'2024-09-26 21:34:39.088276',NULL,'2024-09-26 21:34:39.088281',false,'',NULL),
	 (257,0,'BOT','동호회 운영 지침 제 5조는 "동호회 활동 관리"에 관한 내용을 다룹니다. 요약하면, 연속하여 2분기 이상 회원수가 기준에 미달하거나 분기별 정기활동보고서를 제출하지 않으면 동호회는 총회를 개최하여 해산 여부를 결정해야 하며, 결과를 경영지원실장에게 통보해야 합니다.
[출처:동호회 운영지침]',NULL,'2024-09-26 21:34:55.402962',NULL,'2024-09-26 21:34:55.402964',false,NULL,NULL),
	 (278,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-01 16:37:25.507273',NULL,'2024-11-01 16:37:25.50728',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (278,2,'USR','안녕',NULL,'2024-11-01 16:37:30.465238',NULL,'2024-11-01 16:37:30.465242',false,'',NULL),
	 (278,0,'BOT','메신저 대화방을 만드는 방법은 다음과 같아요:
1. 대화방을 만든 후 초대기능을 통해 사용자를 초대하거나,
2. 사용자 목록에서 ctrl 키 + 클릭을 이용해 다수 사용자를 선택한 후 우클릭하여 대화를 시작할 수 있어요.',NULL,'2024-11-01 16:38:07.210947',NULL,'2024-11-01 16:38:07.210951',false,NULL,NULL),
	 (314,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2025-03-06 17:17:30.408916',NULL,'2025-03-06 17:17:30.408916',false,NULL,NULL),
	 (251,0,'BOT','비밀번호 초기화에 실패하였습니다.',NULL,'2024-09-25 14:45:43.22768',NULL,'2024-09-25 14:45:43.227683',false,NULL,NULL),
	 (252,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-25 14:46:34.526888',NULL,'2024-09-25 14:46:34.52689',false,NULL,NULL),
	 (253,2,'USR','내규',NULL,'2024-09-25 14:58:14.483258',NULL,'2024-09-25 14:58:14.483262',false,'LAW','itsm에서 비번 초기화하고 싶어'),
	 (253,2,'USR','내가 86년생인데, 초등학교 4학년때는 몇년도였어?',NULL,'2024-09-25 15:39:56.475863',NULL,'2024-09-25 15:39:56.475869',false,'',NULL),
	 (253,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "내가 86년생인데, 초등학교 4학년때는 몇년도였어?", "items": [{"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-25 15:39:57.657199',NULL,'2024-09-25 15:39:57.657204',false,NULL,NULL),
	 (257,2,'USR','기업부문 담당자 정보 알려줘',NULL,'2024-09-26 21:35:14.371149',NULL,'2024-09-26 21:35:14.371153',false,'',NULL),
	 (257,0,'BOT','기업부문 담당자 정보는 다음과 같습니다:
- 민간평가/공공평가 신청 및 서류접수 안내: 통합CS 허운정(1793)
- 기술평가 서류접수 안내: 통합CS 오연숙(1806)
- 네이버 등 포탈사이트, 채용사이트 기업정보 수정, 삭제: 통합CS 김근빈(1301)
- 매출정산 관련 문의: 김정은(1530)
- 비용 정산 문의(기업부문기획실, 정보운영본부) 및 구매 총무: 이예림(1738)',NULL,'2024-09-26 21:35:34.167852',NULL,'2024-09-26 21:35:34.167858',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (278,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}]}***',NULL,'2024-11-01 16:37:31.71844',NULL,'2024-11-01 16:37:31.718445',false,NULL,NULL),
	 (278,0,'BOT','네, 확실합니다. 내부메신저에서 대화방을 만들 때 위의 방법을 사용하면 됩니다. 궁금한 점이 있으면 언제든지 물어보세요!',NULL,'2024-11-01 16:38:23.844928',NULL,'2024-11-01 16:38:23.844932',false,NULL,NULL),
	 (215,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 18:27:03.00238',NULL,'2024-09-23 18:27:03.002383',false,NULL,NULL),
	 (253,2,'USR','hhhhhh',NULL,'2024-09-25 16:46:18.951998',NULL,'2024-09-25 16:46:18.952003',false,'',NULL),
	 (207,2,'MGR','tggg',NULL,'2024-09-25 16:46:29.451184',NULL,'2024-09-25 16:46:29.451191',false,NULL,NULL),
	 (257,2,'USR','CUE가 뭐야?',NULL,'2024-09-28 18:11:30.510471',NULL,'2024-09-28 18:11:30.510476',false,'',NULL),
	 (257,0,'BOT','CUE는 Common User IT Environment의 약자로, 일반 사용자의 IT 업무환경을 원스톱으로 빠르게 지원하는 것을 목표로 합니다. 현재는 입사자를 위한 "원스톱 CUE 발급 신청" 절차와 퇴사, 직무중지 등으로 자원을 일괄로 회수하기 위한 "원스톱 CUE 해지 신청" 절차를 운영하고 있습니다.',NULL,'2024-09-28 18:16:15.483772',NULL,'2024-09-28 18:16:15.483774',false,NULL,NULL),
	 (253,2,'USR','내부메신저',NULL,'2024-09-28 18:18:16.751639',NULL,'2024-09-28 18:18:16.751641',false,'COM_inmsg','hhhhhh'),
	 (278,2,'USR','내부메신저',NULL,'2024-11-01 16:37:34.753856',NULL,'2024-11-01 16:37:34.753859',false,'COM_inmsg','안녕'),
	 (253,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "hhhhhh", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}]}***',NULL,'2024-09-25 16:46:20.215705',NULL,'2024-09-25 16:46:20.21571',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (257,0,'BOT','CUE는 Common User IT Environment의 약자로, 일반 사용자의 IT 업무환경을 원스톱으로 빠르게 지원하는 것을 목표로 합니다. 현재는 입사자를 위한 "원스톱 CUE 발급 신청" 절차와 퇴사, 직무중지 등으로 자원을 일괄로 회수하기 위한 "원스톱 CUE 해지 신청" 절차를 운영하고 있습니다.',NULL,'2024-09-28 18:11:48.298362',NULL,'2024-09-28 18:11:48.298364',false,NULL,NULL),
	 (278,0,'BOT','안녕하세요! 메신저 관련 궁금한 점 있으신가요? 부담 갖지 마시고 편하게 물어보세요. 함께 도와드릴게요.',NULL,'2024-11-01 16:37:43.883344',NULL,'2024-11-01 16:37:43.883353',false,NULL,NULL),
	 (252,2,'USR','안녕',NULL,'2024-09-26 13:44:58.540847',NULL,'2024-09-26 13:44:58.540856',false,'',NULL),
	 (257,2,'USR','ITONE 카탈로그 등록 방법?',NULL,'2024-09-28 18:14:11.890282',NULL,'2024-09-28 18:14:11.890283',false,'',NULL),
	 (278,2,'USR','메신저 대화방 만드는 방법?',NULL,'2024-11-01 16:37:55.352334',NULL,'2024-11-01 16:37:55.352342',false,'',NULL),
	 (227,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-24 10:20:02.155696',NULL,'2024-09-24 10:20:02.155701',false,NULL,NULL),
	 (252,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}]}***',NULL,'2024-09-26 13:44:59.57712',NULL,'2024-09-26 13:44:59.577124',false,NULL,NULL),
	 (257,0,'BOT','ITONE 카탈로그 등록 방법은 다음과 같습니다:
1. "서비스관리 > 서비스카탈로그관리 > 서비스관리 > 서비스등록" 메뉴로 접속합니다.
2. 해당 메뉴가 보이지 않는 경우 권한을 신청해야 합니다.
3. 서비스 정보를 입력하고 "등록" 버튼을 클릭합니다.
4. 등록된 IT서비스에 대한 작업 요청 및 수행을 진행합니다.
5. IT서비스 상태를 "계획"에서 "운영"으로 변경하여 관리합니다.',NULL,'2024-09-28 18:14:29.624715',NULL,'2024-09-28 18:14:29.624717',false,NULL,NULL),
	 (253,0,'BOT','죄송합니다, 제가 이해할 수 없는 내용이에요. 궁금한 게 있으시면 언제든지 물어보세요!',NULL,'2024-09-28 18:18:23.359552',NULL,'2024-09-28 18:18:23.359554',false,NULL,NULL),
	 (278,2,'USR','확실해?',NULL,'2024-11-01 16:38:15.764816',NULL,'2024-11-01 16:38:15.764819',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,0,'BOT','',NULL,'2024-09-24 16:15:22.163322',NULL,'2024-09-24 16:15:22.163328',false,NULL,NULL),
	 (252,2,'USR','NICE플래닛',NULL,'2024-09-26 13:45:04.607825',NULL,'2024-09-26 13:45:04.607827',false,'COM_planet','안녕'),
	 (257,2,'USR','CUE가 뭐랫지?',NULL,'2024-09-28 18:16:02.447468',NULL,'2024-09-28 18:16:02.44747',false,'',NULL),
	 (258,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-28 18:16:43.145924',NULL,'2024-09-28 18:16:43.145926',false,NULL,NULL),
	 (279,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 20:48:50.074469',NULL,'2024-11-02 20:48:50.074472',false,NULL,NULL),
	 (280,2,'USR','datago에서 otp 설정 방법 알려줘',NULL,'2024-11-02 20:52:07.010313',NULL,'2024-11-02 20:52:07.010316',false,'',NULL),
	 (280,0,'BOT','Datago 시스템에서 OTP 설정하는 방법은 다음과 같아요:
1. 계정 생성 시 자동으로 OTP 설정 키가 부여됩니다.
2. Google Authenticator 앱을 휴대폰에 다운로드하고 설정 키를 등록하세요.
3. Datago 웹사이트에 로그인 후 OTP 입력 팝업에서 휴대폰 앱에서 확인한 OTP를 입력하여 로그인하세요.',NULL,'2024-11-02 20:52:19.926332',NULL,'2024-11-02 20:52:19.926334',false,NULL,NULL),
	 (252,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ''RunnableWithMessageHistory'' object has no attribute ''get_history_messages''',NULL,'2024-09-26 13:45:08.423205',NULL,'2024-09-26 13:45:08.423208',false,NULL,NULL),
	 (259,4,'MGR','ㅁㅁㅁㅁㅁ',NULL,'2024-09-30 13:56:53.805179',NULL,'2024-09-30 13:56:53.805184',false,NULL,NULL),
	 (279,2,'USR','datago에서 otp설정 방법 알려줘',NULL,'2024-11-02 20:50:27.767398',NULL,'2024-11-02 20:50:27.767403',false,'',NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (280,2,'USR','고마워!',NULL,'2024-11-02 20:52:21.152445',NULL,'2024-11-02 20:52:21.152448',false,'',NULL),
	 (230,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-24 18:32:01.169659',NULL,'2024-09-24 18:32:01.169662',false,NULL,NULL),
	 (254,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-26 13:58:27.638934',NULL,'2024-09-26 13:58:27.638937',false,NULL,NULL),
	 (254,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}]}***',NULL,'2024-09-26 13:58:33.322451',NULL,'2024-09-26 13:58:33.322454',false,NULL,NULL),
	 (254,2,'USR','외부메일',NULL,'2024-09-26 13:58:56.847862',NULL,'2024-09-26 13:58:56.847868',false,'COM_exmail','안녕'),
	 (259,4,'MGR','테스트',NULL,'2024-09-30 13:56:55.871051',NULL,'2024-09-30 13:56:55.871055',false,NULL,NULL),
	 (279,0,'BOT','Datago 시스템에서 OTP 설정 방법은 다음과 같습니다:
1. 계정 생성 시 OTP 설정키 자동 부여
- 계정 생성 시, 자동으로 OTP 설정 키가 부여됩니다.
- 설정 키를 잊어버렸다면 Datago 담당자에게 연락하여 재전송 받으세요.
2. 휴대폰에서 설정 키 사용 방법
- Google Authenticator 앱을 휴대폰에 다운로드하세요.
- 앱에 접속한 후, ''+'' 버튼을 누르고 ''설정 키 입력''을 선택합니다.
- 부여받은 설정 키를 등록하세요.
- Datago 웹사이트에 접속하여 로그인 후, OTP 입력 팝업에서 확인한 OTP를 입력하여 로그인하실 수 있습니다.',NULL,'2024-11-02 20:50:49.90609',NULL,'2024-11-02 20:50:49.906091',false,NULL,NULL),
	 (281,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 20:52:48.059054',NULL,'2024-11-02 20:52:48.059055',false,NULL,NULL),
	 (112,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-08-30 16:55:52.572161',NULL,'2024-08-30 16:55:52.572166',false,NULL,NULL),
	 (112,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"핼피야~", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "내규", "value": "LAW"}]}***',NULL,'2024-08-30 17:03:59.983785',NULL,'2024-08-30 17:03:59.98379',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (112,0,'BOT','안녕하세요! 무엇을 도와드릴까요? 질문이 있으시면 언제든지 편하게 물어보세요.',NULL,'2024-08-30 17:04:11.873539',NULL,'2024-08-30 17:04:11.873544',false,NULL,NULL),
	 (113,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 10:49:07.531094',NULL,'2024-09-02 10:49:07.531096',false,NULL,NULL),
	 (113,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"??!!?!?!?", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "NICE플래닛", "value": "COM_planet.txt"}]}***',NULL,'2024-09-02 10:49:18.458367',NULL,'2024-09-02 10:49:18.458368',false,NULL,NULL),
	 (114,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 10:57:40.260629',NULL,'2024-09-02 10:57:40.260637',false,NULL,NULL),
	 (114,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"aa", "items":[{"name": "ITONE", "value": "COM_itone.txt"}, {"name": "내규", "value": "LAW"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-02 11:28:54.837025',NULL,'2024-09-02 11:28:54.837029',false,NULL,NULL),
	 (116,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 13:14:34.487252',NULL,'2024-09-02 13:14:34.487253',false,NULL,NULL),
	 (116,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"eeee", "items":[{"name": "원스톱CUE", "value": "COM_cue.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-02 13:14:53.060615',NULL,'2024-09-02 13:14:53.060619',false,NULL,NULL),
	 (118,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 13:15:35.968301',NULL,'2024-09-02 13:15:35.968304',false,NULL,NULL),
	 (120,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 13:28:11.631756',NULL,'2024-09-02 13:28:11.631759',false,NULL,NULL),
	 (122,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 13:29:29.44273',NULL,'2024-09-02 13:29:29.442732',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (124,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 13:31:51.664205',NULL,'2024-09-02 13:31:51.664208',false,NULL,NULL),
	 (124,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"가나다라", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-02 13:32:00.43881',NULL,'2024-09-02 13:32:00.438814',false,NULL,NULL),
	 (126,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 13:43:15.321432',NULL,'2024-09-02 13:43:15.321433',false,NULL,NULL),
	 (128,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-02 13:58:49.287294',NULL,'2024-09-02 13:58:49.287295',false,NULL,NULL),
	 (130,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 15:03:52.063604',NULL,'2024-09-03 15:03:52.063607',false,NULL,NULL),
	 (131,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 15:05:52.314766',NULL,'2024-09-03 15:05:52.314767',false,NULL,NULL),
	 (132,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 15:08:35.986641',NULL,'2024-09-03 15:08:35.986655',false,NULL,NULL),
	 (133,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 15:08:36.566737',NULL,'2024-09-03 15:08:36.566739',false,NULL,NULL),
	 (134,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 15:08:37.414138',NULL,'2024-09-03 15:08:37.414145',false,NULL,NULL),
	 (132,0,'BOT','내부 그룹웨어서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":"내부 그룹웨어 비밀번호 초기화", "items":[{"name":"예", "value":"NICE_NGROUPWARE_SVC_OK"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***',NULL,'2024-09-03 15:51:23.95378',NULL,'2024-09-03 15:51:23.953784',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (132,0,'BOT','비밀번호 초기화에 실패하였습니다.',NULL,'2024-09-03 15:51:26.220881',NULL,'2024-09-03 15:51:26.220884',false,NULL,NULL),
	 (132,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"업무담당자를 찾고있어 사대보험관련 업무는 누구에게 문의해?", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}]}***',NULL,'2024-09-03 15:59:20.407386',NULL,'2024-09-03 15:59:20.407387',false,NULL,NULL),
	 (135,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 16:37:28.372979',NULL,'2024-09-03 16:37:28.372982',false,NULL,NULL),
	 (136,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 16:38:10.130144',NULL,'2024-09-03 16:38:10.13015',false,NULL,NULL),
	 (137,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 16:46:52.525916',NULL,'2024-09-03 16:46:52.525922',false,NULL,NULL),
	 (157,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"             aqeres", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "내규", "value": "LAW"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-04 10:17:40.676789',NULL,'2024-09-04 10:17:40.676791',false,NULL,NULL),
	 (138,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:00:25.009542',NULL,'2024-09-03 17:00:25.009545',false,NULL,NULL),
	 (139,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:14:01.552341',NULL,'2024-09-03 17:14:01.552342',false,NULL,NULL),
	 (140,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:14:10.770266',NULL,'2024-09-03 17:14:10.770268',false,NULL,NULL),
	 (141,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:16:19.826558',NULL,'2024-09-03 17:16:19.82656',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (142,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:16:25.160716',NULL,'2024-09-03 17:16:25.16072',false,NULL,NULL),
	 (143,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:16:32.742365',NULL,'2024-09-03 17:16:32.74237',false,NULL,NULL),
	 (144,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:16:57.212031',NULL,'2024-09-03 17:16:57.212037',false,NULL,NULL),
	 (145,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:18:06.572779',NULL,'2024-09-03 17:18:06.572787',false,NULL,NULL),
	 (146,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:21:22.966412',NULL,'2024-09-03 17:21:22.966418',false,NULL,NULL),
	 (147,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:25:02.535001',NULL,'2024-09-03 17:25:02.535003',false,NULL,NULL),
	 (165,0,'BOT','죄송합니다, 그에 대한 정보는 제가 가지고 있지 않습니다. 추가 질문이 있으시면 언제든지 물어보세요!',NULL,'2024-09-04 11:17:48.894037',NULL,'2024-09-04 11:17:48.89404',false,NULL,NULL),
	 (150,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:28:27.559564',NULL,'2024-09-03 17:28:27.559566',false,NULL,NULL),
	 (151,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:30:57.955153',NULL,'2024-09-03 17:30:57.955154',false,NULL,NULL),
	 (152,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:31:27.540677',NULL,'2024-09-03 17:31:27.540678',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (153,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:55:05.195349',NULL,'2024-09-03 17:55:05.19535',false,NULL,NULL),
	 (154,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:55:17.683651',NULL,'2024-09-03 17:55:17.683656',false,NULL,NULL),
	 (164,0,'BOT','ITONE에 접속하려면 "https://itsm.niceinfo.co.kr/" URL로 접속하시면 되며, 크롬 브라우저 사용을 권고드립니다.',NULL,'2024-09-04 13:18:55.941177',NULL,'2024-09-04 13:18:55.941179',false,NULL,NULL),
	 (155,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:57:21.727827',NULL,'2024-09-03 17:57:21.727828',false,NULL,NULL),
	 (156,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 17:58:11.081624',NULL,'2024-09-03 17:58:11.08163',false,NULL,NULL),
	 (157,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 있습니다.',NULL,'2024-09-03 18:01:02.524341',NULL,'2024-09-03 18:01:02.524343',false,NULL,NULL),
	 (157,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"           ", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-04 10:16:19.635236',NULL,'2024-09-04 10:16:19.635238',false,NULL,NULL),
	 (214,0,'BOT','원하시는 서비스를 선택해주세요. ***{''type'': ''row'', ''previous_query'': ''망연계 솔루션 비번 초기화하는 방법 알려줘'', ''items'': []}***',NULL,'2024-09-23 17:58:29.892229',NULL,'2024-09-23 17:58:29.892234',false,NULL,NULL),
	 (158,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 10:34:06.13805',NULL,'2024-09-04 10:34:06.138051',false,NULL,NULL),
	 (159,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 10:35:04.755973',NULL,'2024-09-04 10:35:04.755979',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (160,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 10:40:08.080027',NULL,'2024-09-04 10:40:08.080032',false,NULL,NULL),
	 (161,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 10:41:26.838525',NULL,'2024-09-04 10:41:26.83853',false,NULL,NULL),
	 (158,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"??", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "NICE플래닛", "value": "COM_planet.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-04 10:57:36.281145',NULL,'2024-09-04 10:57:36.281149',false,NULL,NULL),
	 (162,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 10:57:55.161958',NULL,'2024-09-04 10:57:55.161964',false,NULL,NULL),
	 (163,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 10:59:49.409512',NULL,'2024-09-04 10:59:49.409514',false,NULL,NULL),
	 (164,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 11:00:04.340622',NULL,'2024-09-04 11:00:04.340627',false,NULL,NULL),
	 (165,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-04 11:00:28.945259',NULL,'2024-09-04 11:00:28.945265',false,NULL,NULL),
	 (165,0,'BOT','ITONE에 접속 후 "구축및변경 > 구성관리 > 구성항목관리" 메뉴에서 변경관리 내용을 확인할 수 있습니다. 해당 메뉴가 보이지 않는 경우에는 ITONE 일반 양식으로 권한 요청해주시기 바랍니다.',NULL,'2024-09-04 11:20:31.966999',NULL,'2024-09-04 11:20:31.967003',false,NULL,NULL),
	 (165,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"고마워~", "items":[{"name": "내규", "value": "LAW"}, {"name": "Nice2MeetU", "value": "COM_n2mu.txt"}]}***',NULL,'2024-09-04 11:22:15.471803',NULL,'2024-09-04 11:22:15.471805',false,NULL,NULL),
	 (165,0,'BOT','언제든지 도와드릴게요! 궁금한 점이 있으면 언제든지 물어주세요~ 함께 고마워요! 😊🌟',NULL,'2024-09-04 11:22:29.609326',NULL,'2024-09-04 11:22:29.609332',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (165,0,'BOT','네, 언제든지 도와드릴게요! 궁금한 점이 있으면 언제든지 물어주세요~ 함께 고마워요! 😊🌟',NULL,'2024-09-04 11:22:43.41496',NULL,'2024-09-04 11:22:43.414963',false,NULL,NULL),
	 (164,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"안녕", "items":[{"name": "내규", "value": "LAW"}, {"name": "ITONE", "value": "COM_itone.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-04 13:14:23.484744',NULL,'2024-09-04 13:14:23.484748',false,NULL,NULL),
	 (164,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"하이", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "내규", "value": "LAW"}]}***',NULL,'2024-09-04 13:15:23.673582',NULL,'2024-09-04 13:15:23.673584',false,NULL,NULL),
	 (164,0,'BOT','죄송합니다, 그 질문은 이해할 수 없어요. 다른 질문이 있으면 도와드릴게요!',NULL,'2024-09-04 13:15:35.976993',NULL,'2024-09-04 13:15:35.976995',false,NULL,NULL),
	 (164,0,'BOT','ITONE에서 서비스를 선택하려면 "서비스관리 > 서비스카탈로그관리" 메뉴로 이동하여 BIZ서비스와 IT서비스를 확인할 수 있어요. 해당 메뉴가 보이지 않는 경우에는 ITONE 일반 양식으로 권한 요청해주세요.',NULL,'2024-09-04 13:17:05.478091',NULL,'2024-09-04 13:17:05.478097',false,NULL,NULL),
	 (164,0,'BOT','안녕하세요! Nice2MeetU에서 어떤 도움이 필요하신가요? 함께 해결해 드릴게요.',NULL,'2024-09-04 13:17:29.052291',NULL,'2024-09-04 13:17:29.052293',false,NULL,NULL),
	 (164,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"접속방법 알려줘", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "ITONE", "value": "COM_itone.txt"}]}***',NULL,'2024-09-04 13:17:47.080095',NULL,'2024-09-04 13:17:47.080098',false,NULL,NULL),
	 (164,0,'BOT','Datago 시스템에 접속하는 두 가지 방법은 다음과 같아요: 1. URL을 통한 직접 접속: 웹 브라우저에서 ''https://datago.niceinfo.co.kr'' 주소로 접속하세요. 2. 내부 그룹웨어를 통한 접속: 내부 그룹웨어에 접속하여, ''Link'' > ''datago'' 바로가기를 클릭하세요. 어떤 방법으로 접속하실지 선택하셔서 이용해주세요.',NULL,'2024-09-04 13:19:15.31934',NULL,'2024-09-04 13:19:15.319343',false,NULL,NULL),
	 (111,0,'BOT','메신저 계정은 그룹웨어 계정과 연동되어 있으며(패스워드 동일), 메신저 관련 문의는 내부그룹웨어 담당자에게 문의해주세요.',NULL,'2024-09-04 13:57:39.755358',NULL,'2024-09-04 13:57:39.755369',false,NULL,NULL),
	 (114,0,'BOT','죄송합니다, 이해하지 못했습니다. Datago와 관련된 질문이 있으시면 자유롭게 물어봐주세요!',NULL,'2024-09-05 10:31:17.495777',NULL,'2024-09-05 10:31:17.495779',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (169,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-05 11:29:55.868106',NULL,'2024-09-05 11:29:55.868108',false,NULL,NULL),
	 (170,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-05 11:31:03.441864',NULL,'2024-09-05 11:31:03.441866',false,NULL,NULL),
	 (254,2,'USR','안녕',NULL,'2024-09-26 13:58:32.252252',NULL,'2024-09-26 13:58:32.252258',false,'',NULL),
	 (170,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"뭐지?", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}, {"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-05 11:31:19.669382',NULL,'2024-09-05 11:31:19.669384',false,NULL,NULL),
	 (172,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-05 16:48:54.784779',NULL,'2024-09-05 16:48:54.784782',false,NULL,NULL),
	 (174,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-05 17:36:31.444826',NULL,'2024-09-05 17:36:31.444828',false,NULL,NULL),
	 (175,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-05 17:59:11.330418',NULL,'2024-09-05 17:59:11.330419',false,NULL,NULL),
	 (176,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-06 09:28:23.221554',NULL,'2024-09-06 09:28:23.221556',false,NULL,NULL),
	 (178,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-06 10:11:17.16052',NULL,'2024-09-06 10:11:17.160523',false,NULL,NULL),
	 (178,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"1", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "내규", "value": "LAW"}, {"name": "원스톱CUE", "value": "COM_cue.txt"}]}***',NULL,'2024-09-06 10:11:21.244098',NULL,'2024-09-06 10:11:21.2441',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (179,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-06 10:11:21.42851',NULL,'2024-09-06 10:11:21.428511',false,NULL,NULL),
	 (179,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"2", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "내규", "value": "LAW"}]}***',NULL,'2024-09-06 10:11:24.649803',NULL,'2024-09-06 10:11:24.649807',false,NULL,NULL),
	 (182,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-06 10:22:16.126474',NULL,'2024-09-06 10:22:16.126475',false,NULL,NULL),
	 (183,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-06 10:23:08.3918',NULL,'2024-09-06 10:23:08.391807',false,NULL,NULL),
	 (183,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"xptmxm", "items":[{"name": "관제", "value": "COM_totalmon.txt"}, {"name": "내부메일", "value": "COM_inmail.txt"}]}***',NULL,'2024-09-06 10:23:14.317368',NULL,'2024-09-06 10:23:14.317371',false,NULL,NULL),
	 (169,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"안녕?", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "ITONE", "value": "COM_itone.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-06 17:50:35.814592',NULL,'2024-09-06 17:50:35.814596',false,NULL,NULL),
	 (169,0,'BOT','동호회를 만들고 싶으시군요! 동호회를 만들기 위해서는 회칙, 회원명단, 회원가입신청서, 그리고 동호회 운영방안 등의 구비서류가 필요합니다. 또한, 동호회 등록 신청서를 작성하여 경영지원실에 제출하면 됩니다. 동호회를 통해 즐거운 시간을 보내시길 바라며, 동호회 만들기에 성공하시길 응원합니다!',NULL,'2024-09-06 17:52:15.209196',NULL,'2024-09-06 17:52:15.209201',false,NULL,NULL),
	 (169,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"하라랄라랄라ㅏ라?", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-06 17:57:10.332665',NULL,'2024-09-06 17:57:10.332667',false,NULL,NULL),
	 (169,0,'BOT','죄송합니다, 제가 도와드릴 수 있는 질문이 아닌 것 같아요. Nice2MeetU와 관련된 질문이 있으면 언제든지 물어봐주세요!',NULL,'2024-09-06 17:57:20.385713',NULL,'2024-09-06 17:57:20.385715',false,NULL,NULL),
	 (187,0,'BOT','급여와 관련된 문의는 송치민(4347)에게 문의하시면 도움을 받으실 수 있어요. 어떤 도움이 필요한지 자세히 알려주시면 더 도와드릴게요!',NULL,'2024-09-09 17:42:26.416478',NULL,'2024-09-09 17:42:26.416481',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (185,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-09 10:44:27.789784',NULL,'2024-09-09 10:44:27.789787',false,NULL,NULL),
	 (185,0,'BOT','ITONE은 IT 서비스 관리 시스템으로, IT 서비스 요청, 인시던트 관리, 구성 변경, 교육 등을 포함한 IT 업무 프로세스를 효율적으로 관리하는 플랫폼입니다. 필요한 정보와 작업을 한 곳에서 효율적으로 처리할 수 있도록 도와주는 시스템이에요. 추가 질문이 있으면 언제든지 물어봐주세요!',NULL,'2024-09-09 10:45:00.942677',NULL,'2024-09-09 10:45:00.942681',false,NULL,NULL),
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"접속Url 알려줘", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "ITONE", "value": "COM_itone.txt"}]}***',NULL,'2024-09-09 10:45:12.778354',NULL,'2024-09-09 10:45:12.778357',false,NULL,NULL),
	 (185,0,'BOT','내부그룹웨어에서 그룹웨어 비밀번호를 찾은 후에 비밀번호를 변경하려면, 로그인 화면으로 돌아가셔야 합니다. 새로운 비밀번호를 설정하고 변경한 후에는 다시 로그인하여 새로운 비밀번호로 접속하실 수 있습니다. 변경된 비밀번호로 원활하게 이용하실 수 있도록 도와드릴게요. 계속해서 궁금한 점이 있으면 언제든지 물어보세요!',NULL,'2024-09-09 10:51:05.694638',NULL,'2024-09-09 10:51:05.694644',false,NULL,NULL),
	 (259,4,'MGR','ㅁㅁㅁ',NULL,'2024-09-30 14:00:34.382135',NULL,'2024-09-30 14:00:34.382139',false,NULL,NULL),
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"내부그룹웨어에서 sap 접속이 안돼요", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-09 10:55:56.202215',NULL,'2024-09-09 10:55:56.202216',false,NULL,NULL),
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"전자결재 문서 검색 방법 알려줘", "items":[{"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-09 11:00:27.134251',NULL,'2024-09-09 11:00:27.134253',false,NULL,NULL),
	 (185,0,'BOT','내부그룹웨어에서 전자결재 문서를 검색하는 방법은 간단해요. 전자결재 메뉴 내 문서함에서 우측 상단에 있는 검색창에 검색어를 입력하면 됩니다. 검색기간을 조정하려면 ''상세''를 클릭하여 설정할 수 있어요. 또한, 완결문서 검색을 원하면 각각의 탭인 결재함, 수신함, 발송함에서 상단 탭을 확인하고 검색해보세요. 원하는 문서를 빠르게 찾을 수 있을 거예요. 궁금한 점이 있으면 언제든지 물어보세요!',NULL,'2024-09-09 11:00:46.165978',NULL,'2024-09-09 11:00:46.16598',false,NULL,NULL),
	 (185,0,'BOT','휴게실은 금일을 포함하여 7일 내 날짜를 선택하여 예약할 수 있어요. 사용예정일 7일 전부터 예약이 가능하며, 일주일 동안 예약이 가능합니다. 예약 시에는 인당 예약횟수 제한 등 설비 이용 규칙을 준수해야 하니 참고하시고, 추가 질문이 있으면 언제든지 물어보세요!',NULL,'2024-09-09 11:02:12.803435',NULL,'2024-09-09 11:02:12.803437',false,NULL,NULL),
	 (185,0,'BOT','내부그룹웨어에서 휴게실 등 설비 예약 시 인당 예약횟수는 보통 1회로 제한됩니다. 따라서 각 사용자는 한 번에 한 번의 예약만 가능합니다. 이를 주의하시고 효율적으로 이용하시기 바랍니다. 궁금한 점이 있으면 언제든지 물어보세요!',NULL,'2024-09-09 11:02:48.275924',NULL,'2024-09-09 11:02:48.275926',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (185,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"!", "items":[{"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "NICE플래닛", "value": "COM_planet.txt"}]}***',NULL,'2024-09-09 11:05:31.903895',NULL,'2024-09-09 11:05:31.903898',false,NULL,NULL),
	 (187,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-09 14:48:07.116748',NULL,'2024-09-09 14:48:07.11675',false,NULL,NULL),
	 (187,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: Error code: 400 - {''error'': {''message'': "This model''s maximum context length is 16385 tokens. However, your messages resulted in 17086 tokens. Please reduce the length of the messages.", ''type'': ''invalid_request_error'', ''param'': ''messages'', ''code'': ''context_length_exceeded''}}',NULL,'2024-09-09 14:48:16.284822',NULL,'2024-09-09 14:48:16.284828',false,NULL,NULL),
	 (187,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: Error code: 400 - {''error'': {''message'': "This model''s maximum context length is 16385 tokens. However, your messages resulted in 17088 tokens. Please reduce the length of the messages.", ''type'': ''invalid_request_error'', ''param'': ''messages'', ''code'': ''context_length_exceeded''}}',NULL,'2024-09-09 14:49:07.573218',NULL,'2024-09-09 14:49:07.57322',false,NULL,NULL),
	 (187,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"업무 담당자 정보를 알고싶어", "items":[{"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "서비스별담당자4", "value": "COM_manager4.txt"}, {"name": "서비스별담당자3", "value": "COM_manager3.txt"}]}***',NULL,'2024-09-09 16:03:38.887111',NULL,'2024-09-09 16:03:38.887117',false,NULL,NULL),
	 (187,0,'BOT','IT부문 서비스 담당자 중 "서비스운영실"에서 업무를 담당하는 담당자 정보를 알려드릴게요. 해당 부서에서 업무를 맡고 있는 담당자는 다음과 같아요:

- 김경희(4880)
- 이희재(4078)
- 박예린(4029)

어떤 업무에 대해 더 궁금한 점이 있나요?',NULL,'2024-09-09 16:03:52.501518',NULL,'2024-09-09 16:03:52.501519',false,NULL,NULL),
	 (187,0,'BOT','해당 질문에 대한 정보가 없습니다. 죄송합니다.',NULL,'2024-09-09 16:04:00.231022',NULL,'2024-09-09 16:04:00.231024',false,NULL,NULL),
	 (187,0,'BOT','"서비스담당자3"에서 업무를 맡고 있는 담당자 정보는 다음과 같아요:

- 차민정(4693)
- 장지연(4594)

더 궁금한 사항이 있으면 언제든지 물어봐주세요!',NULL,'2024-09-09 16:04:14.489087',NULL,'2024-09-09 16:04:14.489092',false,NULL,NULL),
	 (187,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"복리후생 담당자 알려줘", "items":[{"name": "서비스별담당자1", "value": "COM_manager1.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-09 17:38:42.550113',NULL,'2024-09-09 17:38:42.550116',false,NULL,NULL),
	 (187,0,'BOT','"서비스담당자2"에서 "nice-i" 업무를 담당하는 담당자는 박대희(4157)입니다. 도움이 되셨나요?',NULL,'2024-09-09 17:42:01.794939',NULL,'2024-09-09 17:42:01.794941',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (187,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"급여관련 문의하고싶어", "items":[{"name": "원스톱CUE", "value": "COM_cue.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "서비스별담당자1", "value": "COM_manager1.txt"}, {"name": "서비스별담당자4", "value": "COM_manager4.txt"}]}***',NULL,'2024-09-09 17:42:17.330403',NULL,'2024-09-09 17:42:17.330406',false,NULL,NULL),
	 (187,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"그룹웨어 접속 방법 알려줘", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}]}***',NULL,'2024-09-09 18:49:43.907432',NULL,'2024-09-09 18:49:43.907433',false,NULL,NULL),
	 (187,0,'BOT','내부그룹웨어에 접속하는 방법은 다음과 같아요: 내부망 그룹웨어에 접속하여 로그인한 후 상단메뉴에서 ''게시판''을 선택하고, 좌측 트리에서 ''공지게시판''을 선택한 후 ''사내공지사항'' 게시판으로 이동하면 됩니다. 또한, 그룹웨어 포털 메인화면의 포틀릿에서도 확인할 수 있어요. 어떤 도움이 필요한지 더 자세히 알려주시면 도와드리겠습니다.',NULL,'2024-09-09 18:50:02.681362',NULL,'2024-09-09 18:50:02.681365',false,NULL,NULL),
	 (187,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"접속url을 알려줘", "items":[{"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "서비스별담당자3", "value": "COM_manager3.txt"}]}***',NULL,'2024-09-09 18:50:13.900161',NULL,'2024-09-09 18:50:13.900163',false,NULL,NULL),
	 (190,0,'BOT','내부그룹웨어 접속 URL은 내부망에서만 접속 가능하며, 일반적으로 회사 내부 시스템에서만 접속할 수 있습니다. 외부에서 접속이 필요한 경우 관리자나 IT 부서에 문의해주세요.',NULL,'2024-09-09 19:16:24.437842',NULL,'2024-09-09 19:16:24.437844',false,NULL,NULL),
	 (187,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"그룹웨어 접속방법", "items":[{"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-09 18:50:31.090061',NULL,'2024-09-09 18:50:31.090063',false,NULL,NULL),
	 (187,0,'BOT','외부그룹웨어에서 그룹웨어에 접속하는 방법은 다음과 같아요: 외부그룹웨어에 접속한 후 왼쪽 상단의 마이페이지(톱니바퀴 모양 아이콘)를 클릭하고, 나타나는 왼쪽 메뉴에서 "그룹웨어"를 선택하면 그룹웨어에 접속할 수 있습니다. 더 궁금한 점이 있으시면 언제든지 물어보세요!',NULL,'2024-09-09 18:50:45.763013',NULL,'2024-09-09 18:50:45.763016',false,NULL,NULL),
	 (187,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"데이터고 접속 방법은/", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-09 18:51:07.546937',NULL,'2024-09-09 18:51:07.54694',false,NULL,NULL),
	 (187,0,'BOT','Datago 시스템에 접속하는 두 가지 방법은 다음과 같습니다. 1. URL을 통한 직접 접속 : - 웹 브라우저에서 ''https://datago.niceinfo.co.kr'' 주소로 접속하세요. 2. 내부 그룹웨어를 통한 접속 : - 내부 그룹웨어에 접속하여, ''Link'' > ''datago'' 바로가기를 클릭하세요. 어떤 도움이 필요하신가요?',NULL,'2024-09-09 18:51:24.153983',NULL,'2024-09-09 18:51:24.153987',false,NULL,NULL),
	 (188,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-09 19:01:00.298568',NULL,'2024-09-09 19:01:00.298571',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (188,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"기업부문 인사 담당자를 알려줘", "items":[{"name": "서비스별담당자4", "value": "COM_manager4.txt"}, {"name": "서비스별담당자3", "value": "COM_manager3.txt"}]}***',NULL,'2024-09-09 19:01:55.338286',NULL,'2024-09-09 19:01:55.338288',false,NULL,NULL),
	 (188,0,'BOT','기업부문 인사 담당자는 손승희(1734)와 이예림(1738)입니다.',NULL,'2024-09-09 19:02:01.623822',NULL,'2024-09-09 19:02:01.623824',false,NULL,NULL),
	 (188,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"nice bizline 담당자는 누구야?", "items":[{"name": "서비스별담당자4", "value": "COM_manager4.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-09 19:02:21.676247',NULL,'2024-09-09 19:02:21.676249',false,NULL,NULL),
	 (188,0,'BOT','nice bizline 담당자는 이산웅(1468)와 음대진(1555)입니다.',NULL,'2024-09-09 19:02:26.635264',NULL,'2024-09-09 19:02:26.635267',false,NULL,NULL),
	 (188,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"데이터고 접속 방법을 알려줘", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-09 19:02:44.288569',NULL,'2024-09-09 19:02:44.288571',false,NULL,NULL),
	 (188,0,'BOT','내부그룹웨어에서 그룹웨어에 접속하는 URL은 ''https://groupware.niceinfo.co.kr'' 입니다.',NULL,'2024-09-09 19:03:31.659501',NULL,'2024-09-09 19:03:31.659503',false,NULL,NULL),
	 (189,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-09 19:10:09.558222',NULL,'2024-09-09 19:10:09.558231',false,NULL,NULL),
	 (189,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"그룹웨어 접속 url이 뭐야?", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-09 19:10:15.301267',NULL,'2024-09-09 19:10:15.301269',false,NULL,NULL),
	 (189,0,'BOT','내부그룹웨어에서 그룹웨어 접속 URL은 일반적으로 내부망에서만 접속 가능한 주소이므로, 회사 내부 네트워크에 접속하여 해당 URL을 확인하셔야 합니다. 만약 접속 방법이나 URL에 대한 안내가 필요하다면, 내부 IT 담당자나 관리팀에 문의하여 자세한 안내를 받으시는 것이 좋습니다.',NULL,'2024-09-09 19:10:30.291754',NULL,'2024-09-09 19:10:30.291757',false,NULL,NULL),
	 (189,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"내부그룹웨어 접속방법을 알려줘", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-09 19:10:41.954348',NULL,'2024-09-09 19:10:41.95435',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (189,0,'BOT','내부그룹웨어에 접속하려면 내부망에 접속해야 합니다. 일반적으로 내부망에 접속한 후에는 웹 브라우저를 통해 그룹웨어의 URL을 입력하여 접속할 수 있습니다. 그러나 구체적인 URL은 회사마다 다를 수 있으므로, 내부 IT 담당자나 관리팀에 문의하여 정확한 그룹웨어 접속 URL을 확인하시는 것이 좋습니다.',NULL,'2024-09-09 19:10:57.721109',NULL,'2024-09-09 19:10:57.721113',false,NULL,NULL),
	 (189,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"내부그룹웨어 접속 url을 알려줘", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}]}***',NULL,'2024-09-09 19:14:49.978298',NULL,'2024-09-09 19:14:49.9783',false,NULL,NULL),
	 (189,0,'BOT','내부그룹웨어에 접속하기 위한 URL은 일반적으로 회사의 내부망에서만 접속 가능한 주소입니다. 정확한 URL은 회사마다 다를 수 있으므로, 내부 IT 담당자나 관리팀에 문의하여 해당 정보를 확인하시는 것이 좋습니다.',NULL,'2024-09-09 19:15:03.563673',NULL,'2024-09-09 19:15:03.563675',false,NULL,NULL),
	 (190,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-09 19:16:09.502913',NULL,'2024-09-09 19:16:09.502919',false,NULL,NULL),
	 (190,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"내부그룹웨어 접속 url을 알려줘 ", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}]}***',NULL,'2024-09-09 19:16:14.5542',NULL,'2024-09-09 19:16:14.554202',false,NULL,NULL),
	 (259,4,'MGR','ㄱㄱ',NULL,'2024-09-30 14:00:40.856206',NULL,'2024-09-30 14:00:40.856217',false,NULL,NULL),
	 (190,0,'BOT','외부그룹웨어에서 내부그룹웨어의 접속 URL을 확인하려면 내부그룹웨어에 로그인하여 해당 정보를 확인해야 합니다. 일반적으로 외부그룹웨어에서는 내부그룹웨어의 URL을 제공하지 않습니다.',NULL,'2024-09-09 19:16:51.890277',NULL,'2024-09-09 19:16:51.890279',false,NULL,NULL),
	 (191,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 09:18:16.806971',NULL,'2024-09-10 09:18:16.806975',false,NULL,NULL),
	 (191,0,'BOT','서비스: 외부그룹웨어
서비스 소개: 그룹포탈, 외부메일 서비스 제공
URL: https://gw.nice.co.kr
담당부서: 서비스운영실
담당자: 김경희(4880), 이희재(4078), 박예린(4029)
인터넷PC에서 접속 가능

접속 방법: 위 URL을 인터넷 브라우저에 입력하여 외부그룹웨어 서비스에 접속할 수 있습니다.',NULL,'2024-09-10 09:18:37.117426',NULL,'2024-09-10 09:18:37.117428',false,NULL,NULL),
	 (191,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"내부그룹웨어 접속 방법은?", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-10 09:18:53.245298',NULL,'2024-09-10 09:18:53.2453',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (191,0,'BOT','Datago 시스템에 접속하는 두 가지 방법은 다음과 같습니다.
1. URL을 통한 직접 접속: 
- 웹 브라우저에서 ''https://datago.niceinfo.co.kr'' 주소로 접속하세요.
2. 내부 그룹웨어를 통한 접속: 
- 내부 그룹웨어에 접속하여, ''Link'' > ''datago'' 바로가기를 클릭하세요.',NULL,'2024-09-10 09:19:43.939094',NULL,'2024-09-10 09:19:43.939097',false,NULL,NULL),
	 (191,0,'BOT','결재선을 지정하는 방법은 다음과 같습니다.
의뢰서 상단의 ''결재정보''를 클릭하여 결재선을 지정할 수 있습니다. 여기서 ''추가하기'' 버튼을 눌러 발신부서와 수신부서를 지정하고, 모든 부서를 지정한 후에는 우측 하단의 ''저장'' 버튼을 클릭하여 결재선에 반영합니다. 마지막으로 의뢰서의 발신처와 수신처에 지정한 결재선이 정상적으로 등록되었는지 확인해 주세요.',NULL,'2024-09-10 09:36:52.121795',NULL,'2024-09-10 09:36:52.121803',false,NULL,NULL),
	 (191,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"화상회의 시스템 문의가있는데 담당자 알려줘", "items":[{"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "Nice2MeetU", "value": "COM_n2mu.txt"}]}***',NULL,'2024-09-10 09:37:21.744953',NULL,'2024-09-10 09:37:21.744957',false,NULL,NULL),
	 (191,0,'BOT','서비스: Nice2MeetU(화상회의)
담당부서: 서비스운영실
담당자: 최석진(4903)
안내: 화상회의 시스템에 관한 문의는 서비스운영실의 최석진(4903)에게 문의하시면 도움을 받을 수 있습니다.',NULL,'2024-09-10 09:37:34.673581',NULL,'2024-09-10 09:37:34.673583',false,NULL,NULL),
	 (192,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 09:43:19.260557',NULL,'2024-09-10 09:43:19.260559',false,NULL,NULL),
	 (192,0,'BOT','서비스: NICE알리미  
서비스 소개: 사내 모바일 알림 서비스  
URL: https://api-alrimi.niceinfo.co.kr/download.html  
담당부서: 서비스운영실  
담당자: 최우영(4011) / 김경희(4880)',NULL,'2024-09-10 09:43:33.877898',NULL,'2024-09-10 09:43:33.8779',false,NULL,NULL),
	 (192,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"좀더 친근하게 말해줘", "items":[{"name": "서비스별담당자3", "value": "COM_manager3.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-10 09:43:44.595098',NULL,'2024-09-10 09:43:44.5951',false,NULL,NULL),
	 (192,0,'BOT','서비스: NICE알리미  
서비스 소개: 사내 모바일 알림 서비스  
URL: https://api-alrimi.niceinfo.co.kr/download.html  
담당부서: 서비스운영실  
담당자: 최우영(4011) / 김경희(4880)  

더 궁금한 점 있으면 언제든지 물어봐줘! 😊',NULL,'2024-09-10 09:43:58.893644',NULL,'2024-09-10 09:43:58.893647',false,NULL,NULL),
	 (192,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"안녕", "items":[{"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "서비스별담당자3", "value": "COM_manager3.txt"}]}***',NULL,'2024-09-10 09:44:08.668995',NULL,'2024-09-10 09:44:08.668998',false,NULL,NULL),
	 (192,0,'BOT','죄송합니다. 그 정보는 제가 가지고 있지 않습니다.',NULL,'2024-09-10 09:44:27.908269',NULL,'2024-09-10 09:44:27.90827',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (192,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"인사 담당자가 누구야?", "items":[{"name": "서비스별담당자3", "value": "COM_manager3.txt"}, {"name": "서비스별담당자2", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-10 09:44:33.416918',NULL,'2024-09-10 09:44:33.416921',false,NULL,NULL),
	 (192,0,'BOT','담당자: 손승희(1734) / 이예림(1738)',NULL,'2024-09-10 09:44:39.202243',NULL,'2024-09-10 09:44:39.202245',false,NULL,NULL),
	 (192,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"친근하게 말해줘", "items":[{"name": "서비스별담당자2", "value": "COM_manager2.txt"}, {"name": "서비스별담당자3", "value": "COM_manager3.txt"}]}***',NULL,'2024-09-10 10:13:30.591198',NULL,'2024-09-10 10:13:30.5912',false,NULL,NULL),
	 (192,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-10 10:13:33.1788',NULL,'2024-09-10 10:13:33.178802',false,NULL,NULL),
	 (192,0,'BOT','담당자: 박선형 / 강웅비',NULL,'2024-09-10 10:21:58.083977',NULL,'2024-09-10 10:21:58.083978',false,NULL,NULL),
	 (192,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"AIMS는?", "items":[{"name": "CB부문 담당자", "value": "COM_manager3.txt"}, {"name": "IT부문, 정보보안 담당자", "value": "COM_manager2.txt"}, {"name": "ITONE", "value": "COM_itone.txt"}]}***',NULL,'2024-09-10 10:22:09.391758',NULL,'2024-09-10 10:22:09.39176',false,NULL,NULL),
	 (192,0,'BOT','AIMS는 "하선화"와 "윤재헌"이 담당하고 있습니다.',NULL,'2024-09-10 10:22:17.642031',NULL,'2024-09-10 10:22:17.642034',false,NULL,NULL),
	 (192,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"전자결재 상태를 확인하고 싶어", "items":[{"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-10 11:30:31.432527',NULL,'2024-09-10 11:30:31.43253',false,NULL,NULL),
	 (192,0,'BOT','내부그룹웨어 상단 메뉴 ''결재''에서 전자결재 기능을 사용할 수 있으며, 기안하신 문서의 진행사항은 전자결재 메뉴 좌측 트리에서 ''결재진행''에 진입하여 문서목록 테이블의 칼럼 중 ''상태''를 확인하면 됩니다. 결재선은 해당 문서를 클릭하여 조회 후, 조회화면에서 상단 탭의 결재현황을 클릭하면 확인할 수 있습니다.',NULL,'2024-09-10 11:30:48.633446',NULL,'2024-09-10 11:30:48.633449',false,NULL,NULL),
	 (193,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 13:51:09.276241',NULL,'2024-09-10 13:51:09.276244',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (193,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"담당자 정보를 확인하고싶어", "items":[{"name": "IT부문, 정보보안 담당자", "value": "COM_manager2.txt"}, {"name": "CB부문 담당자", "value": "COM_manager3.txt"}]}***',NULL,'2024-09-10 13:51:18.298974',NULL,'2024-09-10 13:51:18.298976',false,NULL,NULL),
	 (193,0,'BOT','IT부문 업무 담당자와 정보보안 업무 담당자의 담당자 정보를 확인하고 싶으신가요? 어느 부문의 담당자 정보를 원하시나요?',NULL,'2024-09-10 13:51:34.075154',NULL,'2024-09-10 13:51:34.075156',false,NULL,NULL),
	 (193,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: [Errno 2] No such file or directory: ''/Users/serviceone2/Documents/workspace/n-chatbot/api/modules/../files/공용서비스/IT부문, 정보보안 담당자_manager2.txt,공용서비스/IT부문, 정보보안 담당자_manager2.txt,공용서비스/IT부문, 정보보안 담당자_manager2.txt,공용서비스/IT부문, 정보보안 담당자_manager2.txt''',NULL,'2024-09-10 13:51:39.186972',NULL,'2024-09-10 13:51:39.186975',false,NULL,NULL),
	 (193,0,'BOT','CB부문 업무 담당자의 정보를 확인하고 싶으시군요. 어떤 업무 담당자의 정보를 원하시나요?',NULL,'2024-09-10 13:53:07.051784',NULL,'2024-09-10 13:53:07.051786',false,NULL,NULL),
	 (193,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"인사", "items":[{"name": "IT부문, 정보보안 담당자", "value": "COM_manager2.txt"}, {"name": "경영지원 담당자", "value": "COM_manager1.txt"}]}***',NULL,'2024-09-10 13:53:12.142627',NULL,'2024-09-10 13:53:12.142629',false,NULL,NULL),
	 (193,0,'BOT','CB부문 인사 담당자는 양은경(4113)와 황수진(4634)입니다.',NULL,'2024-09-10 13:54:08.340939',NULL,'2024-09-10 13:54:08.340941',false,NULL,NULL),
	 (193,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: [Errno 2] No such file or directory: ''/Users/serviceone2/Documents/workspace/n-chatbot/api/modules/../files/공용서비스/IT부문, 정보보안 담당자_manager2.txt,공용서비스/IT부문, 정보보안 담당자_manager2.txt,공용서비스/IT부문, 정보보안 담당자_manager2.txt,공용서비스/IT부문, 정보보안 담당자_manager2.txt''',NULL,'2024-09-10 13:54:57.456542',NULL,'2024-09-10 13:54:57.456544',false,NULL,NULL),
	 (194,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 13:55:06.826773',NULL,'2024-09-10 13:55:06.826789',false,NULL,NULL),
	 (194,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"안녕", "items":[{"name": "내규", "value": "LAW"}, {"name": "ITONE", "value": "COM_itone.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-10 13:55:20.763267',NULL,'2024-09-10 13:55:20.76327',false,NULL,NULL),
	 (195,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 13:59:22.581907',NULL,'2024-09-10 13:59:22.581912',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (195,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"안녕", "items":[{"name": "내규", "value": "LAW"}, {"name": "ITONE", "value": "COM_itone.txt"}, {"name": "내부메신저", "value": "COM_inmsg.txt"}]}***',NULL,'2024-09-10 13:59:27.439108',NULL,'2024-09-10 13:59:27.43911',false,NULL,NULL),
	 (196,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 14:07:27.501923',NULL,'2024-09-10 14:07:27.501925',false,NULL,NULL),
	 (196,0,'BOT','IT전략기획 담당자는 "구자준"입니다.',NULL,'2024-09-10 14:07:36.095069',NULL,'2024-09-10 14:07:36.095071',false,NULL,NULL),
	 (196,0,'BOT','죄송합니다. 그 정보는 제가 가지고 있지 않습니다.',NULL,'2024-09-10 14:15:15.682853',NULL,'2024-09-10 14:15:15.682855',false,NULL,NULL),
	 (215,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 19:41:02.499981',NULL,'2024-09-23 19:41:02.499983',false,NULL,NULL),
	 (197,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 14:15:36.509394',NULL,'2024-09-10 14:15:36.509395',false,NULL,NULL),
	 (197,0,'BOT','전산구매 담당자는 김정훈(4165)입니다. 궁금한 점이 있으시면 언제든지 물어보세요!',NULL,'2024-09-10 14:15:46.352401',NULL,'2024-09-10 14:15:46.352403',false,NULL,NULL),
	 (198,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 14:19:38.64873',NULL,'2024-09-10 14:19:38.648736',false,NULL,NULL),
	 (198,0,'BOT','담당자: 이희재(4078) / 김경희(4880)',NULL,'2024-09-10 14:19:47.104931',NULL,'2024-09-10 14:19:47.104932',false,NULL,NULL),
	 (191,0,'BOT','서비스운영실에 연락 부탁드립니다. 도움이 필요하시면 언제든지 문의해주세요!',NULL,'2024-09-10 14:35:34.349259',NULL,'2024-09-10 14:35:34.349261',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (199,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-10 14:56:47.839782',NULL,'2024-09-10 14:56:47.839788',false,NULL,NULL),
	 (199,0,'BOT','내부 간 전송 시 최대 1GB까지 첨부할 수 있습니다. 외부로 전송할 때는 50MB까지 가능하며, 일반적인 메일 서버는 20~25MB까지 수신 가능합니다. 가능하면 25MB 이내로 전송하는 것이 좋습니다.',NULL,'2024-09-10 14:57:07.828136',NULL,'2024-09-10 14:57:07.828143',false,NULL,NULL),
	 (197,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"서비스 접속 방법", "items":[{"name": "ITONE", "value": "COM_itone.txt"}, {"name": "IT부문 및 정보보안 담당자", "value": "COM_manager2.txt"}]}***',NULL,'2024-09-10 17:23:18.732898',NULL,'2024-09-10 17:23:18.7329',false,NULL,NULL),
	 (259,4,'MGR','ㄴㄴ',NULL,'2024-09-30 14:00:41.63968',NULL,'2024-09-30 14:00:41.639685',false,NULL,NULL),
	 (197,0,'BOT','ITONE에 접속하려면 크롬 브라우저를 사용하여 "https://itsm.niceinfo.co.kr/"에 접속하면 됩니다. 추가 질문이 있으면 언제든지 물어보세요!',NULL,'2024-09-10 17:23:35.741383',NULL,'2024-09-10 17:23:35.741388',false,NULL,NULL),
	 (200,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-11 14:27:28.590349',NULL,'2024-09-11 14:27:28.590354',false,NULL,NULL),
	 (200,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"챗봇테스트", "items":[{"name": "내부메신저", "value": "COM_inmsg.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}]}***',NULL,'2024-09-11 14:27:38.979619',NULL,'2024-09-11 14:27:38.979621',false,NULL,NULL),
	 (200,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"종료", "items":[{"name": "내규", "value": "LAW"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-11 14:27:41.184985',NULL,'2024-09-11 14:27:41.184989',false,NULL,NULL),
	 (175,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"안녕", "items":[{"name": "IT부문 및 정보보안 담당자", "value": "COM_manager2.txt"}, {"name": "CB부문 담당자", "value": "COM_manager3.txt"}]}***',NULL,'2024-09-19 11:25:00.265598',NULL,'2024-09-19 11:25:00.265601',false,NULL,NULL),
	 (175,0,'BOT','안녕하세요! IT부문 및 정보보안 업무 담당자 목록 중 궁금한 부분이 있나요? 도와드릴 수 있습니다.',NULL,'2024-09-19 13:21:21.424999',NULL,'2024-09-19 13:21:21.425001',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (206,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-20 16:35:45.721708',NULL,'2024-09-20 16:35:45.72171',false,NULL,NULL),
	 (206,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"고마워", "items":[{"name": "내규", "value": "LAW"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}]}***',NULL,'2024-09-20 16:35:59.967749',NULL,'2024-09-20 16:35:59.967751',false,NULL,NULL),
	 (206,0,'BOT','본 지침은 동호회 지원에 관한 세부사항을 정하여 동호회의 효율적 활동 및 관리의 합리화를 기함을 목적으로 합니다. 어떤 도움이 필요하신가요?',NULL,'2024-09-20 16:49:21.738394',NULL,'2024-09-20 16:49:21.738409',false,NULL,NULL),
	 (206,0,'BOT','내부그룹웨어를 통해 도움을 받았다니 다행입니다. 더 궁금한 점이 있거나 도움이 필요하시면 언제든지 물어보세요!',NULL,'2024-09-20 16:50:25.877976',NULL,'2024-09-20 16:50:25.877978',false,NULL,NULL),
	 (208,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 13:24:24.559284',NULL,'2024-09-23 13:24:24.559286',false,NULL,NULL),
	 (209,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 14:24:10.526178',NULL,'2024-09-23 14:24:10.526181',false,NULL,NULL),
	 (209,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"인사 담당자 알려줘", "items":[{"name": "IT부문 및 정보보안 담당자", "value": "COM_manager2.txt"}, {"name": "경영지원 담당자", "value": "COM_manager1.txt"}]}***',NULL,'2024-09-23 14:24:17.870407',NULL,'2024-09-23 14:24:17.870409',false,NULL,NULL),
	 (211,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 15:39:47.091036',NULL,'2024-09-23 15:39:47.091038',false,NULL,NULL),
	 (211,0,'BOT','안녕하세요! IT부문과 정보보안 업무 담당자 목록 중에서 어떤 업무 담당자에 대해 궁금하신가요? 말씀해주시면 도와드리겠습니다.',NULL,'2024-09-23 15:40:02.227086',NULL,'2024-09-23 15:40:02.227099',false,NULL,NULL),
	 (213,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 17:33:16.219198',NULL,'2024-09-23 17:33:16.219201',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (213,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.',NULL,'2024-09-23 17:33:32.491172',NULL,'2024-09-23 17:33:32.491176',false,NULL,NULL),
	 (214,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 17:43:17.765721',NULL,'2024-09-23 17:43:17.765723',false,NULL,NULL),
	 (214,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"사용자의 의도를 분석해보면, 사용자는 ''알리미 설치방법''에 대해 알고 싶어하는 것으로 보입니다. 이에 맞게 질문으로 재구성하면 ''알리미를 설치하는 방법을 알려주세요?''가 될 것입니다. 혹시 추가 정보가 필요하시면 말씀해주세요.", "items":[{"name": "ITONE", "value": "COM_itone.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "NICE플래닛", "value": "COM_planet.txt"}]}***',NULL,'2024-09-23 17:43:33.007895',NULL,'2024-09-23 17:43:33.007897',false,NULL,NULL),
	 (214,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"사용자의 의도를 분석해보면, 사용자는 ''알리미 설치 방법''에 대해 알고 싶어하는 것으로 보입니다. 이를 질문으로 다시 작성하면 ''알리미를 설치하는 방법을 알려주세요?''가 될 것입니다. 혹시 추가 정보가 필요하시면 말씀해주세요.", "items":[{"name": "ITONE", "value": "COM_itone.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "NICE플래닛", "value": "COM_planet.txt"}]}***',NULL,'2024-09-23 17:44:59.296511',NULL,'2024-09-23 17:44:59.296513',false,NULL,NULL),
	 (214,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"알리미 설치 방법을 알려주세요?", "items":[{"name": "NICE플래닛", "value": "COM_planet.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}]}***',NULL,'2024-09-23 17:47:17.190502',NULL,'2024-09-23 17:47:17.190504',false,NULL,NULL),
	 (214,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"알리미 설치 방법을 알려주세요?", "items":[{"name": "NICE플래닛", "value": "COM_planet.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}]}***',NULL,'2024-09-23 17:49:21.080194',NULL,'2024-09-23 17:49:21.080198',false,NULL,NULL),
	 (215,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 18:21:46.651219',NULL,'2024-09-23 18:21:46.651225',false,NULL,NULL),
	 (215,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"알리미 설치 방법을 알려주세요?", "items":[{"name": "NICE플래닛", "value": "COM_planet.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}]}***',NULL,'2024-09-23 18:25:31.029014',NULL,'2024-09-23 18:25:31.029019',false,NULL,NULL),
	 (215,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"알리미 설치 방법을 알려주세요?", "items":[{"name": "NICE플래닛", "value": "COM_planet.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}]}***',NULL,'2024-09-23 18:26:20.474008',NULL,'2024-09-23 18:26:20.47401',false,NULL,NULL),
	 (215,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"접속방법이 무엇인가요?", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}, {"name": "ITONE", "value": "COM_itone.txt"}]}***',NULL,'2024-09-23 19:40:14.118575',NULL,'2024-09-23 19:40:14.118577',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (215,0,'BOT','답변) 
의뢰서 상단의 ''결재정보''를 클릭하여 결재선을 지정할 수 있습니다. ''추가하기'' 버튼을 눌러 발신부서와 수신부서를 지정하고, 모든 부서를 지정한 후에는 ''저장'' 버튼을 클릭하여 결재선을 반영하세요. 발신처와 수신처에 지정한 결재선이 정상적으로 등록되었는지 확인해주세요. 부서 및 결재선 설정이 완료되면 의뢰서를 제출할 수 있습니다.',NULL,'2024-09-23 19:42:30.820015',NULL,'2024-09-23 19:42:30.820016',false,NULL,NULL),
	 (216,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 20:16:17.25999',NULL,'2024-09-23 20:16:17.259992',false,NULL,NULL),
	 (216,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"결재선 지정 방법을 알려드릴까요?", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2024-09-23 20:16:28.172743',NULL,'2024-09-23 20:16:28.172746',false,NULL,NULL),
	 (216,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 20:16:31.809614',NULL,'2024-09-23 20:16:31.809616',false,NULL,NULL),
	 (216,0,'BOT','당신이 결재선을 지정하는 방법은 다음과 같아요. 의뢰서 상단의 ''결재정보''를 클릭하여 ''추가하기'' 버튼을 누르고 발신부서와 수신부서를 지정하세요. 모든 부서를 선택한 후 ''저장'' 버튼을 클릭하여 결재선을 반영하세요. 마지막으로 발신처와 수신처에 지정한 결재선이 올바르게 등록되었는지 확인해주세요.',NULL,'2024-09-23 20:16:47.717502',NULL,'2024-09-23 20:16:47.717507',false,NULL,NULL),
	 (217,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 20:22:24.75946',NULL,'2024-09-23 20:22:24.759467',false,NULL,NULL),
	 (217,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"결재선 지정 방법을 알려드릴까요?", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2024-09-23 20:22:33.611338',NULL,'2024-09-23 20:22:33.611339',false,NULL,NULL),
	 (217,0,'BOT','당연히 알려드릴게요.

의뢰서 상단의 ''결재정보''를 클릭하여 결재선을 지정할 수 있어요. ''추가하기'' 버튼을 눌러 발신부서와 수신부서를 지정하고, 모든 부서를 선택한 후에는 ''저장'' 버튼을 눌러 결재선을 반영하시면 돼요. 마지막으로 발신처와 수신처에 지정한 결재선이 제대로 등록되었는지 확인해주세요.',NULL,'2024-09-23 20:22:51.093618',NULL,'2024-09-23 20:22:51.093621',false,NULL,NULL),
	 (217,0,'BOT','원하시는 서비스를 선택해주세요. ***{''type'': ''row'', ''previous_query'': ''안녕!'', ''items'': [{''service_name'': ''원스톱CUE'', ''service_cd'': ''COM_cue''}, {''service_name'': ''Datago'', ''service_cd'': ''COM_datago''}, {''service_name'': ''외부그룹웨어'', ''service_cd'': ''COM_exgw''}, {''service_name'': ''외부메일'', ''service_cd'': ''COM_exmail''}, {''service_name'': ''내부그룹웨어'', ''service_cd'': ''COM_ingw''}, {''service_name'': ''내부메일'', ''service_cd'': ''COM_inmail''}, {''service_name'': ''내부메신저'', ''service_cd'': ''COM_inmsg''}, {''service_name'': ''ITONE'', ''service_cd'': ''COM_itone''}, {''service_name'': ''경영지원 담당자'', ''service_cd'': ''COM_manager1''}, {''service_name'': ''IT부문 및 정보보안 담당자'', ''service_cd'': ''COM_manager2''}, {''service_name'': ''CB부문 담당자'', ''service_cd'': ''COM_manager3''}, {''service_name'': ''기업부문 담당자'', ''service_cd'': ''COM_manager4''}, {''service_name'': ''Nice2MeetU'', ''service_cd'': ''COM_n2mu''}, {''service_name'': ''NICE플래닛'', ''service_cd'': ''COM_planet''}, {''service_name'': ''관제'', ''service_cd'': ''COM_totalmon''}, {''service_name'': ''동호회 운영지침'', ''service_cd'': ''LAW_001''}]}***',NULL,'2024-09-23 20:23:24.13869',NULL,'2024-09-23 20:23:24.138693',false,NULL,NULL),
	 (222,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 22:06:47.456807',NULL,'2024-09-23 22:06:47.456809',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (218,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 20:24:14.816485',NULL,'2024-09-23 20:24:14.816487',false,NULL,NULL),
	 (218,0,'BOT','원하시는 서비스를 선택해주세요. ***{''type'': ''row'', ''previous_query'': ''안녕'', ''items'': [{''service_name'': ''원스톱CUE'', ''service_cd'': ''COM_cue''}, {''service_name'': ''Datago'', ''service_cd'': ''COM_datago''}, {''service_name'': ''외부그룹웨어'', ''service_cd'': ''COM_exgw''}, {''service_name'': ''외부메일'', ''service_cd'': ''COM_exmail''}, {''service_name'': ''내부그룹웨어'', ''service_cd'': ''COM_ingw''}, {''service_name'': ''내부메일'', ''service_cd'': ''COM_inmail''}, {''service_name'': ''내부메신저'', ''service_cd'': ''COM_inmsg''}, {''service_name'': ''ITONE'', ''service_cd'': ''COM_itone''}, {''service_name'': ''경영지원 담당자'', ''service_cd'': ''COM_manager1''}, {''service_name'': ''IT부문 및 정보보안 담당자'', ''service_cd'': ''COM_manager2''}, {''service_name'': ''CB부문 담당자'', ''service_cd'': ''COM_manager3''}, {''service_name'': ''기업부문 담당자'', ''service_cd'': ''COM_manager4''}, {''service_name'': ''Nice2MeetU'', ''service_cd'': ''COM_n2mu''}, {''service_name'': ''NICE플래닛'', ''service_cd'': ''COM_planet''}, {''service_name'': ''관제'', ''service_cd'': ''COM_totalmon''}, {''service_name'': ''동호회 운영지침'', ''service_cd'': ''LAW_001''}]}***',NULL,'2024-09-23 20:24:20.100038',NULL,'2024-09-23 20:24:20.10006',false,NULL,NULL),
	 (254,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: can only concatenate str (not "MessagesPlaceholder") to str',NULL,'2024-09-26 13:58:59.280985',NULL,'2024-09-26 13:58:59.280988',false,NULL,NULL),
	 (216,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"서비스 접속방법을 알려드릴까요?", "items":[{"name": "관제", "value": "COM_totalmon.txt"}, {"name": "관제", "value": "COM_totalmon"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}, {"name": "ITONE", "value": "COM_itone.txt"}, {"name": "ITONE", "value": "COM_itone"}]}***',NULL,'2024-09-23 20:31:34.18071',NULL,'2024-09-23 20:31:34.180712',false,NULL,NULL),
	 (219,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"로그인 오류가 발생했나요?", "items":[{"name": "내부메일", "value": "COM_inmail.txt"}, {"name": "내부메일", "value": "COM_inmail"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-23 21:12:14.825431',NULL,'2024-09-23 21:12:14.825433',false,NULL,NULL),
	 (220,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 21:16:53.372633',NULL,'2024-09-23 21:16:53.37264',false,NULL,NULL),
	 (220,0,'BOT','원하시는 서비스를 선택해주세요. ***{''type'': ''row'', ''previous_query'': ''안녕'', ''items'': [{''name'': ''원스톱CUE'', ''value'': ''COM_cue''}, {''name'': ''Datago'', ''value'': ''COM_datago''}, {''name'': ''외부그룹웨어'', ''value'': ''COM_exgw''}, {''name'': ''외부메일'', ''value'': ''COM_exmail''}, {''name'': ''내부그룹웨어'', ''value'': ''COM_ingw''}, {''name'': ''내부메일'', ''value'': ''COM_inmail''}, {''name'': ''내부메신저'', ''value'': ''COM_inmsg''}, {''name'': ''ITONE'', ''value'': ''COM_itone''}, {''name'': ''경영지원 담당자'', ''value'': ''COM_manager1''}, {''name'': ''IT부문 및 정보보안 담당자'', ''value'': ''COM_manager2''}, {''name'': ''CB부문 담당자'', ''value'': ''COM_manager3''}, {''name'': ''기업부문 담당자'', ''value'': ''COM_manager4''}, {''name'': ''Nice2MeetU'', ''value'': ''COM_n2mu''}, {''name'': ''NICE플래닛'', ''value'': ''COM_planet''}, {''name'': ''관제'', ''value'': ''COM_totalmon''}, {''name'': ''동호회 운영지침'', ''value'': ''LAW_001''}]}***',NULL,'2024-09-23 21:16:58.929319',NULL,'2024-09-23 21:16:58.929323',false,NULL,NULL),
	 (220,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"로그인 오류인가요?", "items":[{"name": "내부메일", "value": "COM_inmail.txt"}, {"name": "내부메일", "value": "COM_inmail"}, {"name": "ITONE", "value": "COM_itone.txt"}, {"name": "ITONE", "value": "COM_itone"}, {"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "Nice2MeetU", "value": "COM_n2mu"}]}***',NULL,'2024-09-23 21:17:21.488643',NULL,'2024-09-23 21:17:21.488645',false,NULL,NULL),
	 (220,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 21:19:43.12051',NULL,'2024-09-23 21:19:43.120511',false,NULL,NULL),
	 (220,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 21:20:00.001522',NULL,'2024-09-23 21:20:00.001524',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (220,0,'BOT','ITONE에서 로그인 오류가 발생했다면, 다음 단계를 따라주세요:
1. 먼저, 네트워크 연결을 확인하세요.
2. 정확한 아이디와 비밀번호를 입력했는지 확인해보세요.
3. 비밀번호를 잊으셨다면, 로그인 화면 하단의 "비밀번호를 잊으셨나요?" 링크를 통해 임시 비밀번호를 발급받을 수 있습니다.로그인 오류가 지속되면 IT 부서에 문의하여 도움을 받을 수 있습니다.',NULL,'2024-09-23 21:20:18.690441',NULL,'2024-09-23 21:20:18.690445',false,NULL,NULL),
	 (220,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 21:20:28.822625',NULL,'2024-09-23 21:20:28.822627',false,NULL,NULL),
	 (221,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 22:05:49.83648',NULL,'2024-09-23 22:05:49.836481',false,NULL,NULL),
	 (221,0,'BOT','원하시는 서비스를 선택해주세요. ***{''type'': ''row'', ''previous_query'': ''안녕'', ''items'': [{''name'': ''원스톱CUE'', ''value'': ''COM_cue''}, {''name'': ''Datago'', ''value'': ''COM_datago''}, {''name'': ''외부그룹웨어'', ''value'': ''COM_exgw''}, {''name'': ''외부메일'', ''value'': ''COM_exmail''}, {''name'': ''내부그룹웨어'', ''value'': ''COM_ingw''}, {''name'': ''내부메일'', ''value'': ''COM_inmail''}, {''name'': ''내부메신저'', ''value'': ''COM_inmsg''}, {''name'': ''ITONE'', ''value'': ''COM_itone''}, {''name'': ''경영지원 담당자'', ''value'': ''COM_manager1''}, {''name'': ''IT부문 및 정보보안 담당자'', ''value'': ''COM_manager2''}, {''name'': ''CB부문 담당자'', ''value'': ''COM_manager3''}, {''name'': ''기업부문 담당자'', ''value'': ''COM_manager4''}, {''name'': ''Nice2MeetU'', ''value'': ''COM_n2mu''}, {''name'': ''NICE플래닛'', ''value'': ''COM_planet''}, {''name'': ''관제'', ''value'': ''COM_totalmon''}, {''name'': ''동호회 운영지침'', ''value'': ''LAW_001''}]}***',NULL,'2024-09-23 22:05:54.50177',NULL,'2024-09-23 22:05:54.501773',false,NULL,NULL),
	 (221,0,'BOT','안녕하세요! 무엇을 도와드릴까요? Datago에 관련된 궁금한 점이 있으신가요? 부담 갖지 마시고 편하게 질문해주세요.',NULL,'2024-09-23 22:06:04.565904',NULL,'2024-09-23 22:06:04.565906',false,NULL,NULL),
	 (222,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 22:06:16.332587',NULL,'2024-09-23 22:06:16.33259',false,NULL,NULL),
	 (222,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"Rephrased Request: 로그인 방법을 알려주세요.", "items":[{"name": "IT부문 및 정보보안 담당자", "value": "COM_manager2.txt"}, {"name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-23 22:06:30.707926',NULL,'2024-09-23 22:06:30.707928',false,NULL,NULL),
	 (223,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 22:11:26.533104',NULL,'2024-09-23 22:11:26.53311',false,NULL,NULL),
	 (227,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 22:49:49.322954',NULL,'2024-09-23 22:49:49.322956',false,NULL,NULL),
	 (223,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"비밀번호 변경을 위해 변경 팝업이 안 보이는데 어떻게 해야 하나요?", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}, {"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "외부그룹웨어", "value": "COM_exgw"}, {"name": "내부그룹웨어", "value": "COM_ingw.txt"}, {"name": "내부그룹웨어", "value": "COM_ingw"}, {"name": "내부메일", "value": "COM_inmail.txt"}, {"name": "내부메일", "value": "COM_inmail"}, {"name": "외부메일", "value": "COM_exmail.txt"}, {"name": "외부메일", "value": "COM_exmail"}]}***',NULL,'2024-09-23 22:11:47.951982',NULL,'2024-09-23 22:11:47.951985',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (254,2,'USR','테스트',NULL,'2024-09-26 14:00:03.809579',NULL,'2024-09-26 14:00:03.809587',false,'',NULL),
	 (224,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 22:13:55.001404',NULL,'2024-09-23 22:13:55.001408',false,NULL,NULL),
	 (224,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"비밀번호 변경하는 방법을 알려주세요.", "items":[{"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "외부그룹웨어", "value": "COM_exgw"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-23 22:14:08.600935',NULL,'2024-09-23 22:14:08.600939',false,NULL,NULL),
	 (224,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-23 22:14:26.880819',NULL,'2024-09-23 22:14:26.880821',false,NULL,NULL),
	 (224,0,'BOT','비밀번호 변경 방법은 다음과 같아요:
1. Datago 시스템에 로그인합니다.
2. 상단 메뉴에서 ''내 정보''를 클릭합니다.
3. ''비밀번호 변경''을 선택하고 현재 비밀번호와 새 비밀번호를 입력합니다.
4. 변경 사항을 저장하고 나가면 비밀번호가 변경됩니다. 만약 변경 창이 나타나지 않으면 팝업 차단을 해제하고 다시 시도해보세요.',NULL,'2024-09-23 22:14:42.226198',NULL,'2024-09-23 22:14:42.226201',false,NULL,NULL),
	 (225,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 22:17:15.085174',NULL,'2024-09-23 22:17:15.085177',false,NULL,NULL),
	 (225,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"비밀번호 변경할 때 팝업이 안 떠.", "items":[{"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}, {"name": "외부그룹웨어", "value": "COM_exgw.txt"}, {"name": "외부그룹웨어", "value": "COM_exgw"}]}***',NULL,'2024-09-23 22:17:21.19896',NULL,'2024-09-23 22:17:21.198962',false,NULL,NULL),
	 (225,0,'BOT','비밀번호 변경 팝업이 나타나지 않을 때 다음을 확인해보세요:
1. 팝업 차단 해제: 주소창의 빨간색 "X" 아이콘을 클릭하여 팝업을 ''허용'' 상태로 변경 후, 사이트를 새로고침하고 다시 시도해보세요.
2. 시크릿 모드 사용: 크롬 브라우저에서 ''더보기'' 버튼 클릭 후 ''새 시크릿 창'' 선택하거나 Ctrl+Shift+N을 눌러 시크릿 창에서 직접 Datago에 접속하여 변경 절차를 진행해주세요. 계속해서 문제가 해결되지 않으면 Datago 담당자에게 문의하세요.',NULL,'2024-09-23 22:17:56.146467',NULL,'2024-09-23 22:17:56.146471',false,NULL,NULL),
	 (225,0,'BOT','비밀번호 변경 시 팝업이 나타나지 않을 때, 다음을 확인해보세요:
1. 팝업 차단 해제: 브라우저 설정에서 팝업 차단을 해제하고 다시 시도해보세요.
2. 시크릿 모드 사용: 시크릿 창에서 외부그룹웨어에 접속하여 변경할 수 있습니다.
3. 문제 지속 시: 외부그룹웨어 관리자에게 문의하여 도움을 요청하세요.',NULL,'2024-09-23 22:18:13.676652',NULL,'2024-09-23 22:18:13.676654',false,NULL,NULL),
	 (226,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 22:48:30.74493',NULL,'2024-09-23 22:48:30.744932',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (226,0,'BOT','원하시는 서비스를 선택해주세요. ***{''type'': ''row'', ''previous_query'': ''안녕'', ''items'': [{''name'': ''원스톱CUE'', ''value'': ''COM_cue''}, {''name'': ''Datago'', ''value'': ''COM_datago''}, {''name'': ''외부그룹웨어'', ''value'': ''COM_exgw''}, {''name'': ''외부메일'', ''value'': ''COM_exmail''}, {''name'': ''내부그룹웨어'', ''value'': ''COM_ingw''}, {''name'': ''내부메일'', ''value'': ''COM_inmail''}, {''name'': ''내부메신저'', ''value'': ''COM_inmsg''}, {''name'': ''ITONE'', ''value'': ''COM_itone''}, {''name'': ''경영지원 담당자'', ''value'': ''COM_manager1''}, {''name'': ''IT부문 및 정보보안 담당자'', ''value'': ''COM_manager2''}, {''name'': ''CB부문 담당자'', ''value'': ''COM_manager3''}, {''name'': ''기업부문 담당자'', ''value'': ''COM_manager4''}, {''name'': ''Nice2MeetU'', ''value'': ''COM_n2mu''}, {''name'': ''NICE플래닛'', ''value'': ''COM_planet''}, {''name'': ''관제'', ''value'': ''COM_totalmon''}, {''name'': ''동호회 운영지침'', ''value'': ''LAW_001''}]}***',NULL,'2024-09-23 22:48:35.160749',NULL,'2024-09-23 22:48:35.160752',false,NULL,NULL),
	 (226,0,'BOT','안녕하세요! 메일 시스템에 질문이 있으신가요? 무엇을 도와드릴까요?',NULL,'2024-09-23 22:49:24.289145',NULL,'2024-09-23 22:49:24.289149',false,NULL,NULL),
	 (227,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-23 22:49:27.64513',NULL,'2024-09-23 22:49:27.645136',false,NULL,NULL),
	 (227,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"로그인이 왜 안되는지 원인과 해결방법을 알려주세요.", "items":[{"name": "내부메일", "value": "COM_inmail.txt"}, {"name": "내부메일", "value": "COM_inmail"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-23 22:49:38.092616',NULL,'2024-09-23 22:49:38.092617',false,NULL,NULL),
	 (227,0,'BOT','로그인이 안 되는 경우, 다음을 확인하고 해결해보세요:
1. **비밀번호 확인**: 오타나 대소문자 구분을 다시 확인해보세요.
2. **인터넷 연결**: 네트워크 연결을 확인하세요.
3. **쿠키 및 캐시**: 브라우저 쿠키와 캐시를 지워보세요.
4. **OTP 확인**: OTP를 정확히 입력했는지 확인하세요.
5. **계정 잠금**: 여러 번 실패로 계정이 잠길 수 있으니 담당자에게 문의하세요. 
만약 문제가 지속된다면 Datago 담당자에게 연락하여 추가 지원을 받으세요.',NULL,'2024-09-23 22:50:09.026685',NULL,'2024-09-23 22:50:09.026687',false,NULL,NULL),
	 (227,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"로그인이 안되는데 해결 방법을 알려주세요.", "items":[{"name": "내부메일", "value": "COM_inmail.txt"}, {"name": "Nice2MeetU", "value": "COM_n2mu.txt"}, {"name": "Datago", "value": "COM_datago.txt"}]}***',NULL,'2024-09-24 10:19:49.729496',NULL,'2024-09-24 10:19:49.729501',false,NULL,NULL),
	 (227,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-24 10:20:29.417157',NULL,'2024-09-24 10:20:29.41716',false,NULL,NULL),
	 (229,0,'BOT','동호회를 만들기 위해 필요한 조건은 있습니다. 동호회를 만들기 위해서는 일정 인원(10명) 이상의 회사 임직원으로 구성되어야 하며, 동호회 등록 신청서, 동호회 운영방안, 동호회 회칙, 동호회 회원가입신청서, 그리고 회원 명단을 경영지원실장에 제출해야 합니다. 또한, 단일직급 및 단일부서의 인원으로 구성된 동호회의 설립은 승인되지 않습니다.

더 궁금한 점이 있으시면 언제든지 물어보세요!',NULL,'2024-09-24 17:05:47.000508',NULL,'2024-09-24 17:05:47.000512',false,NULL,NULL),
	 (227,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "로그인이 왜 안되지", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}]}***',NULL,'2024-09-24 10:33:11.182242',NULL,'2024-09-24 10:33:11.182244',false,NULL,NULL),
	 (227,0,'BOT','Datago에서 로그인에 문제가 발생할 때, 다음 사항을 확인해보세요:
1. 사용자 아이디와 비밀번호를 정확히 입력했는지 확인합니다.
2. 네트워크 연결이 원활한지 확인하고, 끊긴 경우 다시 시도합니다.
3. 캐시 및 쿠키를 지우거나 다른 브라우저를 사용해보세요.
4. 계정이 잠겼거나 비밀번호를 잊었을 경우, 초기화 요청을 해보세요.
5. 문제가 지속되면 Datago 담당자에게 문의하여 도움을 받을 수 있습니다.',NULL,'2024-09-24 11:02:18.5348',NULL,'2024-09-24 11:02:18.534804',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (227,0,'BOT','내부메일에서 로그인에 문제가 발생할 때 다음을 확인하세요:
1. 올바른 아이디와 비밀번호를 입력했는지 확인합니다.
2. 네트워크 연결이 원활한지 확인하고, 다시 시도합니다.
3. 캐시 및 쿠키를 지우거나 다른 브라우저를 사용해보세요.
4. 계정이 잠겼거나 비밀번호를 잊었을 경우, 초기화 요청을 해보세요.
5. 문제가 지속되면 IT 부서에 문의하여 도움을 받을 수 있습니다.',NULL,'2024-09-24 11:03:29.91345',NULL,'2024-09-24 11:03:29.913453',false,NULL,NULL),
	 (228,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 11:04:36.354861',NULL,'2024-09-24 11:04:36.354867',false,NULL,NULL),
	 (228,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type":"row", "previous_query":"로그인이 왜 안되는지 원인과 해결방법을 알려주세요.", "items":[{"name": "내부메일", "value": "COM_inmail.txt"}, {"name": "Datago", "value": "COM_datago.txt"}, {"name": "관제", "value": "COM_totalmon.txt"}]}***',NULL,'2024-09-24 11:05:19.524362',NULL,'2024-09-24 11:05:19.524366',false,NULL,NULL),
	 (229,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 13:48:38.707417',NULL,'2024-09-24 13:48:38.70742',false,NULL,NULL),
	 (229,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.',NULL,'2024-09-24 13:52:01.202491',NULL,'2024-09-24 13:52:01.202498',false,NULL,NULL),
	 (229,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.',NULL,'2024-09-24 13:56:03.166171',NULL,'2024-09-24 13:56:03.166175',false,NULL,NULL),
	 (229,0,'BOT','',NULL,'2024-09-24 14:06:28.215332',NULL,'2024-09-24 14:06:28.215338',false,NULL,NULL),
	 (229,0,'BOT','',NULL,'2024-09-24 14:19:02.838843',NULL,'2024-09-24 14:19:02.838847',false,NULL,NULL),
	 (229,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "로그인이 왜 안되지?", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}]}***',NULL,'2024-09-24 14:19:45.405858',NULL,'2024-09-24 14:19:45.405862',false,NULL,NULL),
	 (229,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "내부그룹웨어", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}]}***',NULL,'2024-09-24 14:19:54.015578',NULL,'2024-09-24 14:19:54.015581',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,0,'BOT','동호회를 만들기 위해 필요한 조건은 있습니다. 동호회를 만들기 위해서는 일정 인원(10명) 이상의 회사 임직원으로 구성되어야 하며, 동호회 등록 신청서, 동호회 운영방안, 동호회 회칙, 동호회 회원가입신청서, 그리고 회원 명단을 경영지원실장에 제출해야 합니다. 또한, 단일직급 및 단일부서의 인원으로 구성된 동호회의 설립은 승인되지 않습니다.

더 궁금한 점이 있으면 언제든지 물어주세요! [출처:동호회 운영지침, 동호회 운영지침, 동호회 운영지침, 동호회 운영지침, ]',NULL,'2024-09-24 17:15:33.293697',NULL,'2024-09-24 17:15:33.293704',false,NULL,NULL),
	 (229,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "Datago", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}]}***',NULL,'2024-09-24 14:19:58.410869',NULL,'2024-09-24 14:19:58.410873',false,NULL,NULL),
	 (229,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "Datago", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}]}***',NULL,'2024-09-24 14:22:16.76487',NULL,'2024-09-24 14:22:16.764874',false,NULL,NULL),
	 (229,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "로그인이 왜 안되지?", "items": [{"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}]}***',NULL,'2024-09-24 16:05:26.925818',NULL,'2024-09-24 16:05:26.925821',false,NULL,NULL),
	 (229,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ''NoneType'' object has no attribute ''replace''',NULL,'2024-09-24 16:07:30.086436',NULL,'2024-09-24 16:07:30.086438',false,NULL,NULL),
	 (229,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ''NoneType'' object has no attribute ''replace''',NULL,'2024-09-24 16:07:53.385074',NULL,'2024-09-24 16:07:53.385076',false,NULL,NULL),
	 (229,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ''NoneType'' object has no attribute ''replace''',NULL,'2024-09-24 16:13:34.802092',NULL,'2024-09-24 16:13:34.802098',false,NULL,NULL),
	 (229,0,'BOT','동호회를 만들기 위해 필요한 조건은 있습니다. 동호회를 만들기 위해서는 일정 인원(10명) 이상의 회사 임직원으로 구성되어야 하며, 동호회 등록 신청서, 동호회 운영방안, 동호회 회칙, 동호회 회원가입신청서, 그리고 회원 명단을 경영지원실장에 제출해야 합니다. 또한, 단일직급 및 단일부서의 인원으로 구성된 동호회의 설립은 승인되지 않습니다.',NULL,'2024-09-24 16:17:43.115915',NULL,'2024-09-24 16:17:43.115919',false,NULL,NULL),
	 (229,0,'BOT','비밀번호 변경이 안 될 때는 두 가지 방법을 시도해보세요:
1. 팝업 차단 해제: 주소창에서 팝업을 ''허용'' 상태로 변경한 후, 사이트를 새로고침하고 다시 시도해보세요.
2. 시크릿 모드 사용: 크롬 브라우저에서 시크릿 창을 열어 ''https://datago.niceinfo.co.kr''로 접속하여 비밀번호 변경을 시도해보세요. 계속해서 문제가 해결되지 않으면 Datago 담당자에게 연락하여 도움을 받으세요.',NULL,'2024-09-24 16:18:12.513077',NULL,'2024-09-24 16:18:12.513079',false,NULL,NULL),
	 (229,0,'BOT','동호회를 만들기 위해 필요한 조건은 있습니다. 동호회를 만들기 위해서는 일정 인원(10명) 이상의 회사 임직원으로 구성되어야 하며, 동호회 등록 신청서, 동호회 운영방안, 동호회 회칙, 동호회 회원가입신청서, 그리고 회원 명단을 경영지원실장에 제출해야 합니다. 또한, 단일직급 및 단일부서의 인원으로 구성된 동호회의 설립은 승인되지 않습니다.

더 궁금한 점이 있으시면 언제든지 물어보세요!',NULL,'2024-09-24 16:48:21.117238',NULL,'2024-09-24 16:48:21.11724',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,0,'BOT','내부그룹웨어에서 그룹웨어 비밀번호를 변경하는 방법은 다음과 같습니다:
1. 그룹웨어에 로그인한 후, 우측 상단의 설정(톱니바퀴) 아이콘을 클릭합니다.
2. 나타나는 메뉴에서 ''비밀번호 변경''을 선택합니다.
3. 현재 비밀번호를 입력하고 새로운 비밀번호를 설정한 후, 변경을 완료합니다.

비밀번호 변경 후에는 새로운 비밀번호로 로그인해보세요. 문제가 있으면 담당자에게 문의해주세요.',NULL,'2024-09-24 16:49:14.99643',NULL,'2024-09-24 16:49:14.996433',false,NULL,NULL),
	 (229,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: unsupported operand type(s) for +=: ''NoneType'' and ''str''',NULL,'2024-09-24 17:03:45.862759',NULL,'2024-09-24 17:03:45.862766',false,NULL,NULL),
	 (229,0,'BOT','내부 그룹웨어서비스 비밀번호를 초기화 하시겠습니까?***{"type":"col", "previous_query":"itone 비번 변경하고 싶어", "items":[{"name":"예", "value":"NICE_NGROUPWARE_SVC_OK"},{"name":"아니오", "value":"NICE_ALL_SVC"}]}***',NULL,'2024-09-24 17:44:16.067933',NULL,'2024-09-24 17:44:16.067938',false,NULL,NULL),
	 (229,0,'BOT','내부그룹웨어에서 그룹웨어 비밀번호를 변경하는 방법은 다음과 같습니다:
1. 그룹웨어에 로그인한 후, 우측 상단의 설정(톱니바퀴) 아이콘을 클릭합니다.
2. 나타나는 메뉴에서 ''비밀번호 변경''을 선택합니다.
3. 현재 비밀번호를 입력하고 새로운 비밀번호를 설정한 후, 변경을 완료합니다.

비밀번호 변경 후에는 새로운 비밀번호로 로그인해보세요. 문제가 있으면 담당자에게 문의해주세요.',NULL,'2024-09-24 17:18:12.014238',NULL,'2024-09-24 17:18:12.01424',false,NULL,NULL),
	 (229,0,'BOT','내부그룹웨어에서 그룹웨어 비밀번호를 변경하는 방법은 다음과 같습니다:
1. 그룹웨어에 로그인한 후, 우측 상단의 설정(톱니바퀴) 아이콘을 클릭합니다.
2. 메뉴에서 ''비밀번호 변경''을 선택합니다.
3. 현재 비밀번호를 입력하고 새로운 비밀번호를 설정한 후 변경을 완료합니다.

비밀번호 변경 후에는 새로운 비밀번호로 로그인해보세요. 문제가 있으면 담당자에게 문의해주세요.',NULL,'2024-09-24 17:28:03.986737',NULL,'2024-09-24 17:28:03.986748',false,NULL,NULL),
	 (229,0,'BOT','내부그룹웨어에서 그룹웨어 비밀번호를 변경하는 방법은 다음과 같습니다:
1. 그룹웨어에 로그인한 후, 우측 상단의 설정(톱니바퀴) 아이콘을 클릭합니다.
2. 메뉴에서 ''비밀번호 변경''을 선택합니다.
3. 현재 비밀번호를 입력하고 새로운 비밀번호를 설정한 후 변경을 완료합니다.

비밀번호 변경 후에는 새로운 비밀번호로 로그인해보세요. 문제가 있으면 담당자에게 문의해주세요. [출처:내부그룹웨어]',NULL,'2024-09-24 17:31:21.719443',NULL,'2024-09-24 17:31:21.719446',false,NULL,NULL),
	 (229,0,'BOT','내부그룹웨어에서 그룹웨어 비밀번호를 변경하는 방법은 다음과 같습니다:
1. 그룹웨어에 로그인한 후, 우측 상단의 설정(톱니바퀴) 아이콘을 클릭합니다.
2. 메뉴에서 ''비밀번호 변경''을 선택합니다.
3. 현재 비밀번호를 입력하고 새로운 비밀번호를 설정한 후 변경을 완료합니다.

비밀번호 변경 후에는 새로운 비밀번호로 로그인해보세요. 문제가 있으면 담당자에게 문의해주세요. [출처:내부그룹웨어]',NULL,'2024-09-24 17:33:03.11754',NULL,'2024-09-24 17:33:03.117547',false,NULL,NULL),
	 (229,0,'BOT','내부그룹웨어에서 그룹웨어 비밀번호를 변경하는 방법은 다음과 같습니다:
1. 그룹웨어에 로그인한 후, 우측 상단의 설정(톱니바퀴) 아이콘을 클릭합니다.
2. 메뉴에서 ''비밀번호 변경''을 선택합니다.
3. 현재 비밀번호를 입력하고 새로운 비밀번호를 설정한 후 변경을 완료합니다.

비밀번호 변경 후에는 새로운 비밀번호로 로그인해보세요. 문제가 있으면 담당자에게 문의해주세요.
[출처:내부그룹웨어]',NULL,'2024-09-24 17:34:34.889883',NULL,'2024-09-24 17:34:34.889888',false,NULL,NULL),
	 (229,0,'BOT','동호회를 만들기 위해 필요한 조건은 다음과 같습니다:
1. 일정 인원(최소 10명)으로 구성된 동호회 설립 신청
2. 동호회 등록 신청서, 동호회 운영방안, 동호회 회칙, 동호회 회원가입신청서, 동호회 회원 명단 제출
3. 회사의 승인을 받은 임직원들로 구성된 동호회
4. 단일직급 및 단일부서의 인원으로 구성되지 않는 동호회
5. 경영지원실에 필요한 자료 제출
6. 취미동호회 또는 학술동호회 중 하나에 가입
7. 동호회 활동에 필요한 비용 일부를 회사로부터 지원받을 수 있는 조건 충족

위 조건을 충족하면 동호회를 만들 수 있습니다.
[출처:동호회 운영지침]',NULL,'2024-09-24 17:36:47.106169',NULL,'2024-09-24 17:36:47.106173',false,NULL,NULL),
	 (229,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕?", "items": [{"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "동호회 운영지침", "value": "LAW_001"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}]}***',NULL,'2024-09-24 17:37:33.415378',NULL,'2024-09-24 17:37:33.415382',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (229,0,'BOT','네, 기업부문 담당자 목록에서는 기업부문의 다양한 업무를 담당하는 담당자들의 정보가 제공됩니다. 원하시는 특정 업무에 대한 담당자 정보를 알려드릴 수 있습니다. 도와드릴 내용이 있으시면 자세한 질문을 해주세요.
[출처:기업부문 담당자]',NULL,'2024-09-24 17:37:53.423248',NULL,'2024-09-24 17:37:53.423252',false,NULL,NULL),
	 (229,0,'BOT','기업부문 담당자 중 데이터 관련 업무를 담당하는 담당자는 다음과 같습니다:
- 기업정보 데이터 입수, 분석, 정책 관리를 담당하는 담당자는 "조영민(1413)"입니다.
[출처:기업부문 담당자]',NULL,'2024-09-24 17:41:21.960239',NULL,'2024-09-24 17:41:21.960244',false,NULL,NULL),
	 (229,0,'BOT','네, Datago에서 비밀번호를 변경하고 싶으시다면 다음과 같은 단계를 따라 진행하실 수 있습니다:
1. Datago 시스템에 로그인합니다.
2. 상단 메뉴에서 ''내 정보'' 또는 ''계정 설정''을 클릭합니다.
3. 비밀번호 변경 옵션을 찾아 현재 비밀번호를 입력하고 새로운 비밀번호를 설정합니다.
4. 변경 사항을 저장하고 나가면 새로운 비밀번호로 로그인할 수 있습니다.
[출처:Datago]',NULL,'2024-09-24 17:44:02.646118',NULL,'2024-09-24 17:44:02.646122',false,NULL,NULL),
	 (229,0,'BOT','원하시는 셀프서비스를 선택해주세요. ***{"type":"row", "previous_query":"아니오", "items":[{"name":"내부그룹웨어", "value":"NICE_NGROUPWARE_SVC"},{"name":"외부그룹웨어", "value":"NICE_HGROUPWARE_SVC"},{"name":"내부메일", "value":"NICE_WEBMAIL_SVC"}]}***',NULL,'2024-09-24 17:44:21.485256',NULL,'2024-09-24 17:44:21.485261',false,NULL,NULL),
	 (229,0,'BOT','죄송합니다, 제가 이해하는 한 Datago 시스템에서 ITONE에 대한 정보는 제공되지 않았습니다. ITONE에 대한 구체적인 내용이 필요하시다면 Datago 시스템 담당자에게 문의하시는 것이 좋습니다. 도움이 필요하시면 다른 질문이 있으시면 알려주세요.',NULL,'2024-09-24 17:44:50.908953',NULL,'2024-09-24 17:44:50.908955',false,NULL,NULL),
	 (229,0,'BOT','ITONE에서 ITONE에 대한 정보는 제공되지 않았습니다. 추가 정보가 필요하시면 Datago 시스템 담당자에게 문의하시는 것이 좋습니다. 다른 질문이 있으시면 언제든지 알려주세요.',NULL,'2024-09-24 17:45:30.538701',NULL,'2024-09-24 17:45:30.538709',false,NULL,NULL),
	 (230,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 18:31:54.672962',NULL,'2024-09-24 18:31:54.672965',false,NULL,NULL),
	 (230,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-24 18:32:20.806002',NULL,'2024-09-24 18:32:20.806005',false,NULL,NULL),
	 (231,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 18:34:21.538088',NULL,'2024-09-24 18:34:21.53809',false,NULL,NULL),
	 (231,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-24 18:34:28.163154',NULL,'2024-09-24 18:34:28.163156',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (231,0,'BOT','동호회 가입을 원하시면 "별지 2_동호회 회원 가입 신청서"를 작성하고 동호회 회장에게 제출하면 됩니다. 해당 신청서에는 개인 정보와 동호회 가입 동기를 작성하시면 되며, 회칙을 준수하고 회비를 매월 납부하는 것을 서약해야 합니다.신청서 작성 후 동호회 회장의 승인을 받으면 가입이 완료됩니다.언제든지 궁금한 점이 있으면 물어봐 주세요!
[출처:동호회 운영지침]',NULL,'2024-09-24 18:35:30.84749',NULL,'2024-09-24 18:35:30.847493',false,NULL,NULL),
	 (231,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-24 18:35:43.109795',NULL,'2024-09-24 18:35:43.109797',false,NULL,NULL),
	 (231,0,'BOT','챗봇에게 질문하는 중 오류가 발생했습니다.: ',NULL,'2024-09-24 18:35:57.336979',NULL,'2024-09-24 18:35:57.336981',false,NULL,NULL),
	 (232,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 18:37:57.762408',NULL,'2024-09-24 18:37:57.762411',false,NULL,NULL),
	 (232,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕?", "items": [{"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-24 18:38:02.786078',NULL,'2024-09-24 18:38:02.786081',false,NULL,NULL),
	 (232,0,'BOT','경영지원 담당자 중 경영지원 담당자는 다음과 같습니다:

- 인사/노무: 고준일(4315)
- 인사(채용, 연수, 인사관리): 정창섭(4316)
- 인력/동호회/휴복직/사내대출제도/멘토링: 김재겸(4164)
- 복리후생/회계: 최선아(4158)
- NICE-i: 박대희(4157)
- 급여/사대보험/퇴직금: 송치민(4347)
- 구매/관리/홍보 기획: 박지용(4163)
- 일반구매: 김미나(4143)
- 전산구매: 김정훈(4165)
- 전산기기(OA) 자산관리: 조기현(4145)
- 전산유지보수 계약관리: 이재욱(4151)
- 콘도/화환/업무지원 외부서비
[출처:경영지원 담당자]',NULL,'2024-09-24 18:38:42.52493',NULL,'2024-09-24 18:38:42.524933',false,NULL,NULL),
	 (233,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 18:39:03.347645',NULL,'2024-09-24 18:39:03.347647',false,NULL,NULL),
	 (233,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕", "items": [{"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}]}***',NULL,'2024-09-24 18:39:12.020594',NULL,'2024-09-24 18:39:12.020598',false,NULL,NULL),
	 (234,0,'BOT','내부메신저에서 로그인에 문제가 있을 때는 다음을 확인해보세요:
1. 인터넷 연결 상태 확인
2. 올바른 계정 정보 입력
3. 캐시 및 쿠키 삭제 후 다시 시도
4. 다른 브라우저나 기기로 시도
5. 계속해서 문제가 발생하면 내부그룹웨어 담당자에게 문의해주세요.
[출처:내부메신저]',NULL,'2024-09-24 20:30:27.0265',NULL,'2024-09-24 20:30:27.026506',false,NULL,NULL),
	 (235,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 20:35:38.498385',NULL,'2024-09-24 20:35:38.498388',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (260,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-10-08 17:59:17.041372',NULL,'2024-10-08 17:59:17.041375',false,NULL,NULL),
	 (260,2,'USR','내부그룹웨어',NULL,'2024-10-08 17:59:25.059328',NULL,'2024-10-08 17:59:25.05933',false,'COM_ingw','안녕'),
	 (280,0,'BOT','안녕하세요. 저는 업무지원챗봇 "나비스(NARVIS)" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요?
참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-11-02 20:51:01.788986',NULL,'2024-11-02 20:51:01.788987',false,NULL,NULL),
	 (235,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕?", "items": [{"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}]}***',NULL,'2024-09-24 20:36:09.34308',NULL,'2024-09-24 20:36:09.343083',false,NULL,NULL),
	 (235,0,'BOT','의도는 관제 시스템에서 특정 작업을 수행하거나 상태를 파악하기 위한 목적을 가리킵니다. 예를 들어, 서비스 상태 확인, 이벤트 처리, 알림 발송 등이 의도에 해당합니다. 관제는 시스템을 효율적으로 관리하고 문제를 신속히 대응하기 위해 설계되었습니다.
[출처:관제]',NULL,'2024-09-24 20:36:47.720414',NULL,'2024-09-24 20:36:47.720419',false,NULL,NULL),
	 (236,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 20:37:02.687669',NULL,'2024-09-24 20:37:02.687672',false,NULL,NULL),
	 (237,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 20:40:07.927659',NULL,'2024-09-24 20:40:07.927663',false,NULL,NULL),
	 (237,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕?", "items": [{"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}]}***',NULL,'2024-09-24 20:40:36.771921',NULL,'2024-09-24 20:40:36.771925',false,NULL,NULL),
	 (238,0,'BOT','안녕하세요. 저는 업무지원챗봇 "헬피" 입니다. 저는 공용서비스, 사용자 단말과 보안, 내규관련 답변을 드릴 수 있습니다. 무엇을 도와드릴까요? 참고로, 챗봇과 대화창에 ''#'' 입력하시면 셀프서비스 목록을 확인하실 수 있습니다.',NULL,'2024-09-24 20:44:50.18221',NULL,'2024-09-24 20:44:50.182213',false,NULL,NULL),
	 (238,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "안녕?", "items": [{"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}]}***',NULL,'2024-09-24 20:45:13.636131',NULL,'2024-09-24 20:45:13.636136',false,NULL,NULL);
INSERT INTO nchatbot.chat_message (chat_id,user_id,user_role_cd,chat_message,created_by,created_time,modified_by,last_modified_time,delete_yn,selected_cd,previous_query) VALUES
	 (254,0,'BOT','원하시는 서비스를 선택해주세요. ***{"type": "row", "previous_query": "테스트", "items": [{"type": "SERVICE_CD", "name": "기업부문 담당자", "value": "COM_manager4"}, {"type": "SERVICE_CD", "name": "경영지원 담당자", "value": "COM_manager1"}, {"type": "SERVICE_CD", "name": "Nice2MeetU", "value": "COM_n2mu"}, {"type": "SERVICE_CD", "name": "외부그룹웨어", "value": "COM_exgw"}, {"type": "SERVICE_CD", "name": "Datago", "value": "COM_datago"}, {"type": "SERVICE_CD", "name": "IT부문 및 정보보안 담당자", "value": "COM_manager2"}, {"type": "SERVICE_CD", "name": "NICE플래닛", "value": "COM_planet"}, {"type": "SERVICE_CD", "name": "관제", "value": "COM_totalmon"}, {"type": "SERVICE_CD", "name": "내규", "value": "LAW"}, {"type": "SERVICE_CD", "name": "외부메일", "value": "COM_exmail"}, {"type": "SERVICE_CD", "name": "CB부문 담당자", "value": "COM_manager3"}, {"type": "SERVICE_CD", "name": "내부메일", "value": "COM_inmail"}, {"type": "SERVICE_CD", "name": "내부메신저", "value": "COM_inmsg"}, {"type": "SERVICE_CD", "name": "원스톱CUE", "value": "COM_cue"}, {"type": "SERVICE_CD", "name": "ITONE", "value": "COM_itone"}, {"type": "SERVICE_CD", "name": "내부그룹웨어", "value": "COM_ingw"}]}***',NULL,'2024-09-26 14:00:05.00987',NULL,'2024-09-26 14:00:05.009875',false,NULL,NULL),
	 (254,2,'USR','NICE플래닛',NULL,'2024-09-26 14:00:09.426046',NULL,'2024-09-26 14:00:09.426051',false,'COM_planet','테스트'),
	 (254,2,'USR','스페이스 키를 왜 입력해?',NULL,'2024-09-26 14:01:48.868033',NULL,'2024-09-26 14:01:48.868038',false,'',NULL),
	 (260,2,'USR','안녕',NULL,'2024-10-08 17:59:21.464647',NULL,'2024-10-08 17:59:21.464653',false,'',NULL),
	 (280,0,'BOT','언제든지 도와드릴게요! 궁금한 점이 있으면 언제든지 물어보세요. 😊',NULL,'2024-11-02 20:52:27.393899',NULL,'2024-11-02 20:52:27.393903',false,NULL,NULL),
	 (282,2,'USR','datago에서 otp 설정 방법 알려줘',NULL,'2024-11-02 21:02:14.383512',NULL,'2024-11-02 21:02:14.383516',false,'',NULL),
	 (282,0,'BOT','',NULL,'2024-11-02 21:02:15.637146',NULL,'2024-11-02 21:02:15.637148',false,NULL,NULL),
	 (283,2,'USR','datago에서 otp설정 방법 알려줘',NULL,'2024-11-02 21:04:34.94032',NULL,'2024-11-02 21:04:34.940323',false,'',NULL),
	 (283,0,'BOT','',NULL,'2024-11-02 21:04:35.458692',NULL,'2024-11-02 21:04:35.458694',false,NULL,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (118,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:15:35.813319',NULL,'2024-09-02 13:20:44.654525',false,NULL),
	 (110,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 안내','공용서비스, 사용자 단말과 보안, 내규관련 답변을 제공하는 업무지원챗봇 헬피에게 도움을 요청하는 대화입니다.','챗봇/헬피/셀프서비스/대화창/내규',NULL,'2024-08-30 16:32:57.579459',NULL,'2024-08-30 16:34:12.856293',false,NULL),
	 (114,'CRSTT020',true,4,NULL,'헬피 업무지원챗봇 Self-Service 목록 확인 방법','업무지원챗봇 ''헬피''가 공용서비스, 사용자 단말과 보안, 내규관련 답변을 제공할 수 있다고 안내하고 있습니다.','챗봇/헬피/셀프서비스/업무지원/내규',NULL,'2024-09-02 10:57:40.050544',NULL,'2024-09-02 11:28:56.497896',false,NULL),
	 (126,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:43:15.155416',NULL,'2024-09-02 13:43:27.234374',false,NULL),
	 (120,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:28:11.448338',NULL,'2024-09-02 13:28:24.373044',false,NULL),
	 (124,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:31:51.497746',NULL,'2024-09-02 13:32:02.857391',false,NULL),
	 (116,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 Self-Service 목록 확인','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:14:34.314001',NULL,'2024-09-02 13:14:58.908866',false,NULL),
	 (122,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:29:29.251164',NULL,'2024-09-02 13:29:45.014266',false,NULL),
	 (155,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 17:57:21.560446',NULL,'2024-10-16 13:53:59.957021',false,NULL),
	 (116,'CRSTT050',false,2,4,'헬피 업무지원챗봇 사용 안내','챗봇이 사용자에게 업무지원을 제공할 수 있는 챗봇이며, 공용서비스, 사용자 단말과 보안, 내규에 관련된 답변을 제공할 수 있다고 안내하고 있습니다. 사용자가 도움이 필요한 내용을 선택하도록 안내하고 있습니다.','헬피/챗봇/셀프서비스/대화창/답변',NULL,'2024-09-02 13:14:58.88882',NULL,'2024-09-04 17:31:41.031246',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (114,'CRSTT050',false,4,1,'헬피 업무지원챗봇 안내','챗봇이 사용자에게 업무지원 서비스를 제공할 수 있는 내용을 안내하고 있습니다. 사용자가 도움이 필요한 내용을 선택하도록 안내하고 있습니다.','ITONE/내규/헬피/대화창/셀프서비스',NULL,'2024-09-02 11:28:56.476862',NULL,'2024-09-05 11:15:32.366712',false,NULL),
	 (126,'CRSTT050',false,2,1,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:43:27.214334',NULL,'2024-11-02 20:46:13.042978',false,NULL),
	 (122,'CRSTT050',false,2,1,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:29:44.984395',NULL,'2024-11-02 20:46:10.42045',false,NULL),
	 (124,'CRSTT050',false,2,1,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:32:02.838246',NULL,'2024-11-02 20:46:06.92651',false,NULL),
	 (113,'CRSTT050',true,2,NULL,'업무지원챗봇 헬피','챗봇이 사용자에게 업무지원을 제공하는 것을 안내하고, 사용자가 도움이 필요한 서비스를 선택하도록 안내하고 있습니다.','셀프서비스/대화창/헬피/업무지원챗봇/내규',NULL,'2024-09-02 10:49:07.362031',NULL,'2024-10-16 13:53:57.902849',false,NULL),
	 (152,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:31:27.38088',NULL,'2024-10-16 13:54:00.389391',false,NULL),
	 (154,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:55:17.515277',NULL,'2024-10-16 13:54:01.313133',false,NULL),
	 (120,'CRSTT050',false,2,4,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:28:24.353971',NULL,'2024-11-02 20:46:04.274625',false,NULL),
	 (110,'CRSTT050',false,2,4,'내부메신저 문의 및 사용법 관련 질문','내부메신저와 관련된 채팅 내용입니다.','메신저/그룹웨어/계정/패스워드/담당자',NULL,'2024-08-30 16:34:12.838215',NULL,'2024-09-06 09:16:18.420593',false,NULL),
	 (128,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:58:49.09784',NULL,'2024-09-02 13:58:54.213191',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (112,'CRSTT050',true,2,NULL,'헬피 사용 안내 및 서비스 선택','챗봇이 사용자에게 업무지원을 제공하는 대화입니다. 사용자가 Nice2MeetU와 핼피야~라는 단어를 입력하여 서비스를 선택하고 인사를 건넨 후, 챗봇이 자신의 역할과 도움을 제공할 수 있는 주제를 안내하며 도움을 요청하는 사용자에게 안내를 제공합니다.','헬피/내규/대화창/셀프서비스/답변',NULL,'2024-08-30 16:55:52.333135',NULL,'2024-10-16 13:53:57.338616',false,NULL),
	 (156,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 17:58:10.891445',NULL,'2024-10-16 13:53:57.413544',false,NULL),
	 (136,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 사용 안내','업무지원챗봇 ''헬피''가 공용서비스, 사용자 단말과 보안, 내규에 관련된 도움을 제공할 수 있다고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 16:38:09.933541',NULL,'2024-10-16 13:54:00.713582',false,NULL),
	 (149,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:27:07.804825',NULL,'2024-10-16 13:53:57.613206',false,NULL),
	 (148,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:25:40.574256',NULL,'2024-10-16 13:54:01.827885',false,NULL),
	 (151,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:30:57.807903',NULL,'2024-10-16 13:53:58.953009',false,NULL),
	 (142,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 17:16:24.958661',NULL,'2024-10-16 13:54:00.341754',false,NULL),
	 (144,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:16:57.028021',NULL,'2024-10-16 13:53:59.527306',false,NULL),
	 (150,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:28:27.406006',NULL,'2024-10-16 13:54:00.776031',false,NULL),
	 (141,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:16:19.655236',NULL,'2024-10-16 13:54:01.262317',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (145,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:18:06.400035',NULL,'2024-10-16 13:54:01.728241',false,NULL),
	 (137,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 사용 안내','업무지원챗봇 ''헬피''가 공용서비스, 사용자 단말과 보안, 내규에 관련된 도움을 제공할 수 있다고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 16:46:52.331065',NULL,'2024-10-16 13:54:01.020069',false,NULL),
	 (139,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 17:14:01.378384',NULL,'2024-10-16 13:54:00.872394',false,NULL),
	 (140,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 17:14:10.567712',NULL,'2024-10-16 13:54:00.825638',false,NULL),
	 (133,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 15:08:36.405226',NULL,'2024-10-16 13:54:00.090591',false,NULL),
	 (130,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 사용 안내','업무지원챗봇 ''헬피''가 공용서비스, 사용자 단말과 보안, 내규관련 답변을 제공할 수 있다고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 15:03:51.8844',NULL,'2024-10-16 13:54:01.772243',false,NULL),
	 (134,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 15:08:37.24471',NULL,'2024-10-16 13:53:59.381079',false,NULL),
	 (132,'CRSTT050',true,2,NULL,'내부 그룹웨어 비밀번호 초기화','내부 그룹웨어 비밀번호 초기화에 관한 대화입니다. 사용자가 내부 그룹웨어 비밀번호 초기화를 요청하고, 챗봇이 자기소개와 도움을 제공할 수 있는 내용을 안내하고 있습니다.','그룹웨어/비밀번호/초기화/헬피/대화창',NULL,'2024-09-03 15:08:35.807592',NULL,'2024-10-16 13:53:56.859649',false,NULL),
	 (143,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 17:16:32.563211',NULL,'2024-10-16 13:54:01.880394',false,NULL),
	 (131,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-03 15:05:52.141321',NULL,'2024-10-16 13:53:58.601517',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (138,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 공용서비스, 사용자 단말과 보안, 내규관련 답변을 제공할 수 있다고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:00:24.821394',NULL,'2024-10-16 13:53:59.075812',false,NULL),
	 (147,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:25:02.356672',NULL,'2024-10-16 13:53:58.171503',false,NULL),
	 (153,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:55:05.016747',NULL,'2024-10-16 13:53:58.111876',false,NULL),
	 (135,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 사용 안내','업무지원챗봇 ''헬피''가 공용서비스, 사용자 단말과 보안, 내규에 관련된 도움을 제공할 수 있다고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 16:37:28.186566',NULL,'2024-10-16 13:53:57.49359',false,NULL),
	 (146,'CRSTT050',true,2,NULL,'헬피 업무지원 챗봇 사용 안내','업무지원챗봇 ''헬피''가 사용자에게 도움을 제공할 수 있는 범위에 대한 안내입니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-03 17:21:22.807389',NULL,'2024-10-16 13:53:56.621822',false,NULL),
	 (165,'CRSTT050',false,2,4,'ITONE 비밀번호 초기화','사용자가 ITONE 및 내규와 관련된 정보를 문의하고, 데이터고에서 비밀글로 등록할 수 있는지에 대해 물었습니다.','ITONE/구성항목관리/데이터고/비밀글/등록',NULL,'2024-09-04 11:24:13.247529',NULL,'2024-11-02 20:45:42.814375',false,NULL),
	 (256,'CRSTT050',true,2,NULL,'ITONE','ITONE 서비스에 대한 선택을 요청하는 대화입니다. 사용자가 ITONE을 선택하고 챗봇이 다양한 서비스를 제공하는 메시지를 보내는 상황입니다.','ITONE/내부메일/내부메신저/IT부문 및 정보보안 담당자/외부그룹웨어',NULL,'2024-09-26 14:57:39.73276',NULL,'2024-10-16 13:54:01.568349',false,'COM_itone'),
	 (174,'CRSTT050',true,4,NULL,'New Chat','New Chat','',NULL,'2024-09-05 17:36:31.293',NULL,'2024-10-16 13:53:59.253249',false,NULL),
	 (160,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-04 10:40:05.085382',NULL,'2024-10-16 13:53:58.418466',false,NULL),
	 (158,'CRSTT050',false,2,4,'헬피 업무지원챗봇','사용자가 챗봇과의 대화를 시작하면서 서비스 선택을 요청하는 상황입니다. 사용자는 챗봇에게 서비스 선택을 요청하고, 챗봇은 자신의 역할과 도움을 제안합니다. 사용자는 더 자세한 정보나 도움을 요청할 수 있습니다.','헬피/대화창/셀프서비스/챗봇/업무',NULL,'2024-09-04 11:16:10.330693',NULL,'2024-11-02 20:45:22.244919',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (169,'CRSTT050',true,4,NULL,'ITONE','사용자가 Datago 서비스에 대해 문의하고, 챗봇이 업무지원챗봇 헬피로 소개하며 공용서비스, 사용자 단말과 보안, 내규관련 답변을 제공할 수 있다고 안내하는 대화입니다.','Nice2MeetU/동호회/동호회 만들기/내부그룹웨어/Datago',NULL,'2024-09-05 11:29:55.675709',NULL,'2024-10-16 13:53:57.006833',false,NULL),
	 (179,'CRSTT050',false,2,4,'내규','챗봇이 사용자에게 서비스 선택을 요청하고, 사용자가 ''2''를 선택하여 내규에 관한 도움을 요청했습니다.','챗봇/서비스/사용자/보안/내규',NULL,'2024-09-06 10:11:33.358179',NULL,'2024-11-02 20:45:39.388081',false,NULL),
	 (157,'CRSTT050',true,2,NULL,'aqeres','사용자가 챗봇을 통해 서비스를 선택하는 과정 중에 발생한 대화입니다. 사용자가 aqeres를 입력하여 서비스를 선택하려고 시도하고 있습니다.','aqeres/내부메신저/헬피/대화창/셀프서비스',NULL,'2024-09-03 18:01:02.351579',NULL,'2024-10-16 13:54:00.495302',false,NULL),
	 (176,'CRSTT020',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-06 09:28:23.063611',NULL,'2024-09-06 09:28:28.088183',false,NULL),
	 (158,'CRSTT020',true,2,NULL,'헬피 업무지원챗봇 Self-Service 목록 확인','챗봇이 사용자에게 업무지원을 제공하는 것을 안내하고 있습니다. 사용자는 챗봇을 통해 공용서비스, 사용자 단말과 보안, 내규에 관련된 답변을 받을 수 있습니다. 사용자가 도움이 필요한 내용을 선택하도록 안내하고 있습니다.','서비스/챗봇/대화창/셀프서비스/목록',NULL,'2024-09-04 10:34:05.967971',NULL,'2024-09-04 11:16:10.926153',false,NULL),
	 (165,'CRSTT020',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-04 11:00:28.773022',NULL,'2024-09-04 11:24:13.27351',false,NULL),
	 (163,'CRSTT020',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-04 10:59:49.190157',NULL,'2024-09-04 11:25:02.930196',false,NULL),
	 (164,'CRSTT050',true,2,NULL,'ITONE 접속방법 안내','ITONE 및 다른 서비스에 대한 접속 방법과 서비스 선택에 관한 대화입니다.','접속방법/서비스관리/서비스카탈로그관리/IT서비스/내부메신저',NULL,'2024-09-04 11:00:04.110001',NULL,'2024-09-04 14:42:09.138917',false,NULL),
	 (170,'CRSTT050',false,4,1,'New Chat','New Chat','',NULL,'2024-09-05 11:31:24.762868',NULL,'2024-11-02 21:45:31.79686',false,NULL),
	 (159,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-04 10:35:04.575182',NULL,'2024-10-16 13:54:01.208055',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (179,'CRSTT020',true,2,NULL,'내규','챗봇이 사용자에게 업무지원을 제공할 수 있는 서비스를 안내하고, 사용자가 내규에 대한 도움을 요청했습니다.','내규/보안/답변/대화창/셀프서비스',NULL,'2024-09-06 10:11:21.249694',NULL,'2024-09-06 10:11:34.648588',false,NULL),
	 (170,'CRSTT020',true,4,NULL,'New Chat','New Chat','',NULL,'2024-09-05 11:31:03.262934',NULL,'2024-09-05 11:31:24.784603',false,NULL),
	 (128,'CRSTT050',false,2,1,'헬피 업무지원챗봇 사용 안내','챗봇이 업무지원을 제공할 수 있는 공용서비스, 사용자 단말과 보안, 내규 관련 질문에 답변할 수 있다고 안내하고 있습니다. Self-service 목록을 확인하려면 대화창에 ''#''을 입력하라고 안내하고 있습니다.','챗봇/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-02 13:58:54.197716',NULL,'2024-11-02 20:46:15.527752',false,NULL),
	 (172,'CRSTT020',true,4,NULL,'New Chat','New Chat','',NULL,'2024-09-05 16:48:54.583112',NULL,'2024-09-05 17:00:46.001078',false,NULL),
	 (172,'CRSTT050',false,4,NULL,'New Chat','New Chat','',NULL,'2024-09-05 17:00:45.954538',NULL,'2024-09-05 17:07:07.466573',false,NULL),
	 (161,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-04 10:41:26.652154',NULL,'2024-10-16 13:53:57.79016',false,NULL),
	 (176,'CRSTT050',false,2,4,'New Chat','New Chat','',NULL,'2024-09-06 09:28:28.069274',NULL,'2024-11-02 20:46:00.914548',false,NULL),
	 (163,'CRSTT050',false,2,1,'알리미 설치 방법 안내','알리미 설치 방법에 대한 문의입니다.','알리미/설치/방법/헬피/대화창',NULL,'2024-09-04 11:25:02.906376',NULL,'2024-11-02 21:45:28.64176',false,NULL),
	 (178,'CRSTT020',true,2,NULL,'Nice2MeetU','챗봇이 사용자에게 업무지원을 제공하는 것을 안내하고, 사용자가 선택한 서비스에 대한 안내를 요청하고 있습니다.','내규/헬피/대화창/셀프서비스/답변',NULL,'2024-09-06 10:11:16.079656',NULL,'2024-09-06 10:11:27.704341',false,NULL),
	 (178,'CRSTT050',false,2,4,'Nice2MeetU, 내규, 원스톱CUE','챗봇이 사용자에게 업무지원을 제공할 수 있는 서비스를 선택하도록 안내하고 있습니다. 사용자가 선택한 서비스에 따라 업무지원을 제공할 준비가 되어 있다는 메시지를 전달하고 있습니다. 사용자가 도움이 필요한 내용을 선택하도록 안내하고 있습니다.','원스톱CUE/내규/헬피/대화창/셀프서비스',NULL,'2024-09-06 10:11:27.681578',NULL,'2024-11-02 20:44:41.281191',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (183,'CRSTT020',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-06 10:23:08.192074',NULL,'2024-09-06 10:23:16.583087',false,NULL),
	 (182,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-06 10:22:15.947823',NULL,'2024-10-16 13:54:01.61961',false,NULL),
	 (162,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-04 10:57:54.887318',NULL,'2024-10-16 13:53:56.735924',false,NULL),
	 (118,'CRSTT050',false,2,1,'헬피 업무지원챗봇 안내','챗봇이 업무지원을 위해 사용자에게 안내하고 도움을 주는 대화입니다.','챗봇/헬피/셀프서비스/대화창/내규관련',NULL,'2024-09-02 13:20:44.632985',NULL,'2024-11-02 20:46:18.179503',false,NULL),
	 (199,'CRSTT020',true,2,NULL,'메일 첨부파일 용량 제한 관련 안내','이메일 첨부 파일의 용량 제한에 대한 질문입니다.','첨부/용량제한/메일/서버/전송',NULL,'2024-09-10 14:56:47.658466',NULL,'2024-09-11 15:02:28.711239',false,NULL),
	 (197,'CRSTT020',true,2,NULL,'ITONE 비밀번호 초기화','ITONE에 대한 서비스 접속 방법에 대한 안내입니다.','ITONE/서비스/전산구매/담당자/헬피',NULL,'2024-09-10 14:15:36.344927',NULL,'2024-09-11 15:02:20.004721',false,NULL),
	 (198,'CRSTT050',true,2,NULL,'SAP 담당자 문의하기','SAP 담당자 문의에 대한 챗봇의 응답입니다.','담당자/헬피/대화창/셀프서비스/목록',NULL,'2024-09-10 14:19:38.491847',NULL,'2024-10-16 13:53:58.672101',false,NULL),
	 (197,'CRSTT050',false,2,4,'ITONE 비밀번호 초기화','ITONE에 대한 서비스 접속 방법에 대한 안내입니다.','ITONE/서비스/전산구매/담당자/헬피',NULL,'2024-09-11 15:02:20.296145',NULL,'2024-11-02 20:45:08.639759',false,NULL),
	 (192,'CRSTT050',true,2,NULL,'ITONE, CB, IT부문, 정보보안, NPay스코어, 서비스별담당자3 관련 문의','내부그룹웨어에서 전자결재 상태를 확인하고자 하는 사용자와 챗봇 간의 대화입니다.','내부그룹웨어/전자결재/결재진행/결재선/담당자',NULL,'2024-09-10 09:43:19.047426',NULL,'2024-10-16 13:53:56.934646',false,NULL),
	 (191,'CRSTT020',true,2,NULL,'화상회의 시스템 문의 및 담당자 안내','사용자가 서비스 관련 문의를 하고, 챗봇이 해당 서비스의 담당자 및 안내를 제공하는 대화입니다. 사용자는 화상회의 시스템과 데이터고에 대한 문의를 하며, 챗봇은 각각의 시스템에 대한 접속 방법과 안내를 제공합니다.','화상회의/서비스운영실/최석진/결재선/데이터고',NULL,'2024-09-10 09:18:16.485849',NULL,'2024-09-11 15:02:33.788821',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (188,'CRSTT050',true,2,NULL,'내부그룹웨어와 Datago 시스템 접속 안내','내부그룹웨어와 Datago 시스템에 대한 접속 방법과 담당자 정보에 대한 문의입니다.','내부그룹웨어/그룹웨어/Datago/데이터고/nice bizline',NULL,'2024-09-09 19:01:00.128162',NULL,'2024-10-16 13:53:57.84906',false,NULL),
	 (189,'CRSTT050',true,2,NULL,'내부그룹웨어 접속방법과 URL 확인 방법 관련 안내','내부그룹웨어 접속 URL을 알려주는 질문에 대한 답변을 요청하는 대화입니다.','내부그룹웨어/접속/URL/내부망/IT',NULL,'2024-09-09 19:10:09.357062',NULL,'2024-10-16 13:53:57.675815',false,NULL),
	 (186,'CRSTT050',true,4,NULL,'New Chat','New Chat','',NULL,'2024-09-09 11:13:32.550678',NULL,'2024-10-16 13:54:01.47891',false,NULL),
	 (190,'CRSTT050',true,2,NULL,'내부그룹웨어 접속 URL 확인 방법','외부그룹웨어와 내부그룹웨어의 접속 URL 확인 방법에 대한 질문과 답변입니다.','내부그룹웨어/외부그룹웨어/접속 URL/업무지원챗봇/셀프서비스',NULL,'2024-09-09 19:16:09.326631',NULL,'2024-10-16 13:53:56.679872',false,NULL),
	 (200,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-11 14:27:28.409968',NULL,'2024-09-11 14:27:51.148727',false,NULL),
	 (252,'CRSTT050',true,2,NULL,'NICE플래닛','NICE플래닛 서비스 선택과 내부 그룹웨어 비밀번호 초기화에 관한 대화입니다.','NICE플래닛/내부그룹웨어/비밀번호/초기화/내규',NULL,'2024-09-25 14:46:34.37855',NULL,'2024-10-16 13:53:59.687728',false,'COM_planet'),
	 (187,'CRSTT050',true,2,NULL,'그룹웨어 접속 방법 알려줘','그룹웨어 접속 방법에 대한 안내와 함께 급여 관련 문의를 송치민에게 하라는 안내입니다.','내부그룹웨어/그룹웨어/접속방법/외부그룹웨어/데이터고',NULL,'2024-09-09 14:48:06.956376',NULL,'2024-10-16 13:53:58.347554',false,NULL),
	 (194,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 서비스 안내','사용자가 챗봇에게 안부를 묻고, 챗봇이 자기소개와 도와줄 수 있는 서비스를 안내하는 대화입니다.','내규/ITONE/내부메신저/헬피/대화창',NULL,'2024-09-10 13:55:06.614939',NULL,'2024-10-16 13:54:00.292368',false,NULL),
	 (193,'CRSTT050',true,2,NULL,'IT부문, 정보보안 담당자 정보 확인','IT부문의 업무 담당자 정보를 확인하고자 하는 대화입니다. 사용자가 IT부문의 담당자를 알고 싶어하는 질문을 하면 챗봇이 해당 정보를 제공하려고 하지만 파일 디렉토리 오류로 인해 정보를 제공하지 못하는 상황이 발생했습니다.','IT부문/정보보안/담당자/경영지원/인사',NULL,'2024-09-10 13:51:08.48278',NULL,'2024-10-16 13:54:00.920267',false,NULL),
	 (196,'CRSTT020',true,2,NULL,'IT전략기획 담당자 정보 제공','IT전략기획 담당자 정보를 요청하는 대화입니다.','IT전략기획/헬피/대화창/셀프서비스/답변',NULL,'2024-09-10 14:07:27.277948',NULL,'2024-09-11 15:02:38.651607',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (191,'CRSTT050',false,2,1,'화상회의 시스템 문의 및 담당자 안내','사용자가 서비스 관련 문의를 하고, 챗봇이 해당 서비스의 담당자 및 안내를 제공하는 대화입니다. 사용자는 화상회의 시스템과 데이터고에 대한 문의를 하며, 챗봇은 각각의 시스템에 대한 접속 방법과 안내를 제공합니다.','서비스운영실/화상회의/결재선/데이터고/그룹웨어',NULL,'2024-09-11 15:02:33.767783',NULL,'2024-11-02 20:45:55.549699',false,NULL),
	 (196,'CRSTT050',false,2,4,'IT전략기획 담당자 정보 요청','IT전략기획 담당자 정보를 요청하는 대화입니다.','IT전략기획/헬피/대화창/셀프서비스/답변',NULL,'2024-09-11 15:02:38.632513',NULL,'2024-11-02 20:45:18.968849',false,NULL),
	 (197,'CRSTT050',false,2,1,'ITONE 비밀번호 초기화','ITONE에 대한 서비스 접속 방법에 대한 안내입니다.','ITONE/서비스/전산구매/담당자/헬피',NULL,'2024-09-11 15:02:19.982307',NULL,'2024-11-02 20:45:58.401771',false,NULL),
	 (199,'CRSTT050',false,2,4,'메일 첨부파일 용량 제한 관련 안내','이메일 첨부 파일의 용량 제한에 대한 질문입니다.','첨부/용량제한/메일/서버/전송',NULL,'2024-09-11 15:02:28.693451',NULL,'2024-11-02 22:00:55.62734',false,NULL),
	 (309,'CRSTT010',true,6,NULL,'ITONE 비밀번호 초기화','CB부문으로 변경하는 과정에 대한 대화입니다. 사용자가 CB부문으로 변경하고자 하며, 챗봇은 사용자에게 원하는 서비스를 선택하도록 안내하고 있습니다. 사용자는 챗봇과의 대화를 통해 CB부문 담당자로 변경하고자 하는 의사를 전달하고 있습니다.','IT부문/경영지원/내부그룹웨어/관제/기업부문',NULL,'2025-02-24 17:21:52.812613',NULL,'2025-02-26 15:33:12.970102',false,'COM_manager4'),
	 (185,'CRSTT020',true,4,NULL,'내부그룹웨어에서 SAP에 접속이 안 되는 경우, IT 담당자에게 문의하여 도움을 받는 것이 좋습니다.','내부그룹웨어와 관련된 서비스 및 문제 해결 방법에 대한 질문과 답변입니다.','내부그룹웨어/휴게실/전자결재/SAP/IT팀',NULL,'2024-09-09 10:44:27.597828',NULL,'2024-10-10 14:09:13.251396',false,NULL),
	 (195,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 서비스 안내','사용자가 챗봇에게 안부를 묻고, 챗봇이 자기소개와 도와줄 수 있는 서비스를 안내하는 대화입니다.','내규/ITONE/내부메신저/헬피/대화창',NULL,'2024-09-10 13:59:22.36899',NULL,'2024-10-16 13:54:00.166225',false,NULL),
	 (175,'CRSTT050',true,1,NULL,'IT부문 및 정보보안 담당자','IT부문 및 정보보안 업무 담당자 목록 중 궁금한 부분이 있는 사용자와 챗봇 간의 대화입니다. 사용자가 IT부문 및 정보보안 업무 담당자 목록을 선택하고, 챗봇이 업무지원을 제공할 수 있다고 안내하는 내용이 포함되어 있습니다.','IT부문/정보/담당자/서비스/서비스 서비서',NULL,'2024-09-05 17:59:11.167036',NULL,'2024-10-15 16:05:50.79382',false,NULL),
	 (209,'CRSTT020',true,2,NULL,'IT부문 및 정보보안 담당자','IT 부문 및 정보보안 담당자에 대한 문의입니다.','IT부문/정보/담당자/경영지원/서비스',NULL,'2024-09-23 14:24:09.996274',NULL,'2024-09-23 15:17:00.787684',false,NULL),
	 (214,'CRSTT050',true,2,NULL,'ITONE 데이터 이관 방법','사용자가 알리미 설치 방법에 대해 여러 번 질문하고, 챗봇이 사용자의 의도를 분석하여 정확한 질문으로 재구성하려고 시도하는 대화입니다. 최종적으로 사용자가 알리미 설치 방법을 물었고, 챗봇은 자기소개를 하며 도움을 줄 수 있는 내용을 안내하고 있습니다.','설치방법/알리미/헬피/대화창/셀프서비스',NULL,'2024-09-23 17:43:17.561985',NULL,'2024-10-16 13:53:58.232415',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (206,'CRSTT020',true,1,NULL,'동호회 지원에 관한 세부사항을 정하여 동호회의 효율적 활동 및 관리의 합리화를 기함을 목적으로 함.','내부그룹웨어와 관련된 도움을 받았다는 대화입니다. 사용자가 내규에 대해 물어보고, 챗봇이 해당 서비스를 선택하도록 안내하는 과정이 포함되어 있습니다. 사용자가 감사의 말을 전하면 챗봇이 자기소개와 도움을 줄 수 있는 내용을 안내합니다.','내부그룹웨어/내규/헬피/셀프서비스/대화창',NULL,'2024-09-20 16:35:45.536727',NULL,'2024-09-20 16:59:14.419858',false,NULL),
	 (218,'CRSTT050',true,2,NULL,'동호회 운영지침','동호회 운영지침에 대한 사용자의 질문에 대한 답변과 함께, 챗봇이 사용자에게 다양한 서비스를 선택하라는 안내를 제공하고 있는 대화입니다.','동호회 운영지침/ITONE/내부그룹웨어/내부메일/내부메신저',NULL,'2024-09-23 20:24:14.673098',NULL,'2024-10-16 13:54:01.431167',false,NULL),
	 (211,'CRSTT020',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-23 15:39:46.835266',NULL,'2024-09-23 15:40:13.911802',false,NULL),
	 (215,'CRSTT050',true,2,NULL,'결재선 지정 방법 알려주세요','챗봇을 통해 서비스 이용 방법에 대한 질문과 오류 발생 상황에 대한 대화입니다. 사용자가 다양한 서비스에 대한 안내를 요청하고 있습니다.','결재선/의뢰서/저장/부서/제출',NULL,'2024-09-23 18:21:46.490938',NULL,'2024-10-16 13:54:01.669069',false,NULL),
	 (221,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-23 22:05:49.688625',NULL,'2024-10-16 13:53:59.832779',false,NULL),
	 (226,'CRSTT050',true,2,NULL,'내부메일','내부메일 서비스에 대한 질문입니다.','내부메일/ITONE/챗봇/대화창/셀프서비스',NULL,'2024-09-23 22:48:30.583257',NULL,'2024-10-16 13:53:58.288487',false,NULL),
	 (254,'CRSTT050',true,2,NULL,'NICE플래닛에서 스페이스 키를 입력하는 이유','NICE플래닛에서 서비스 선택하는 과정과 테스트 진행 방법에 대한 대화입니다.','NICE플래닛/스페이스 키/테스트/외부메일/ITONE',NULL,'2024-09-26 13:58:27.441393',NULL,'2024-10-16 13:54:00.973324',false,'COM_planet'),
	 (211,'CRSTT050',false,2,1,'New Chat','New Chat','',NULL,'2024-09-23 15:40:13.891421',NULL,'2024-11-02 20:45:51.656018',false,NULL),
	 (220,'CRSTT050',true,2,NULL,'ITONE 로그인 오류 해결 방법','로그인 오류에 대한 ITONE 서비스 문제 해결 방법에 대한 대화입니다. 사용자가 로그인 오류를 겪고 있어서 챗봇에 도움을 요청하고 있습니다. 챗봇은 사용자에게 네트워크 연결 확인, 정확한 아이디와 비밀번호 입력, 비밀번호 초기화 방법 등을 안내하고 있습니다.','ITONE/로그인 오류/비밀번호/네트워크 연결/임시 비밀번호',NULL,'2024-09-23 21:16:53.214276',NULL,'2024-10-16 13:53:59.482368',false,NULL),
	 (213,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 사용 안내','챗봇이 사용자에게 업무지원을 제공하는 대화입니다. 사용자가 알리미 설치 방법을 물어보고, 챗봇이 자신의 역할과 도움을 제공할 수 있는 내용을 안내하고 있습니다.','알리미/설치/방법/헬피/대화창',NULL,'2024-09-23 17:33:16.029415',NULL,'2024-10-16 13:53:59.322134',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (223,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-23 22:11:26.38184',NULL,'2024-10-16 13:53:59.571476',false,NULL),
	 (208,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-23 13:24:24.357452',NULL,'2024-10-16 13:54:01.113512',false,NULL),
	 (224,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-23 22:13:54.847766',NULL,'2024-10-16 13:54:00.447426',false,NULL),
	 (217,'CRSTT050',true,2,NULL,'결재선 지정 방법 알려줘','사용자가 결재선을 지정하는 방법을 문의하고, 챗봇이 해당 서비스에 대한 안내를 제공하는 대화입니다.','원스톱CUE/내부그룹웨어/내부메일/내부메신저/ITONE',NULL,'2024-09-23 20:22:24.599033',NULL,'2024-10-16 13:54:01.1598',false,NULL),
	 (216,'CRSTT050',true,2,NULL,'ITONE 결재선 지정 방법','챗봇을 통해 사용자가 결재선을 지정하는 방법을 문의하고, 이어서 Datago 서비스에 관련된 문제를 질의한 대화 내용입니다. 사용자는 결재선 지정 방법을 다시 문의하며, 챗봇은 업무지원을 제공하는 헬피 챗봇임을 안내하고 도움을 요청하는 상황입니다.','서비스/결재선/지정/챗봇/셀프서비스',NULL,'2024-09-23 20:16:17.095191',NULL,'2024-10-16 13:53:59.18173',false,NULL),
	 (225,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-23 22:17:14.920931',NULL,'2024-10-16 13:53:59.019854',false,NULL),
	 (219,'CRSTT050',true,2,NULL,'로그인 오류가 발생했나요?','로그인 오류에 대한 도움을 요청하는 대화입니다.','로그인/오류/헬피/대화창/셀프서비스',NULL,'2024-09-23 21:12:02.545432',NULL,'2024-10-16 13:53:59.621771',false,NULL),
	 (209,'CRSTT050',false,2,4,'IT부문 및 정보보안 담당자','IT 부문 및 정보보안 담당자에 대한 문의입니다.','IT부문/정보/담당자/경영지원/서비스',NULL,'2024-09-23 15:17:00.770128',NULL,'2024-11-02 20:46:39.175189',false,NULL),
	 (312,'CRSTT010',true,6,NULL,'App통합계정관리','앱 통합 계정 관리에 대한 문의입니다.','ITONE/내부메일/외부그룹웨어/내부메신저/외부메일',NULL,'2025-02-26 15:44:23.003694',NULL,'2025-02-26 16:09:07.729476',false,''),
	 (222,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-23 22:06:16.17219',NULL,'2024-10-16 13:54:00.596416',false,NULL);
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (251,'CRSTT050',true,2,NULL,'내부 그룹웨어 비밀번호 초기화','내부 그룹웨어 비밀번호 초기화에 관한 문의입니다.','비밀번호/초기화/그룹웨어/업무지원챗봇/내부',NULL,'2024-09-25 14:45:30.155566',NULL,'2024-10-16 13:53:58.731654',false,''),
	 (242,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-24 21:17:26.570905',NULL,'2024-11-02 20:45:33.046487',false,''),
	 (227,'CRSTT050',true,2,NULL,'ITONE','내부메일에서 로그인에 문제가 발생하여 챗봇에 도움을 요청하는 대화입니다.','내부메일/로그인/초기화/오류/해결',NULL,'2024-09-23 22:49:27.496432',NULL,'2024-10-16 13:53:57.551602',false,NULL),
	 (238,'CRSTT050',true,2,NULL,'ITONE','ITONE 서비스에 대한 문의입니다.','ITONE/내부그룹웨어/외부메일/내규/IT부문 및 정보보안 담당자',NULL,'2024-09-24 20:44:49.975741',NULL,'2024-10-16 13:53:57.211666',false,'COM_itone'),
	 (247,'CRSTT050',true,2,NULL,'내규','사용자가 챗봇에게 ''내규''에 대한 정보를 요청하고, 챗봇은 다른 서비스와 관련된 정보만을 제공할 수 있다고 답변합니다. 사용자는 계속해서 ''내규''에 대한 정보를 요청하며, 챗봇은 다양한 서비스 중에서 선택하라는 안내를 제공합니다.','내규/관제/서비스/궁금한 점/기능',NULL,'2024-09-24 22:19:54.759383',NULL,'2024-10-16 13:54:00.653626',false,'LAW'),
	 (241,'CRSTT050',true,2,NULL,'내부그룹웨어 사용 안내','내부그룹웨어에 대한 업무지원 챗봇 헬피와의 대화입니다.','내부그룹웨어/업무지원챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-24 21:11:58.195498',NULL,'2024-10-16 13:53:59.749764',false,'COM_ingw'),
	 (235,'CRSTT050',true,2,NULL,'관제','챗봇이 사용자에게 서비스를 선택하라는 안내를 하고, 사용자가 ''관제''를 선택했습니다. 사용자가 ''안녕?''이라고 입력하면 챗봇이 자기소개를 하고 도움을 줄 수 있는 내용을 안내합니다.','관제/서비스/챗봇/헬피/셀프서비스',NULL,'2024-09-24 20:35:38.341449',NULL,'2024-10-16 13:53:57.734597',false,'COM_totalmon'),
	 (246,'CRSTT050',true,2,NULL,'내규','사용자가 챗봇에게 인사를 하고, 외부그룹웨어, 내부그룹웨어, 내규 등 다양한 주제로 대화를 시도하고 있습니다. 사용자는 챗봇에게 도움을 요청하고 있습니다.','외부그룹웨어/내부그룹웨어/내규/헬피/대화창',NULL,'2024-09-24 21:42:06.790227',NULL,'2024-10-16 13:54:00.226712',false,'COM_exgw'),
	 (232,'CRSTT050',true,2,NULL,'ITONE','경영지원 담당자의 연락처 및 업무 분야에 대한 안내와 사용자가 챗봇에게 서비스 선택을 요청하는 대화입니다. 사용자가 챗봇에게 안녕?이라는 인사를 건넨 후, 챗봇이 자기소개와 도움을 줄 수 있는 내용을 안내하는 대화입니다.','경영지원/인사/인력/복리후생/급여',NULL,'2024-09-24 18:37:57.587951',NULL,'2024-10-16 13:53:58.537364',false,'COM_manager1'),
	 (237,'CRSTT050',true,2,NULL,'ITONE','사용자가 챗봇에게 안부를 묻고, 챗봇이 자신을 소개하며 업무지원과 관련된 도움을 제공할 수 있다고 안내하는 대화입니다.','ITONE/내부그룹웨어/내규/외부그룹웨어/내부메일',NULL,'2024-09-24 20:40:07.712321',NULL,'2024-10-16 13:53:57.079681',false,'COM_totalmon');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (240,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 안내','사용자가 챗봇에게 인사를 건넨 후, 챗봇이 자신을 소개하며 업무지원을 제공할 수 있는 내용을 설명하는 대화입니다.','업무지원챗봇/헬피/셀프서비스/대화창/보안',NULL,'2024-09-24 21:06:50.194582',NULL,'2024-10-16 13:53:58.047174',false,'"N/A"'),
	 (243,'CRSTT050',true,2,NULL,'외부 그룹웨어 동호회 만들기 방법','외부 그룹웨어와 관련된 비밀번호 초기화와 내부규정에 따른 동호회 만들기 방법에 대한 문의입니다.','그룹웨어/비밀번호/초기화/동호회/내규',NULL,'2024-09-24 21:17:58.28125',NULL,'2024-11-02 20:45:29.569992',false,'COM_exgw'),
	 (228,'CRSTT050',true,2,NULL,'로그인이 왜 안되는지 원인과 해결방법을 알려주세요.','로그인에 관한 문제를 해결하기 위해 사용자가 챗봇에게 도움을 요청하는 대화입니다.','로그인/서비스/업무지원챗봇/보안/셀프서비스',NULL,'2024-09-24 11:04:36.165818',NULL,'2024-10-16 13:54:01.927567',false,'service_cd'),
	 (239,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-24 21:01:19.12778',NULL,'2024-11-02 20:45:36.538698',false,NULL),
	 (236,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-24 20:37:02.516944',NULL,'2024-10-16 13:53:57.270616',false,NULL),
	 (250,'CRSTT050',true,2,NULL,'내부 그룹웨어 비밀번호 초기화','내부 그룹웨어 비밀번호 초기화에 대한 도움을 요청하는 대화입니다.','내부그룹웨어/비밀번호/초기화/헬피/셀프서비스',NULL,'2024-09-25 14:35:07.317897',NULL,'2024-10-16 13:54:01.380527',false,''),
	 (231,'CRSTT050',true,2,NULL,'동호회 회원 가입 안내','동호회 가입 방법에 대한 질문과 챗봇 오류로 인한 대화입니다.','동호회/가입/신청서/회장/회비',NULL,'2024-09-24 18:34:21.364866',NULL,'2024-10-16 13:53:59.902676',false,'"N/A"'),
	 (244,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-24 21:36:21.724309',NULL,'2024-10-16 13:53:58.477292',false,NULL),
	 (230,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 사용 안내','사용자가 챗봇에게 인사를 건네고, 챗봇이 자기소개와 도움을 줄 수 있는 내용을 안내하는 대화입니다.','챗봇/헬피/대화창/셀프서비스/목록',NULL,'2024-09-24 18:31:54.502344',NULL,'2024-10-16 13:54:00.544703',false,'"N/A"'),
	 (245,'CRSTT050',true,2,NULL,'헬피 업무지원챗봇 안내','사용자가 챗봇에게 자기 소개를 요청한 것입니다.','사용자/챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-24 21:36:26.70518',NULL,'2024-10-16 13:53:59.128623',false,'COM_datago');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (233,'CRSTT050',true,2,NULL,'내부그룹웨어','내부그룹웨어와 관련된 기능 및 문제 해결 방법에 대한 질문과 답변입니다.','내부그룹웨어/원스톱CUE/내부메일/ITONE/내규',NULL,'2024-09-24 18:39:03.188728',NULL,'2024-10-16 13:53:59.437357',false,'COM_ingw'),
	 (248,'CRSTT050',true,2,NULL,'내규','사용자가 챗봇에게 내규에 대해 질문하는 대화입니다. 사용자가 원하는 서비스를 선택하도록 안내받고, 챗봇은 자신이 알고 있는 정보와 서비스에 대해 설명하며 도움을 제안합니다.','내규/챗봇/헬피/셀프서비스/대화창',NULL,'2024-09-24 23:36:36.809269',NULL,'2024-10-16 13:54:01.06858',false,'COM_inmail'),
	 (234,'CRSTT050',true,2,NULL,'로그인 문제 해결 방법 안내','로그인에 문제가 있는 사용자가 챗봇에게 도움을 요청하는 대화입니다. 사용자는 로그인이 안된다고 말하고, 챗봇은 로그인 문제 해결을 위해 다양한 단계를 안내하고 있습니다. 사용자는 계속해서 로그인 문제를 겪고 있어서 챗봇에게 도움을 요청하고 있습니다.','로그인/인터넷 연결/아이디와 비밀번호/캐시 및 쿠키/IT 부서',NULL,'2024-09-24 18:45:11.500364',NULL,'2024-10-16 13:54:01.523675',false,'COM_inmsg'),
	 (249,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-25 14:34:46.374872',NULL,'2024-10-16 13:53:58.812164',false,''),
	 (253,'CRSTT020',true,2,NULL,'비밀번호 초기화','내부메신저와 내규에 대한 서비스 선택을 요청하는 대화입니다. 사용자가 ITSM에서 비밀번호 초기화를 원하는 내용을 질문하고, 챗봇이 업무지원을 제공할 수 있는 서비스를 안내하는 대화입니다.','내부메신저/내규/ITONE/비밀번호/초기화',NULL,'2024-09-25 14:48:00.943892',NULL,'2024-09-30 13:54:46.944054',false,'COM_inmsg'),
	 (206,'CRSTT050',false,1,2,'내부그룹웨어를 통해 도움을 받았다니 다행입니다.','챗봇과 사용자 사이의 대화 내용 중 챗봇이 내부그룹웨어를 통해 도움을 받았다고 언급하고, 사용자가 내부그룹웨어와 관련된 정보를 요청하는 대화입니다.','내부그룹웨어/내규/헬피/셀프서비스/도움',NULL,'2024-09-20 16:59:14.378855',NULL,'2024-10-16 17:04:43.935041',false,NULL),
	 (272,'CRSTT050',true,1,NULL,'New Chat','New Chat','',NULL,'2024-10-16 17:20:08.437179',NULL,'2024-10-16 17:21:18.704016',false,'COM_datago'),
	 (260,'CRSTT020',true,2,NULL,'ITONE','그룹웨어와 관련된 사용자의 질문과 챗봇의 답변에 대한 대화입니다. 사용자가 내부메신저에 접속하는 방법을 물어보고, 챗봇이 해당 접속 방법을 안내하는 과정이 포함되어 있습니다.','그룹웨어/메신저/내부그룹웨어/ITONE/내규',NULL,'2024-10-08 17:59:16.572796',NULL,'2024-10-10 09:21:22.273963',false,'LAW'),
	 (265,'CRSTT020',true,4,NULL,'New Chat','New Chat','',NULL,'2024-10-10 14:10:20.993409',NULL,'2024-10-10 14:10:35.425616',false,''),
	 (267,'CRSTT050',true,1,NULL,'동호회를 만들고 싶어','사용자가 동호회를 만들고 싶어 한 것에 대해 챗봇이 동호회를 만드는 방법을 안내하고, 그 후 사용자가 챗봇을 만든 사람에 대해 물었지만 챗봇이 오류로 응답하는 대화입니다.','동호회/만들기/플래닛/로그인/공간',NULL,'2024-10-14 15:28:18.170512',NULL,'2024-10-16 17:04:52.261504',false,'COM_planet');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (260,'CRSTT050',false,2,4,'그룹웨어 관련 도움이 필요한 사용자','그룹웨어와 관련된 질문과 동호회 가입 방법에 대한 대화입니다. 사용자가 그룹웨어 접속 방법과 내부메신저 사용 방법에 대해 물었고, 챗봇이 관련 정보를 안내하고 도움을 제안하는 대화가 진행되었습니다.','그룹웨어/메신저/가입/접속/내부그룹웨어',NULL,'2024-10-10 09:21:22.223807',NULL,'2024-11-02 20:46:24.830295',false,NULL),
	 (270,'CRSTT050',true,1,NULL,'New Chat','New Chat','',NULL,'2024-10-16 17:13:53.458562',NULL,'2024-10-16 17:16:35.258089',false,'COM_itone'),
	 (258,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-09-28 18:16:42.995703',NULL,'2024-10-16 13:53:56.802552',false,''),
	 (262,'CRSTT050',true,4,NULL,'ITONE 선택 후 테스트 요청','ITONE 서비스에 대한 테스트 요청과 관련된 대화입니다. 사용자가 ITONE 서비스를 선택하고 테스트할 내용을 물어보는 중입니다. 사용자가 테스트할 내용을 자세히 알려주기 위해 대화가 진행되고 있습니다.','ITONE/테스트/서비스/대화창/셀프서비스',NULL,'2024-10-10 09:43:28.336713',NULL,'2024-10-16 13:53:57.151907',false,'COM_itone'),
	 (269,'CRSTT050',true,1,NULL,'헬피 챗봇 서비스 안내','내부그룹웨어와 IT 지원팀에 대한 정보를 얻는 방법에 대한 질문과, 그룹웨어 로그인 문제 및 CUE에 대한 질문이 주어진 대화 내용입니다.','그룹웨어/로그인/비밀번호/IT 지원팀/헬피',NULL,'2024-10-16 11:28:23.190057',NULL,'2024-10-16 13:53:36.459631',false,'COM_ingw'),
	 (229,'CRSTT050',true,2,NULL,'ITONE 비밀번호 초기화','Datago 시스템과 관련된 정보 및 서비스에 대한 문의와 ITONE 비밀번호 변경에 대한 안내가 이루어지고 있습니다. 사용자가 ITSM 비밀번호 변경을 요청하면 기업부문 담당자와 관련된 정보가 제공됩니다.','ITONE/셀프서비스/비밀번호/초기화/데이터',NULL,'2024-09-24 13:48:38.52799',NULL,'2024-10-16 13:53:56.563083',false,'COM_itone'),
	 (257,'CRSTT050',true,2,NULL,'ITONE 비밀번호 초기화','회사 내 동호회 운영 지침에 대한 요약을 요청하는 대화입니다.','CUE/ITONE/동호회/포상/지원금',NULL,'2024-09-26 19:59:25.316049',NULL,'2024-10-16 13:53:57.990191',false,'COM_cue'),
	 (255,'CRSTT050',true,2,NULL,'ITONE','사용자가 챗봇에게 Datago와 ITONE에 관련된 질문을 하고 있습니다. 사용자는 서비스 카탈로그 등록 방법과 결재 프로세스에 대해 알고 싶어하고 있습니다.','ITONE/원스톱CUE/서비스 카탈로그/결재 프로세스/데이터고',NULL,'2024-09-26 14:49:23.707957',NULL,'2024-10-16 13:53:58.894667',false,'COM_datago'),
	 (271,'CRSTT050',true,1,NULL,'New Chat','New Chat','',NULL,'2024-10-16 17:18:58.476484',NULL,'2024-10-16 17:19:32.394315',false,''),
	 (268,'CRSTT050',true,1,NULL,'New Chat','New Chat','',NULL,'2024-10-16 09:10:06.465303',NULL,'2024-10-16 17:12:59.144579',false,'COM_datago');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (275,'CRSTT050',true,2,NULL,'그룹웨어 포탈에서 동호회 가입하는 방법','그룹웨어 포탈에서 동호회 가입 방법에 대한 질문입니다.','동호회/그룹웨어/포탈/가입/가입 요청',NULL,'2024-10-16 17:24:32.423272',NULL,'2024-11-02 20:44:53.998043',false,'COM_ingw'),
	 (273,'CRSTT020',true,1,NULL,'New Chat','New Chat','',NULL,'2024-10-16 17:21:24.030112',NULL,'2024-10-16 17:21:48.084638',false,''),
	 (185,'CRSTT050',false,4,NULL,'내부그룹웨어에서 SAP에 접속이 안 되는 경우, IT 담당자에게 문의하여 도움을 받는 것이 좋습니다.','내부그룹웨어와 관련된 서비스 및 문제 해결 방법에 대한 질문과 답변입니다.','내부그룹웨어/휴게실/전자결재/SAP/IT팀',NULL,'2024-10-10 14:09:13.039345',NULL,'2024-10-16 17:25:46.443817',false,NULL),
	 (276,'CRSTT050',true,1,NULL,'New Chat','New Chat','',NULL,'2024-10-16 17:25:14.884471',NULL,'2024-10-16 17:25:26.842385',false,''),
	 (185,'CRSTT050',false,4,NULL,'내부그룹웨어에서 SAP에 접속이 안 되는 경우, IT 담당자에게 문의하여 도움을 받는 것이 좋습니다.','내부그룹웨어와 관련된 서비스 및 문제 해결 방법에 대한 질문과 답변입니다.','내부그룹웨어/휴게실/전자결재/SAP/IT팀',NULL,'2024-10-10 14:09:15.193361',NULL,'2024-10-16 17:25:43.249357',false,NULL),
	 (273,'CRSTT050',false,1,2,'내부 그룹웨어 비밀번호 초기화','내부 그룹웨어 비밀번호 초기화에 관한 안내 및 도움 제안입니다.','비밀번호 초기화/그룹웨어/챗봇/대화창/셀프서비스',NULL,'2024-10-16 17:21:48.065541',NULL,'2024-10-16 17:27:54.728464',false,NULL),
	 (253,'CRSTT050',false,2,1,'ITONE','ITSM에서 비밀번호 초기화에 대한 도움을 요청하는 대화입니다. 사용자가 ITSM에서 비밀번호 초기화를 원하고, 챗봇이 관련된 서비스를 안내하며 도움을 제안하는 상황입니다.','ITONE/내부메신저/내규/비밀번호/초기화',NULL,'2024-09-30 13:54:46.923785',NULL,'2024-11-02 20:45:26.445615',false,NULL),
	 (280,'CRSTT050',true,2,NULL,'Datago 시스템에서 OTP 설정하는 방법','OTP 설정 방법에 대한 질문과 업무지원 챗봇 소개입니다.','OTP 설정/계정 생성/Google Authenticator/로그인/휴대폰',NULL,'2024-11-02 20:51:01.635285',NULL,'2024-11-02 20:52:34.278586',false,'COM_datago'),
	 (297,'CRSTT050',false,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:38:29.15631',NULL,'2024-11-02 21:42:53.209801',false,NULL),
	 (281,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 20:52:47.905429',NULL,'2024-11-02 20:54:28.504283',false,'');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (287,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:15:44.872024',NULL,'2024-11-02 21:16:53.452844',false,''),
	 (282,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:02:00.514846',NULL,'2024-11-02 21:02:22.357931',false,'COM_datago'),
	 (278,'CRSTT050',true,2,NULL,'ITONE','내부메신저에 대한 사용자의 질문과 챗봇의 답변입니다.','내부메신저/대화방/초대기능/사용자/선택',NULL,'2024-11-01 16:37:25.323837',NULL,'2024-11-02 20:44:50.700057',false,'COM_inmsg'),
	 (292,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:27:38.640654',NULL,'2024-11-02 21:28:08.021077',false,'COM_ingw'),
	 (277,'CRSTT050',true,2,NULL,'나비스(NARVIS)','챗봇의 이름과 업무에 대한 소개와 함께 사용자가 도움을 요청하는 대화입니다. 사용자가 챗봇의 이름을 묻고, 챗봇은 자신의 이름과 업무 지원 서비스에 대한 안내를 제공하며 도움을 줄 수 있다고 말합니다. 사용자는 챗봇을 통해 업무나 내규와 관련된 질문을 할 수 있습니다.','내부메신저/외부그룹웨어/ITONE/내규/나비스',NULL,'2024-10-28 17:45:34.727503',NULL,'2024-11-02 20:44:57.886361',false,'COM_inmsg'),
	 (183,'CRSTT050',false,2,4,'헬피 업무지원챗봇 사용 안내','챗봇이 사용자에게 업무지원을 제공할 수 있는 챗봇인 헬피라고 소개하고, 사용자에게 도움이 필요한지 묻고 셀프서비스 목록을 확인할 수 있다고 안내하고 있습니다.','xptmxm/헬피/대화창/셀프서비스/목록',NULL,'2024-09-06 10:23:16.556023',NULL,'2024-11-02 20:45:13.634055',false,NULL),
	 (283,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:04:03.308832',NULL,'2024-11-02 21:05:05.42512',false,'COM_datago'),
	 (279,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 20:48:49.911278',NULL,'2024-11-02 20:50:58.402961',false,'COM_datago'),
	 (288,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:16:55.704837',NULL,'2024-11-02 21:18:29.501057',false,'COM_ingw'),
	 (284,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:05:10.49819',NULL,'2024-11-02 21:06:10.255438',false,'COM_datago');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (293,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:28:29.207322',NULL,'2024-11-02 21:28:57.775359',false,'COM_itone'),
	 (304,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:47:55.759321',NULL,'2024-11-02 21:48:07.376867',false,'COM_inmsg'),
	 (285,'CRSTT050',true,2,NULL,'datago에서 otp설정 방법','OTP 설정 방법에 대한 질문입니다.','otp 설정/나비스(NARVIS)/셀프서비스/대화창/업무지원챗봇',NULL,'2024-11-02 21:08:08.407659',NULL,'2024-11-02 21:09:35.972148',false,'COM_datago'),
	 (299,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:43:12.336001',NULL,'2024-11-02 21:43:50.336746',false,'COM_inmsg'),
	 (294,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:30:35.348582',NULL,'2024-11-02 21:30:58.526339',false,'COM_ingw'),
	 (300,'CRSTT050',true,2,NULL,'나비스(NARVIS) 업무지원 챗봇 안내','메신저가 멈췄다는 사용자의 문제를 해결하기 위해 업무지원챗봇 나비스(NARVIS)이 소개되고, 사용자에게 도움을 제공할 수 있는 내용을 안내하고 있습니다. 사용자가 도움이 필요한 부분을 챗봇에게 문의할 수 있습니다.','메신저/업무지원챗봇/나비스(NARVIS)/보안/셀프서비스',NULL,'2024-11-02 21:44:01.706753',NULL,'2024-11-02 21:44:37.532061',false,'COM_inmsg'),
	 (286,'CRSTT050',true,2,NULL,'OTP 설정 방법 알려주세요','OTP 설정 방법에 대한 안내와 함께, 업무지원챗봇 나비스(NARVIS) 소개가 포함된 대화입니다.','OTP 설정/계정 생성/설정 키/Google Authenticator/로그인',NULL,'2024-11-02 21:10:30.551016',NULL,'2024-11-02 21:11:39.111084',false,'COM_datago'),
	 (295,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:31:04.834598',NULL,'2024-11-02 21:32:50.956279',false,'COM_cue'),
	 (289,'CRSTT050',true,2,NULL,'나비스(NARVIS) 업무지원챗봇 안내','ITSM 매뉴얼 확인 방법에 대한 질문입니다.','내부메신저/초대/동호회/ITSM/매뉴얼',NULL,'2024-11-02 21:24:29.690988',NULL,'2024-11-02 21:26:40.025995',false,'COM_inmsg'),
	 (290,'CRSTT050',true,2,NULL,'동호회 가입 방법','동호회 가입 방법에 대한 안내와 업무지원챗봇 소개입니다.','동호회/가입 방법/클릭/가입 신청/회원',NULL,'2024-11-02 21:26:05.138064',NULL,'2024-11-02 21:26:42.673705',false,'COM_planet');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (301,'CRSTT020',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:46:15.540779',NULL,'2024-11-02 21:46:42.811712',false,'COM_inmsg'),
	 (291,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:26:48.33346',NULL,'2024-11-02 21:27:08.473187',false,'COM_planet'),
	 (301,'CRSTT050',false,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:46:42.790312',NULL,'2024-11-02 21:47:23.15215',false,NULL),
	 (296,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:36:30.620202',NULL,'2024-11-02 21:37:49.779391',false,'COM_inmsg'),
	 (306,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:49:05.317755',NULL,'2024-11-02 21:49:18.097002',false,'COM_inmsg'),
	 (297,'CRSTT020',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:38:04.84699',NULL,'2024-11-02 21:38:29.176722',false,'COM_inmsg'),
	 (265,'CRSTT050',false,4,1,'ITONE','사용자가 챗봇과 대화를 나누며 업무지원챗봇 헬피에게 서비스 선택을 요청하는 상황입니다. 사용자가 ''ㅎ이''를 입력하여 챗봇이 자기소개를 하고 도움을 줄 수 있는 내규, 공용서비스, 사용자 단말과 보안 관련 답변을 제공할 수 있다고 안내하는 대화입니다.','ITONE/내규/경영지원 담당자/IT부문 및 정보보안 담당자/내부메일',NULL,'2024-10-10 14:10:35.359833',NULL,'2024-11-02 21:41:13.875512',false,NULL),
	 (303,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:47:45.327695',NULL,'2024-11-02 21:47:54.182399',false,'COM_inmsg'),
	 (307,'CRSTT020',true,2,NULL,'메신저 문제 해결 방법 안내','메신저가 멈춘 상황에서 업무지원챗봇 나비스에게 도움을 요청하는 대화입니다.','메신저/재부팅/그룹웨어/도움/답변',NULL,'2024-11-02 21:50:07.364515',NULL,'2024-11-02 21:51:04.105429',false,'COM_inmsg'),
	 (305,'CRSTT050',true,2,NULL,'New Chat','New Chat','',NULL,'2024-11-02 21:48:13.332861',NULL,'2024-11-02 21:49:00.343903',false,'COM_inmsg');
INSERT INTO nchatbot.chatroom (chat_group_id,state_cd,with_bot_yn,user_id,mgr_user_id,chat_title,chat_content,hashtag,created_by,created_time,modified_by,last_modified_time,delete_yn,service_cd) VALUES
	 (307,'CRSTT050',false,2,4,'메신저 재부팅 후에도 동일한 현상 나타나시나요?','ITSM 관련 문의와 메신저 동작에 관한 문제 해결을 위한 대화입니다. 사용자는 ITSM 관련 문제와 메신저가 멈추는 현상에 대해 챗봇과 대화하며 해결 방법을 찾고 있습니다.','ITSM/그룹IT/메모리/메신저/내부그룹웨어',NULL,'2024-11-02 21:51:04.085875',NULL,'2024-11-02 22:03:45.453435',false,NULL),
	 (311,'CRSTT010',true,6,NULL,'New Chat','New Chat','',NULL,'2025-02-26 15:43:32.841167',NULL,'2025-02-26 15:43:32.896792',false,''),
	 (310,'CRSTT050',true,6,NULL,'New Chat','New Chat','',NULL,'2025-02-26 15:43:32.551133',NULL,'2025-02-26 15:43:51.915657',false,''),
	 (313,'CRSTT010',true,6,NULL,'New Chat','New Chat','',NULL,'2025-02-27 17:21:35.002059',NULL,'2025-02-27 17:21:35.067965',false,''),
	 (314,'CRSTT010',true,6,NULL,'New Chat','New Chat','',NULL,'2025-03-06 17:17:30.212275',NULL,'2025-03-06 17:17:30.307099',false,'');
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (178,0,'BOT','END',NULL,'2024-09-06 10:11:16.857009',NULL,'2024-09-06 10:11:27.86947',false),
	 (179,0,'BOT','END',NULL,'2024-09-06 10:11:21.362683',NULL,'2024-09-06 10:11:33.463742',false),
	 (110,2,'USER','END',NULL,'2024-08-30 16:32:57.682794',NULL,'2024-08-30 16:34:12.948272',false),
	 (111,2,'USER','CHAT',NULL,'2024-08-30 16:34:13.016376',NULL,'2024-08-30 16:34:13.01639',false),
	 (111,4,'MGR','CHAT',NULL,'2024-08-30 16:34:21.146574',NULL,'2024-08-30 16:34:21.146579',false),
	 (182,0,'BOT','CHAT',NULL,'2024-09-06 10:22:16.045829',NULL,'2024-09-06 10:22:16.045831',false),
	 (112,2,'USER','CHAT',NULL,'2024-08-30 16:55:52.510928',NULL,'2024-08-30 16:55:52.510933',false),
	 (183,0,'BOT','END',NULL,'2024-09-06 10:23:08.308468',NULL,'2024-09-06 10:23:16.680898',false),
	 (113,2,'USER','CHAT',NULL,'2024-09-02 10:49:07.481377',NULL,'2024-09-02 10:49:07.481381',false),
	 (186,0,'BOT','CHAT',NULL,'2024-09-09 11:13:32.643996',NULL,'2024-09-09 11:13:32.643997',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (114,4,'USER','END',NULL,'2024-09-02 10:57:40.183886',NULL,'2024-09-02 11:28:56.586733',false),
	 (115,4,'USER','CHAT',NULL,'2024-09-02 11:28:56.646597',NULL,'2024-09-02 11:28:56.646602',false),
	 (187,0,'BOT','CHAT',NULL,'2024-09-09 14:48:07.054977',NULL,'2024-09-09 14:48:07.054978',false),
	 (188,0,'BOT','CHAT',NULL,'2024-09-09 19:01:00.227743',NULL,'2024-09-09 19:01:00.227746',false),
	 (116,2,'USER','END',NULL,'2024-09-02 13:14:34.444977',NULL,'2024-09-02 13:14:58.995097',false),
	 (117,2,'USER','CHAT',NULL,'2024-09-02 13:14:59.051597',NULL,'2024-09-02 13:14:59.051604',false),
	 (189,0,'BOT','CHAT',NULL,'2024-09-09 19:10:09.474681',NULL,'2024-09-09 19:10:09.474688',false),
	 (190,0,'BOT','CHAT',NULL,'2024-09-09 19:16:09.430757',NULL,'2024-09-09 19:16:09.430768',false),
	 (118,2,'USER','END',NULL,'2024-09-02 13:15:35.921966',NULL,'2024-09-02 13:20:44.748687',false),
	 (119,2,'USER','CHAT',NULL,'2024-09-02 13:20:44.821361',NULL,'2024-09-02 13:20:44.821369',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (192,0,'BOT','CHAT',NULL,'2024-09-10 09:43:19.189754',NULL,'2024-09-10 09:43:19.189757',false),
	 (193,0,'BOT','CHAT',NULL,'2024-09-10 13:51:08.974181',NULL,'2024-09-10 13:51:08.974183',false),
	 (120,2,'USER','END',NULL,'2024-09-02 13:28:11.58001',NULL,'2024-09-02 13:28:24.45982',false),
	 (121,2,'USER','CHAT',NULL,'2024-09-02 13:28:24.524897',NULL,'2024-09-02 13:28:24.524907',false),
	 (194,0,'BOT','CHAT',NULL,'2024-09-10 13:55:06.731971',NULL,'2024-09-10 13:55:06.731973',false),
	 (195,0,'BOT','CHAT',NULL,'2024-09-10 13:59:22.481127',NULL,'2024-09-10 13:59:22.481129',false),
	 (122,2,'USER','END',NULL,'2024-09-02 13:29:29.388285',NULL,'2024-09-02 13:29:45.102022',false),
	 (123,2,'USER','CHAT',NULL,'2024-09-02 13:29:45.163758',NULL,'2024-09-02 13:29:45.163772',false),
	 (198,0,'BOT','CHAT',NULL,'2024-09-10 14:19:38.584167',NULL,'2024-09-10 14:19:38.584169',false),
	 (200,0,'BOT','CHAT',NULL,'2024-09-11 14:27:28.50689',NULL,'2024-09-11 14:27:28.506892',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (124,2,'USER','END',NULL,'2024-09-02 13:31:51.625072',NULL,'2024-09-02 13:32:02.94605',false),
	 (125,2,'USER','CHAT',NULL,'2024-09-02 13:32:03.021445',NULL,'2024-09-02 13:32:03.021454',false),
	 (197,0,'BOT','END',NULL,'2024-09-10 14:15:36.442929',NULL,'2024-09-11 15:02:20.101985',false),
	 (199,0,'BOT','END',NULL,'2024-09-10 14:56:47.767263',NULL,'2024-09-11 15:02:28.831233',false),
	 (126,2,'USER','END',NULL,'2024-09-02 13:43:15.276394',NULL,'2024-09-02 13:43:27.321828',false),
	 (127,2,'USER','CHAT',NULL,'2024-09-02 13:43:27.391658',NULL,'2024-09-02 13:43:27.39167',false),
	 (191,0,'BOT','END',NULL,'2024-09-10 09:18:16.696328',NULL,'2024-09-11 15:02:33.883135',false),
	 (196,0,'BOT','END',NULL,'2024-09-10 14:07:27.424714',NULL,'2024-09-11 15:02:38.745909',false),
	 (128,2,'USER','END',NULL,'2024-09-02 13:58:49.226803',NULL,'2024-09-02 13:58:54.292153',false),
	 (129,2,'USER','CHAT',NULL,'2024-09-02 13:58:54.364305',NULL,'2024-09-02 13:58:54.364314',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (206,0,'BOT','END',NULL,'2024-09-20 16:35:45.646074',NULL,'2024-09-20 16:59:14.624022',false),
	 (130,2,'USER','CHAT',NULL,'2024-09-03 15:03:52.007558',NULL,'2024-09-03 15:03:52.007559',false),
	 (208,0,'BOT','CHAT',NULL,'2024-09-23 13:24:24.486549',NULL,'2024-09-23 13:24:24.486552',false),
	 (131,2,'USER','CHAT',NULL,'2024-09-03 15:05:52.26723',NULL,'2024-09-03 15:05:52.267237',false),
	 (209,0,'BOT','END',NULL,'2024-09-23 14:24:10.442417',NULL,'2024-09-23 15:17:00.88485',false),
	 (132,2,'USER','CHAT',NULL,'2024-09-03 15:08:35.927462',NULL,'2024-09-03 15:08:35.927484',false),
	 (211,0,'BOT','END',NULL,'2024-09-23 15:39:46.932377',NULL,'2024-09-23 15:40:13.996619',false),
	 (133,2,'USER','CHAT',NULL,'2024-09-03 15:08:36.527652',NULL,'2024-09-03 15:08:36.527654',false),
	 (213,0,'BOT','CHAT',NULL,'2024-09-23 17:33:16.149579',NULL,'2024-09-23 17:33:16.149581',false),
	 (134,2,'USER','CHAT',NULL,'2024-09-03 15:08:37.365914',NULL,'2024-09-03 15:08:37.365917',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (214,0,'BOT','CHAT',NULL,'2024-09-23 17:43:17.664423',NULL,'2024-09-23 17:43:17.664425',false),
	 (135,2,'USER','CHAT',NULL,'2024-09-03 16:37:28.314743',NULL,'2024-09-03 16:37:28.314745',false),
	 (215,0,'BOT','CHAT',NULL,'2024-09-23 18:21:46.586168',NULL,'2024-09-23 18:21:46.586172',false),
	 (136,2,'USER','CHAT',NULL,'2024-09-03 16:38:10.076156',NULL,'2024-09-03 16:38:10.076166',false),
	 (216,0,'BOT','CHAT',NULL,'2024-09-23 20:16:17.194205',NULL,'2024-09-23 20:16:17.194207',false),
	 (137,2,'USER','CHAT',NULL,'2024-09-03 16:46:52.467968',NULL,'2024-09-03 16:46:52.467975',false),
	 (217,0,'BOT','CHAT',NULL,'2024-09-23 20:22:24.695311',NULL,'2024-09-23 20:22:24.695314',false),
	 (138,2,'USER','CHAT',NULL,'2024-09-03 17:00:24.952804',NULL,'2024-09-03 17:00:24.952814',false),
	 (218,0,'BOT','CHAT',NULL,'2024-09-23 20:24:14.759763',NULL,'2024-09-23 20:24:14.759765',false),
	 (139,2,'USER','CHAT',NULL,'2024-09-03 17:14:01.503526',NULL,'2024-09-03 17:14:01.503527',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (219,0,'BOT','CHAT',NULL,'2024-09-23 21:12:02.678457',NULL,'2024-09-23 21:12:02.67846',false),
	 (140,2,'USER','CHAT',NULL,'2024-09-03 17:14:10.714652',NULL,'2024-09-03 17:14:10.714662',false),
	 (220,0,'BOT','CHAT',NULL,'2024-09-23 21:16:53.296646',NULL,'2024-09-23 21:16:53.29665',false),
	 (141,2,'USER','CHAT',NULL,'2024-09-03 17:16:19.780142',NULL,'2024-09-03 17:16:19.780144',false),
	 (221,0,'BOT','CHAT',NULL,'2024-09-23 22:05:49.776479',NULL,'2024-09-23 22:05:49.776481',false),
	 (142,2,'USER','CHAT',NULL,'2024-09-03 17:16:25.104231',NULL,'2024-09-03 17:16:25.10424',false),
	 (222,0,'BOT','CHAT',NULL,'2024-09-23 22:06:16.274684',NULL,'2024-09-23 22:06:16.274686',false),
	 (143,2,'USER','CHAT',NULL,'2024-09-03 17:16:32.688018',NULL,'2024-09-03 17:16:32.68803',false),
	 (223,0,'BOT','CHAT',NULL,'2024-09-23 22:11:26.469117',NULL,'2024-09-23 22:11:26.469119',false),
	 (144,2,'USER','CHAT',NULL,'2024-09-03 17:16:57.162729',NULL,'2024-09-03 17:16:57.162739',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (224,0,'BOT','CHAT',NULL,'2024-09-23 22:13:54.936927',NULL,'2024-09-23 22:13:54.936929',false),
	 (145,2,'USER','CHAT',NULL,'2024-09-03 17:18:06.522628',NULL,'2024-09-03 17:18:06.522636',false),
	 (146,2,'USER','CHAT',NULL,'2024-09-03 17:21:22.920133',NULL,'2024-09-03 17:21:22.920152',false),
	 (147,2,'USER','CHAT',NULL,'2024-09-03 17:25:02.481656',NULL,'2024-09-03 17:25:02.481658',false),
	 (148,2,'USER','CHAT',NULL,'2024-09-03 17:25:40.709746',NULL,'2024-09-03 17:25:40.709753',false),
	 (149,2,'USER','CHAT',NULL,'2024-09-03 17:27:07.919967',NULL,'2024-09-03 17:27:07.919968',false),
	 (150,2,'USER','CHAT',NULL,'2024-09-03 17:28:27.514968',NULL,'2024-09-03 17:28:27.51497',false),
	 (151,2,'USER','CHAT',NULL,'2024-09-03 17:30:57.91604',NULL,'2024-09-03 17:30:57.916042',false),
	 (152,2,'USER','CHAT',NULL,'2024-09-03 17:31:27.497491',NULL,'2024-09-03 17:31:27.497493',false),
	 (153,2,'USER','CHAT',NULL,'2024-09-03 17:55:05.143007',NULL,'2024-09-03 17:55:05.143009',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (154,2,'USER','CHAT',NULL,'2024-09-03 17:55:17.623726',NULL,'2024-09-03 17:55:17.623727',false),
	 (240,0,'BOT','CHAT',NULL,'2024-09-24 21:06:50.283188',NULL,'2024-09-24 21:06:50.283189',false),
	 (155,2,'USER','CHAT',NULL,'2024-09-03 17:57:21.680259',NULL,'2024-09-03 17:57:21.68026',false),
	 (156,2,'USER','CHAT',NULL,'2024-09-03 17:58:11.025717',NULL,'2024-09-03 17:58:11.025726',false),
	 (157,2,'USER','CHAT',NULL,'2024-09-03 18:01:02.475852',NULL,'2024-09-03 18:01:02.475854',false),
	 (245,0,'BOT','CHAT',NULL,'2024-09-24 21:36:26.802279',NULL,'2024-09-24 21:36:26.802281',false),
	 (247,0,'BOT','CHAT',NULL,'2024-09-24 22:19:54.856846',NULL,'2024-09-24 22:19:54.856851',false),
	 (249,0,'BOT','CHAT',NULL,'2024-09-25 14:34:46.517033',NULL,'2024-09-25 14:34:46.517036',false),
	 (250,2,'USER','CHAT',NULL,'2024-09-25 14:35:07.44972',NULL,'2024-09-25 14:35:07.449725',false),
	 (254,0,'BOT','CHAT',NULL,'2024-09-26 13:58:27.563197',NULL,'2024-09-26 13:58:27.563199',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (256,0,'BOT','CHAT',NULL,'2024-09-26 14:57:39.837479',NULL,'2024-09-26 14:57:39.837487',false),
	 (256,2,'USER','CHAT',NULL,'2024-09-26 14:57:39.860537',NULL,'2024-09-26 14:57:39.860549',false),
	 (258,2,'USER','CHAT',NULL,'2024-09-28 18:16:43.100787',NULL,'2024-09-28 18:16:43.10079',false),
	 (259,4,'MGR','END',NULL,'2024-09-30 14:00:31.824095',NULL,'2024-09-30 14:01:34.250904',false),
	 (261,2,'USER','CHAT',NULL,'2024-10-10 09:21:22.735235',NULL,'2024-10-10 09:21:22.73524',false),
	 (261,4,'MGR','CHAT',NULL,'2024-10-10 09:21:43.795051',NULL,'2024-10-10 09:21:43.795065',false),
	 (185,0,'BOT','END',NULL,'2024-09-09 10:44:27.712898',NULL,'2024-10-10 14:09:14.228536',false),
	 (185,4,'USER','END',NULL,'2024-09-09 10:44:27.734383',NULL,'2024-10-10 14:09:14.228558',false),
	 (265,4,'USER','END',NULL,'2024-10-10 14:10:21.582255',NULL,'2024-10-10 14:10:35.572577',false),
	 (267,1,'USER','CHAT',NULL,'2024-10-14 15:28:18.279039',NULL,'2024-10-14 15:28:18.279045',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (269,0,'BOT','CHAT',NULL,'2024-10-16 11:28:23.393894',NULL,'2024-10-16 11:28:23.393896',false),
	 (270,1,'USER','CHAT',NULL,'2024-10-16 17:13:53.559127',NULL,'2024-10-16 17:13:53.559128',false),
	 (272,1,'USER','CHAT',NULL,'2024-10-16 17:20:08.602828',NULL,'2024-10-16 17:20:08.602843',false),
	 (273,1,'USER','END',NULL,'2024-10-16 17:21:24.220167',NULL,'2024-10-16 17:21:48.164429',false),
	 (275,0,'BOT','CHAT',NULL,'2024-10-16 17:24:32.511307',NULL,'2024-10-16 17:24:32.511308',false),
	 (275,2,'USER','CHAT',NULL,'2024-10-16 17:24:32.529979',NULL,'2024-10-16 17:24:32.52998',false),
	 (277,0,'BOT','CHAT',NULL,'2024-10-28 17:45:34.842753',NULL,'2024-10-28 17:45:34.842755',false),
	 (278,2,'USER','CHAT',NULL,'2024-11-01 16:37:25.450924',NULL,'2024-11-01 16:37:25.45093',false),
	 (280,0,'BOT','CHAT',NULL,'2024-11-02 20:51:01.726248',NULL,'2024-11-02 20:51:01.726249',false),
	 (282,0,'BOT','CHAT',NULL,'2024-11-02 21:02:00.618394',NULL,'2024-11-02 21:02:00.618395',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (283,0,'BOT','CHAT',NULL,'2024-11-02 21:04:03.400104',NULL,'2024-11-02 21:04:03.400109',false),
	 (283,2,'USER','CHAT',NULL,'2024-11-02 21:04:03.416953',NULL,'2024-11-02 21:04:03.416963',false),
	 (284,2,'USER','CHAT',NULL,'2024-11-02 21:05:10.608613',NULL,'2024-11-02 21:05:10.608622',false),
	 (285,0,'BOT','CHAT',NULL,'2024-11-02 21:08:08.497317',NULL,'2024-11-02 21:08:08.497318',false),
	 (286,0,'BOT','CHAT',NULL,'2024-11-02 21:10:30.636894',NULL,'2024-11-02 21:10:30.636896',false),
	 (287,0,'BOT','CHAT',NULL,'2024-11-02 21:15:44.959062',NULL,'2024-11-02 21:15:44.959063',false),
	 (288,2,'USER','CHAT',NULL,'2024-11-02 21:16:55.803314',NULL,'2024-11-02 21:16:55.803315',false),
	 (289,0,'BOT','CHAT',NULL,'2024-11-02 21:24:29.782745',NULL,'2024-11-02 21:24:29.782746',false),
	 (289,2,'USER','CHAT',NULL,'2024-11-02 21:24:29.798221',NULL,'2024-11-02 21:24:29.798222',false),
	 (290,0,'BOT','CHAT',NULL,'2024-11-02 21:26:05.25187',NULL,'2024-11-02 21:26:05.251871',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (290,2,'USER','CHAT',NULL,'2024-11-02 21:26:05.268105',NULL,'2024-11-02 21:26:05.268106',false),
	 (291,2,'USER','CHAT',NULL,'2024-11-02 21:26:48.442619',NULL,'2024-11-02 21:26:48.442621',false),
	 (292,0,'BOT','CHAT',NULL,'2024-11-02 21:27:38.736066',NULL,'2024-11-02 21:27:38.736068',false),
	 (293,0,'BOT','CHAT',NULL,'2024-11-02 21:28:29.307292',NULL,'2024-11-02 21:28:29.307298',false),
	 (294,0,'BOT','CHAT',NULL,'2024-11-02 21:30:35.446314',NULL,'2024-11-02 21:30:35.446316',false),
	 (294,2,'USER','CHAT',NULL,'2024-11-02 21:30:35.466024',NULL,'2024-11-02 21:30:35.466026',false),
	 (295,0,'BOT','CHAT',NULL,'2024-11-02 21:31:04.927085',NULL,'2024-11-02 21:31:04.927087',false),
	 (295,2,'USER','CHAT',NULL,'2024-11-02 21:31:04.946387',NULL,'2024-11-02 21:31:04.946389',false),
	 (296,0,'BOT','CHAT',NULL,'2024-11-02 21:36:30.717402',NULL,'2024-11-02 21:36:30.717403',false),
	 (296,2,'USER','CHAT',NULL,'2024-11-02 21:36:30.736508',NULL,'2024-11-02 21:36:30.736509',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (297,0,'BOT','END',NULL,'2024-11-02 21:38:04.945348',NULL,'2024-11-02 21:38:29.266964',false),
	 (297,2,'USER','END',NULL,'2024-11-02 21:38:04.963396',NULL,'2024-11-02 21:38:29.26698',false),
	 (298,2,'USER','CHAT',NULL,'2024-11-02 21:38:29.34051',NULL,'2024-11-02 21:38:29.340524',false),
	 (299,0,'BOT','CHAT',NULL,'2024-11-02 21:43:12.4261',NULL,'2024-11-02 21:43:12.426102',false),
	 (299,2,'USER','CHAT',NULL,'2024-11-02 21:43:12.445714',NULL,'2024-11-02 21:43:12.445715',false),
	 (300,0,'BOT','CHAT',NULL,'2024-11-02 21:44:01.805996',NULL,'2024-11-02 21:44:01.806006',false),
	 (300,2,'USER','CHAT',NULL,'2024-11-02 21:44:01.826497',NULL,'2024-11-02 21:44:01.826518',false),
	 (301,0,'BOT','END',NULL,'2024-11-02 21:46:15.631303',NULL,'2024-11-02 21:46:42.897547',false),
	 (301,2,'USER','END',NULL,'2024-11-02 21:46:15.649952',NULL,'2024-11-02 21:46:42.897561',false),
	 (302,2,'USER','CHAT',NULL,'2024-11-02 21:46:42.992749',NULL,'2024-11-02 21:46:42.992768',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (303,0,'BOT','CHAT',NULL,'2024-11-02 21:47:45.424604',NULL,'2024-11-02 21:47:45.424606',false),
	 (303,2,'USER','CHAT',NULL,'2024-11-02 21:47:45.444554',NULL,'2024-11-02 21:47:45.444566',false),
	 (304,0,'BOT','CHAT',NULL,'2024-11-02 21:47:55.849937',NULL,'2024-11-02 21:47:55.849943',false),
	 (304,2,'USER','CHAT',NULL,'2024-11-02 21:47:55.870713',NULL,'2024-11-02 21:47:55.870733',false),
	 (305,0,'BOT','CHAT',NULL,'2024-11-02 21:48:13.433234',NULL,'2024-11-02 21:48:13.433243',false),
	 (305,2,'USER','CHAT',NULL,'2024-11-02 21:48:13.452933',NULL,'2024-11-02 21:48:13.452948',false),
	 (306,0,'BOT','CHAT',NULL,'2024-11-02 21:49:05.40847',NULL,'2024-11-02 21:49:05.408472',false),
	 (306,2,'USER','CHAT',NULL,'2024-11-02 21:49:05.427724',NULL,'2024-11-02 21:49:05.427726',false),
	 (307,0,'BOT','END',NULL,'2024-11-02 21:50:07.47138',NULL,'2024-11-02 21:51:04.196386',false),
	 (307,2,'USER','END',NULL,'2024-11-02 21:50:07.490609',NULL,'2024-11-02 21:51:04.196401',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (308,2,'USER','CHAT',NULL,'2024-11-02 21:51:04.279428',NULL,'2024-11-02 21:51:04.279446',false),
	 (110,0,'BOT','END',NULL,'2024-08-30 16:32:57.664771',NULL,'2024-08-30 16:34:12.948262',false),
	 (308,1,'MGR','END',NULL,'2024-11-02 21:51:17.828284',NULL,'2024-11-02 21:57:07.931346',false),
	 (308,4,'MGR','CHAT',NULL,'2024-11-02 21:57:07.991679',NULL,'2024-11-02 21:57:07.991698',false),
	 (308,4,'MGR','CHAT',NULL,'2024-11-02 22:01:34.203103',NULL,'2024-11-02 22:01:34.20313',false),
	 (309,0,'BOT','CHAT',NULL,'2025-02-24 17:21:52.905207',NULL,'2025-02-24 17:21:52.905207',false),
	 (309,6,'USER','CHAT',NULL,'2025-02-24 17:21:52.916232',NULL,'2025-02-24 17:21:52.916232',false),
	 (310,0,'BOT','CHAT',NULL,'2025-02-26 15:43:32.663758',NULL,'2025-02-26 15:43:32.663758',false),
	 (310,6,'USER','CHAT',NULL,'2025-02-26 15:43:32.679705',NULL,'2025-02-26 15:43:32.679705',false),
	 (311,0,'BOT','CHAT',NULL,'2025-02-26 15:43:32.929682',NULL,'2025-02-26 15:43:32.929682',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (311,6,'USER','CHAT',NULL,'2025-02-26 15:43:32.948619',NULL,'2025-02-26 15:43:32.948619',false),
	 (156,0,'BOT','CHAT',NULL,'2024-09-03 17:58:10.995651',NULL,'2024-09-03 17:58:10.995655',false),
	 (157,0,'BOT','CHAT',NULL,'2024-09-03 18:01:02.457474',NULL,'2024-09-03 18:01:02.457475',false),
	 (159,2,'USER','CHAT',NULL,'2024-09-04 10:35:04.704336',NULL,'2024-09-04 10:35:04.704345',false),
	 (225,0,'BOT','CHAT',NULL,'2024-09-23 22:17:15.020002',NULL,'2024-09-23 22:17:15.020007',false),
	 (160,2,'USER','CHAT',NULL,'2024-09-04 10:40:05.202855',NULL,'2024-09-04 10:40:05.202856',false),
	 (226,0,'BOT','CHAT',NULL,'2024-09-23 22:48:30.680259',NULL,'2024-09-23 22:48:30.68026',false),
	 (161,2,'USER','CHAT',NULL,'2024-09-04 10:41:26.79381',NULL,'2024-09-04 10:41:26.793821',false),
	 (227,0,'BOT','CHAT',NULL,'2024-09-23 22:49:27.581868',NULL,'2024-09-23 22:49:27.581871',false),
	 (162,2,'USER','CHAT',NULL,'2024-09-04 10:57:55.116273',NULL,'2024-09-04 10:57:55.116282',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (228,0,'BOT','CHAT',NULL,'2024-09-24 11:04:36.269201',NULL,'2024-09-24 11:04:36.269205',false),
	 (229,0,'BOT','CHAT',NULL,'2024-09-24 13:48:38.635878',NULL,'2024-09-24 13:48:38.63588',false),
	 (164,2,'USER','CHAT',NULL,'2024-09-04 11:00:04.285086',NULL,'2024-09-04 11:00:04.285094',false),
	 (230,0,'BOT','CHAT',NULL,'2024-09-24 18:31:54.605965',NULL,'2024-09-24 18:31:54.60597',false),
	 (231,0,'BOT','CHAT',NULL,'2024-09-24 18:34:21.470451',NULL,'2024-09-24 18:34:21.470453',false),
	 (158,2,'USER','END',NULL,'2024-09-04 10:34:06.089779',NULL,'2024-09-04 11:16:10.450143',false),
	 (166,2,'USER','CHAT',NULL,'2024-09-04 11:16:10.530161',NULL,'2024-09-04 11:16:10.530169',false),
	 (232,0,'BOT','CHAT',NULL,'2024-09-24 18:37:57.678446',NULL,'2024-09-24 18:37:57.67845',false),
	 (165,2,'USER','END',NULL,'2024-09-04 11:00:28.899154',NULL,'2024-09-04 11:24:13.371344',false),
	 (167,2,'USER','CHAT',NULL,'2024-09-04 11:24:13.469251',NULL,'2024-09-04 11:24:13.469259',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (233,0,'BOT','CHAT',NULL,'2024-09-24 18:39:03.280165',NULL,'2024-09-24 18:39:03.280168',false),
	 (163,2,'USER','END',NULL,'2024-09-04 10:59:49.345858',NULL,'2024-09-04 11:25:03.0213',false),
	 (168,2,'USER','CHAT',NULL,'2024-09-04 11:25:03.095064',NULL,'2024-09-04 11:25:03.095086',false),
	 (167,4,'MGR','END',NULL,'2024-09-04 17:22:56.503832',NULL,'2024-09-04 17:26:41.111928',false),
	 (167,1,'MGR','CHAT',NULL,'2024-09-04 17:26:41.17174',NULL,'2024-09-04 17:26:41.171752',false),
	 (168,1,'MGR','CHAT',NULL,'2024-09-04 17:27:38.245468',NULL,'2024-09-04 17:27:38.24548',false),
	 (119,4,'MGR','END',NULL,'2024-09-04 17:29:00.81073',NULL,'2024-09-04 17:29:12.921845',false),
	 (119,1,'MGR','CHAT',NULL,'2024-09-04 17:29:12.955886',NULL,'2024-09-04 17:29:12.955892',false),
	 (117,4,'MGR','CHAT',NULL,'2024-09-04 17:30:59.377643',NULL,'2024-09-04 17:30:59.377647',false),
	 (166,4,'MGR','CHAT',NULL,'2024-09-04 17:34:34.511009',NULL,'2024-09-04 17:34:34.511016',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (115,2,'MGR','END',NULL,'2024-09-04 17:39:41.118126',NULL,'2024-09-04 17:39:46.385506',false),
	 (115,1,'MGR','CHAT',NULL,'2024-09-04 17:39:46.428095',NULL,'2024-09-04 17:39:46.4281',false),
	 (234,0,'BOT','CHAT',NULL,'2024-09-24 18:45:11.588028',NULL,'2024-09-24 18:45:11.58803',false),
	 (169,4,'USER','CHAT',NULL,'2024-09-05 11:29:55.813232',NULL,'2024-09-05 11:29:55.813238',false),
	 (235,0,'BOT','CHAT',NULL,'2024-09-24 20:35:38.436693',NULL,'2024-09-24 20:35:38.436695',false),
	 (236,0,'BOT','CHAT',NULL,'2024-09-24 20:37:02.613063',NULL,'2024-09-24 20:37:02.613066',false),
	 (170,4,'USER','END',NULL,'2024-09-05 11:31:03.386827',NULL,'2024-09-05 11:31:24.889777',false),
	 (171,4,'USER','CHAT',NULL,'2024-09-05 11:31:25.062863',NULL,'2024-09-05 11:31:25.062894',false),
	 (237,0,'BOT','CHAT',NULL,'2024-09-24 20:40:07.844022',NULL,'2024-09-24 20:40:07.844024',false),
	 (238,0,'BOT','CHAT',NULL,'2024-09-24 20:44:50.098126',NULL,'2024-09-24 20:44:50.098127',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (172,4,'USER','END',NULL,'2024-09-05 16:48:54.738586',NULL,'2024-09-05 17:00:46.208046',false),
	 (173,4,'USER','CHAT',NULL,'2024-09-05 17:00:46.280177',NULL,'2024-09-05 17:00:46.280183',false),
	 (129,1,'MGR','CHAT',NULL,'2024-09-05 17:16:54.319337',NULL,'2024-09-05 17:16:54.319341',false),
	 (127,1,'MGR','CHAT',NULL,'2024-09-05 17:17:29.717051',NULL,'2024-09-05 17:17:29.717057',false),
	 (123,1,'MGR','CHAT',NULL,'2024-09-05 17:18:21.075152',NULL,'2024-09-05 17:18:21.075166',false),
	 (123,1,'MGR','CHAT',NULL,'2024-09-05 17:22:17.74633',NULL,'2024-09-05 17:22:17.746334',false),
	 (119,1,'MGR','CHAT',NULL,'2024-09-05 17:23:27.473948',NULL,'2024-09-05 17:23:27.473957',false),
	 (125,1,'MGR','CHAT',NULL,'2024-09-05 17:23:42.249182',NULL,'2024-09-05 17:23:42.249186',false),
	 (240,2,'USER','CHAT',NULL,'2024-09-24 21:06:50.302095',NULL,'2024-09-24 21:06:50.302097',false),
	 (174,4,'USER','CHAT',NULL,'2024-09-05 17:36:31.397633',NULL,'2024-09-05 17:36:31.397638',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (175,1,'USER','CHAT',NULL,'2024-09-05 17:59:11.284667',NULL,'2024-09-05 17:59:11.284669',false),
	 (121,4,'MGR','CHAT',NULL,'2024-09-06 09:25:18.367403',NULL,'2024-09-06 09:25:18.367409',false),
	 (245,2,'USER','CHAT',NULL,'2024-09-24 21:36:26.821499',NULL,'2024-09-24 21:36:26.821505',false),
	 (247,2,'USER','CHAT',NULL,'2024-09-24 22:19:54.878259',NULL,'2024-09-24 22:19:54.878265',false),
	 (176,2,'USER','END',NULL,'2024-09-06 09:28:23.176263',NULL,'2024-09-06 09:28:28.177778',false),
	 (177,2,'USER','CHAT',NULL,'2024-09-06 09:28:28.242645',NULL,'2024-09-06 09:28:28.242658',false),
	 (177,4,'MGR','CHAT',NULL,'2024-09-06 09:28:35.085212',NULL,'2024-09-06 09:28:35.085216',false),
	 (249,2,'USER','CHAT',NULL,'2024-09-25 14:34:46.536814',NULL,'2024-09-25 14:34:46.53682',false),
	 (251,0,'BOT','CHAT',NULL,'2024-09-25 14:45:30.261292',NULL,'2024-09-25 14:45:30.261294',false),
	 (252,0,'BOT','CHAT',NULL,'2024-09-25 14:46:34.462796',NULL,'2024-09-25 14:46:34.462798',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (178,2,'USER','END',NULL,'2024-09-06 10:11:17.00827',NULL,'2024-09-06 10:11:27.869487',false),
	 (180,2,'USER','CHAT',NULL,'2024-09-06 10:11:27.957009',NULL,'2024-09-06 10:11:27.95702',false),
	 (254,2,'USER','CHAT',NULL,'2024-09-26 13:58:27.58456',NULL,'2024-09-26 13:58:27.584564',false),
	 (179,2,'USER','END',NULL,'2024-09-06 10:11:21.381381',NULL,'2024-09-06 10:11:33.463757',false),
	 (181,2,'USER','CHAT',NULL,'2024-09-06 10:11:33.537548',NULL,'2024-09-06 10:11:33.537562',false),
	 (180,4,'MGR','CHAT',NULL,'2024-09-06 10:11:44.435572',NULL,'2024-09-06 10:11:44.435575',false),
	 (181,4,'MGR','CHAT',NULL,'2024-09-06 10:21:15.999619',NULL,'2024-09-06 10:21:15.999624',false),
	 (257,0,'BOT','CHAT',NULL,'2024-09-26 19:59:25.418846',NULL,'2024-09-26 19:59:25.418848',false),
	 (182,2,'USER','CHAT',NULL,'2024-09-06 10:22:16.063508',NULL,'2024-09-06 10:22:16.06351',false),
	 (259,2,'USER','CHAT',NULL,'2024-09-30 13:54:47.111705',NULL,'2024-09-30 13:54:47.11171',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (259,1,'MGR','CHAT',NULL,'2024-09-30 14:01:34.306115',NULL,'2024-09-30 14:01:34.306128',false),
	 (183,2,'USER','END',NULL,'2024-09-06 10:23:08.329027',NULL,'2024-09-06 10:23:16.680913',false),
	 (184,2,'USER','CHAT',NULL,'2024-09-06 10:23:16.748196',NULL,'2024-09-06 10:23:16.74821',false),
	 (184,4,'MGR','CHAT',NULL,'2024-09-06 10:23:26.430568',NULL,'2024-09-06 10:23:26.43063',false),
	 (262,0,'BOT','CHAT',NULL,'2024-10-10 09:43:28.543466',NULL,'2024-10-10 09:43:28.543468',false),
	 (263,4,'USER','CHAT',NULL,'2024-10-10 14:09:14.67493',NULL,'2024-10-10 14:09:14.674952',false),
	 (186,4,'USER','CHAT',NULL,'2024-09-09 11:13:32.668889',NULL,'2024-09-09 11:13:32.668891',false),
	 (266,4,'USER','CHAT',NULL,'2024-10-10 14:10:35.827102',NULL,'2024-10-10 14:10:35.827126',false),
	 (187,2,'USER','CHAT',NULL,'2024-09-09 14:48:07.074531',NULL,'2024-09-09 14:48:07.074533',false),
	 (188,2,'USER','CHAT',NULL,'2024-09-09 19:01:00.253059',NULL,'2024-09-09 19:01:00.253062',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (189,2,'USER','CHAT',NULL,'2024-09-09 19:10:09.509557',NULL,'2024-09-09 19:10:09.509569',false),
	 (190,2,'USER','CHAT',NULL,'2024-09-09 19:16:09.449251',NULL,'2024-09-09 19:16:09.449262',false),
	 (241,0,'BOT','CHAT',NULL,'2024-09-24 21:11:58.286822',NULL,'2024-09-24 21:11:58.286823',false),
	 (192,2,'USER','CHAT',NULL,'2024-09-10 09:43:19.20847',NULL,'2024-09-10 09:43:19.208472',false),
	 (244,0,'BOT','CHAT',NULL,'2024-09-24 21:36:21.821538',NULL,'2024-09-24 21:36:21.821542',false),
	 (193,2,'USER','CHAT',NULL,'2024-09-10 13:51:09.107141',NULL,'2024-09-10 13:51:09.107153',false),
	 (246,0,'BOT','CHAT',NULL,'2024-09-24 21:42:06.88865',NULL,'2024-09-24 21:42:06.888652',false),
	 (194,2,'USER','CHAT',NULL,'2024-09-10 13:55:06.750104',NULL,'2024-09-10 13:55:06.750106',false),
	 (248,0,'BOT','CHAT',NULL,'2024-09-24 23:36:36.902209',NULL,'2024-09-24 23:36:36.902213',false),
	 (195,2,'USER','CHAT',NULL,'2024-09-10 13:59:22.499073',NULL,'2024-09-10 13:59:22.499075',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (250,0,'BOT','CHAT',NULL,'2024-09-25 14:35:07.431096',NULL,'2024-09-25 14:35:07.431099',false),
	 (251,2,'USER','CHAT',NULL,'2024-09-25 14:45:30.281155',NULL,'2024-09-25 14:45:30.281159',false),
	 (198,2,'USER','CHAT',NULL,'2024-09-10 14:19:38.601867',NULL,'2024-09-10 14:19:38.601869',false),
	 (255,0,'BOT','CHAT',NULL,'2024-09-26 14:49:23.821511',NULL,'2024-09-26 14:49:23.821514',false),
	 (171,1,'MGR','CHAT',NULL,'2024-09-10 15:10:32.502517',NULL,'2024-09-10 15:10:32.50252',false),
	 (257,2,'USER','CHAT',NULL,'2024-09-26 19:59:25.438707',NULL,'2024-09-26 19:59:25.438712',false),
	 (200,2,'USER','CHAT',NULL,'2024-09-11 14:27:28.535583',NULL,'2024-09-11 14:27:28.535589',false),
	 (253,2,'USER','END',NULL,'2024-09-25 14:48:01.059419',NULL,'2024-09-30 13:54:47.04244',false),
	 (197,2,'USER','END',NULL,'2024-09-10 14:15:36.463545',NULL,'2024-09-11 15:02:20.101992',false),
	 (201,2,'USER','CHAT',NULL,'2024-09-11 15:02:20.178804',NULL,'2024-09-11 15:02:20.17881',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (202,2,'USER','CHAT',NULL,'2024-09-11 15:02:20.448316',NULL,'2024-09-11 15:02:20.44832',false),
	 (199,2,'USER','END',NULL,'2024-09-10 14:56:47.787485',NULL,'2024-09-11 15:02:28.831242',false),
	 (203,2,'USER','CHAT',NULL,'2024-09-11 15:02:28.913614',NULL,'2024-09-11 15:02:28.913618',false),
	 (259,4,'MGR','END',NULL,'2024-09-30 13:56:26.418015',NULL,'2024-09-30 13:57:09.903953',false),
	 (191,2,'USER','END',NULL,'2024-09-10 09:18:16.742942',NULL,'2024-09-11 15:02:33.883141',false),
	 (204,2,'USER','CHAT',NULL,'2024-09-11 15:02:33.953451',NULL,'2024-09-11 15:02:33.953457',false),
	 (196,2,'USER','END',NULL,'2024-09-10 14:07:27.447802',NULL,'2024-09-11 15:02:38.745919',false),
	 (205,2,'USER','CHAT',NULL,'2024-09-11 15:02:38.819642',NULL,'2024-09-11 15:02:38.819652',false),
	 (202,4,'MGR','CHAT',NULL,'2024-09-11 16:50:29.186723',NULL,'2024-09-11 16:50:29.186738',false),
	 (260,0,'BOT','END',NULL,'2024-10-08 17:59:16.968791',NULL,'2024-10-10 09:21:22.571304',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (262,4,'USER','CHAT',NULL,'2024-10-10 09:43:28.577332',NULL,'2024-10-10 09:43:28.577337',false),
	 (206,1,'USER','END',NULL,'2024-09-20 16:35:45.664815',NULL,'2024-09-20 16:59:14.624027',false),
	 (207,1,'USER','CHAT',NULL,'2024-09-20 16:59:14.774767',NULL,'2024-09-20 16:59:14.774772',false),
	 (207,2,'MGR','CHAT',NULL,'2024-09-20 16:59:53.968618',NULL,'2024-09-20 16:59:53.96863',false),
	 (264,4,'USER','CHAT',NULL,'2024-10-10 14:09:15.710166',NULL,'2024-10-10 14:09:15.710195',false),
	 (208,2,'USER','CHAT',NULL,'2024-09-23 13:24:24.51077',NULL,'2024-09-23 13:24:24.510774',false),
	 (171,2,'MGR','CHAT',NULL,'2024-09-23 13:41:53.145801',NULL,'2024-09-23 13:41:53.145813',false),
	 (171,2,'MGR','CHAT',NULL,'2024-09-23 13:46:29.812601',NULL,'2024-09-23 13:46:29.812603',false),
	 (266,1,'MGR','CHAT',NULL,'2024-10-10 14:11:16.836582',NULL,'2024-10-10 14:11:16.836589',false),
	 (268,0,'BOT','CHAT',NULL,'2024-10-16 09:10:06.569982',NULL,'2024-10-16 09:10:06.569984',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (209,2,'USER','END',NULL,'2024-09-23 14:24:10.464956',NULL,'2024-09-23 15:17:00.884854',false),
	 (210,2,'USER','CHAT',NULL,'2024-09-23 15:17:00.964304',NULL,'2024-09-23 15:17:00.964308',false),
	 (210,4,'MGR','CHAT',NULL,'2024-09-23 15:19:18.788148',NULL,'2024-09-23 15:19:18.788156',false),
	 (269,1,'USER','CHAT',NULL,'2024-10-16 11:28:23.418231',NULL,'2024-10-16 11:28:23.418233',false),
	 (271,0,'BOT','CHAT',NULL,'2024-10-16 17:18:58.597456',NULL,'2024-10-16 17:18:58.597458',false),
	 (211,2,'USER','END',NULL,'2024-09-23 15:39:46.953972',NULL,'2024-09-23 15:40:13.996634',false),
	 (212,2,'USER','CHAT',NULL,'2024-09-23 15:40:14.077553',NULL,'2024-09-23 15:40:14.077573',false),
	 (213,2,'USER','CHAT',NULL,'2024-09-23 17:33:16.173608',NULL,'2024-09-23 17:33:16.17361',false),
	 (168,4,'MGR','CHAT',NULL,'2024-09-23 17:40:47.70495',NULL,'2024-09-23 17:40:47.704961',false),
	 (273,0,'BOT','END',NULL,'2024-10-16 17:21:24.179655',NULL,'2024-10-16 17:21:48.164423',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (214,2,'USER','CHAT',NULL,'2024-09-23 17:43:17.68166',NULL,'2024-09-23 17:43:17.681662',false),
	 (168,4,'MGR','CHAT',NULL,'2024-09-23 18:04:59.027753',NULL,'2024-09-23 18:04:59.027767',false),
	 (167,4,'MGR','CHAT',NULL,'2024-09-23 18:12:37.802617',NULL,'2024-09-23 18:12:37.802635',false),
	 (274,1,'USER','CHAT',NULL,'2024-10-16 17:21:48.237728',NULL,'2024-10-16 17:21:48.237749',false),
	 (215,2,'USER','CHAT',NULL,'2024-09-23 18:21:46.60513',NULL,'2024-09-23 18:21:46.605135',false),
	 (277,2,'USER','CHAT',NULL,'2024-10-28 17:45:34.865086',NULL,'2024-10-28 17:45:34.865089',false),
	 (216,2,'USER','CHAT',NULL,'2024-09-23 20:16:17.218178',NULL,'2024-09-23 20:16:17.218182',false),
	 (279,0,'BOT','CHAT',NULL,'2024-11-02 20:48:50.010059',NULL,'2024-11-02 20:48:50.010061',false),
	 (217,2,'USER','CHAT',NULL,'2024-09-23 20:22:24.712715',NULL,'2024-09-23 20:22:24.712733',false),
	 (280,2,'USER','CHAT',NULL,'2024-11-02 20:51:01.746458',NULL,'2024-11-02 20:51:01.746459',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (218,2,'USER','CHAT',NULL,'2024-09-23 20:24:14.779143',NULL,'2024-09-23 20:24:14.779145',false),
	 (281,0,'BOT','CHAT',NULL,'2024-11-02 20:52:47.995104',NULL,'2024-11-02 20:52:47.995106',false),
	 (219,2,'USER','CHAT',NULL,'2024-09-23 21:12:02.696263',NULL,'2024-09-23 21:12:02.696273',false),
	 (282,2,'USER','CHAT',NULL,'2024-11-02 21:02:00.638913',NULL,'2024-11-02 21:02:00.638916',false),
	 (220,2,'USER','CHAT',NULL,'2024-09-23 21:16:53.317867',NULL,'2024-09-23 21:16:53.317874',false),
	 (284,0,'BOT','CHAT',NULL,'2024-11-02 21:05:10.590713',NULL,'2024-11-02 21:05:10.590719',false),
	 (221,2,'USER','CHAT',NULL,'2024-09-23 22:05:49.795579',NULL,'2024-09-23 22:05:49.795582',false),
	 (285,2,'USER','CHAT',NULL,'2024-11-02 21:08:08.515127',NULL,'2024-11-02 21:08:08.51513',false),
	 (222,2,'USER','CHAT',NULL,'2024-09-23 22:06:16.289514',NULL,'2024-09-23 22:06:16.289516',false),
	 (286,2,'USER','CHAT',NULL,'2024-11-02 21:10:30.654433',NULL,'2024-11-02 21:10:30.654439',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (223,2,'USER','CHAT',NULL,'2024-09-23 22:11:26.484481',NULL,'2024-09-23 22:11:26.484483',false),
	 (287,2,'USER','CHAT',NULL,'2024-11-02 21:15:44.985367',NULL,'2024-11-02 21:15:44.985369',false),
	 (224,2,'USER','CHAT',NULL,'2024-09-23 22:13:54.955263',NULL,'2024-09-23 22:13:54.955272',false),
	 (288,0,'BOT','CHAT',NULL,'2024-11-02 21:16:55.78715',NULL,'2024-11-02 21:16:55.787151',false),
	 (225,2,'USER','CHAT',NULL,'2024-09-23 22:17:15.038459',NULL,'2024-09-23 22:17:15.03847',false),
	 (291,0,'BOT','CHAT',NULL,'2024-11-02 21:26:48.424884',NULL,'2024-11-02 21:26:48.424885',false),
	 (226,2,'USER','CHAT',NULL,'2024-09-23 22:48:30.699489',NULL,'2024-09-23 22:48:30.699491',false),
	 (292,2,'USER','CHAT',NULL,'2024-11-02 21:27:38.754022',NULL,'2024-11-02 21:27:38.754024',false),
	 (227,2,'USER','CHAT',NULL,'2024-09-23 22:49:27.600455',NULL,'2024-09-23 22:49:27.600466',false),
	 (207,2,'MGR','CHAT',NULL,'2024-09-23 22:53:06.50552',NULL,'2024-09-23 22:53:06.505553',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (293,2,'USER','CHAT',NULL,'2024-11-02 21:28:29.328337',NULL,'2024-11-02 21:28:29.328357',false),
	 (228,2,'USER','CHAT',NULL,'2024-09-24 11:04:36.289891',NULL,'2024-09-24 11:04:36.289896',false),
	 (229,2,'USER','CHAT',NULL,'2024-09-24 13:48:38.657171',NULL,'2024-09-24 13:48:38.657175',false),
	 (230,2,'USER','CHAT',NULL,'2024-09-24 18:31:54.6253',NULL,'2024-09-24 18:31:54.625305',false),
	 (241,2,'USER','CHAT',NULL,'2024-09-24 21:11:58.304873',NULL,'2024-09-24 21:11:58.304875',false),
	 (231,2,'USER','CHAT',NULL,'2024-09-24 18:34:21.48768',NULL,'2024-09-24 18:34:21.487682',false),
	 (244,2,'USER','CHAT',NULL,'2024-09-24 21:36:21.838706',NULL,'2024-09-24 21:36:21.838715',false),
	 (232,2,'USER','CHAT',NULL,'2024-09-24 18:37:57.7014',NULL,'2024-09-24 18:37:57.701404',false),
	 (246,2,'USER','CHAT',NULL,'2024-09-24 21:42:06.905482',NULL,'2024-09-24 21:42:06.905494',false),
	 (233,2,'USER','CHAT',NULL,'2024-09-24 18:39:03.30127',NULL,'2024-09-24 18:39:03.301273',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (248,2,'USER','CHAT',NULL,'2024-09-24 23:36:36.920515',NULL,'2024-09-24 23:36:36.92052',false),
	 (234,2,'USER','CHAT',NULL,'2024-09-24 18:45:11.608018',NULL,'2024-09-24 18:45:11.608024',false),
	 (252,2,'USER','CHAT',NULL,'2024-09-25 14:46:34.481532',NULL,'2024-09-25 14:46:34.481534',false),
	 (235,2,'USER','CHAT',NULL,'2024-09-24 20:35:38.455717',NULL,'2024-09-24 20:35:38.45572',false),
	 (236,2,'USER','CHAT',NULL,'2024-09-24 20:37:02.629279',NULL,'2024-09-24 20:37:02.629285',false),
	 (255,2,'USER','CHAT',NULL,'2024-09-26 14:49:23.846399',NULL,'2024-09-26 14:49:23.846417',false),
	 (237,2,'USER','CHAT',NULL,'2024-09-24 20:40:07.865697',NULL,'2024-09-24 20:40:07.865703',false),
	 (258,0,'BOT','CHAT',NULL,'2024-09-28 18:16:43.082329',NULL,'2024-09-28 18:16:43.082331',false),
	 (238,2,'USER','CHAT',NULL,'2024-09-24 20:44:50.118136',NULL,'2024-09-24 20:44:50.118142',false),
	 (253,0,'BOT','END',NULL,'2024-09-25 14:48:01.038699',NULL,'2024-09-30 13:54:47.042436',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (259,1,'MGR','CHAT',NULL,'2024-09-30 13:57:09.970304',NULL,'2024-09-30 13:57:09.970316',false),
	 (260,2,'USER','END',NULL,'2024-10-08 17:59:16.991631',NULL,'2024-10-10 09:21:22.571308',false),
	 (166,4,'MGR','CHAT',NULL,'2024-10-10 10:01:40.693323',NULL,'2024-10-10 10:01:40.693329',false),
	 (265,0,'BOT','END',NULL,'2024-10-10 14:10:21.556601',NULL,'2024-10-10 14:10:35.57256',false),
	 (267,0,'BOT','CHAT',NULL,'2024-10-14 15:28:18.261346',NULL,'2024-10-14 15:28:18.261347',false),
	 (268,1,'USER','CHAT',NULL,'2024-10-16 09:10:06.589272',NULL,'2024-10-16 09:10:06.589273',false),
	 (270,0,'BOT','CHAT',NULL,'2024-10-16 17:13:53.543313',NULL,'2024-10-16 17:13:53.543314',false),
	 (271,1,'USER','CHAT',NULL,'2024-10-16 17:18:58.621172',NULL,'2024-10-16 17:18:58.621174',false),
	 (272,0,'BOT','CHAT',NULL,'2024-10-16 17:20:08.577119',NULL,'2024-10-16 17:20:08.577126',false),
	 (276,0,'BOT','CHAT',NULL,'2024-10-16 17:25:14.97907',NULL,'2024-10-16 17:25:14.979073',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (276,1,'USER','CHAT',NULL,'2024-10-16 17:25:14.998547',NULL,'2024-10-16 17:25:14.998561',false),
	 (274,2,'MGR','CHAT',NULL,'2024-10-16 17:26:28.294951',NULL,'2024-10-16 17:26:28.294953',false),
	 (278,0,'BOT','CHAT',NULL,'2024-11-01 16:37:25.43099',NULL,'2024-11-01 16:37:25.430992',false),
	 (279,2,'USER','CHAT',NULL,'2024-11-02 20:48:50.028759',NULL,'2024-11-02 20:48:50.028761',false),
	 (281,2,'USER','CHAT',NULL,'2024-11-02 20:52:48.014356',NULL,'2024-11-02 20:52:48.014358',false),
	 (112,0,'BOT','CHAT',NULL,'2024-08-30 16:55:52.485333',NULL,'2024-08-30 16:55:52.485335',false),
	 (113,0,'BOT','CHAT',NULL,'2024-09-02 10:49:07.461609',NULL,'2024-09-02 10:49:07.461611',false),
	 (114,0,'BOT','END',NULL,'2024-09-02 10:57:40.152246',NULL,'2024-09-02 11:28:56.586728',false),
	 (116,0,'BOT','END',NULL,'2024-09-02 13:14:34.423692',NULL,'2024-09-02 13:14:58.99509',false),
	 (118,0,'BOT','END',NULL,'2024-09-02 13:15:35.901071',NULL,'2024-09-02 13:20:44.748683',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (120,0,'BOT','END',NULL,'2024-09-02 13:28:11.559739',NULL,'2024-09-02 13:28:24.459812',false),
	 (122,0,'BOT','END',NULL,'2024-09-02 13:29:29.358166',NULL,'2024-09-02 13:29:45.102017',false),
	 (124,0,'BOT','END',NULL,'2024-09-02 13:31:51.606938',NULL,'2024-09-02 13:32:02.94604',false),
	 (126,0,'BOT','END',NULL,'2024-09-02 13:43:15.252906',NULL,'2024-09-02 13:43:27.321823',false),
	 (128,0,'BOT','END',NULL,'2024-09-02 13:58:49.206274',NULL,'2024-09-02 13:58:54.292148',false),
	 (130,0,'BOT','CHAT',NULL,'2024-09-03 15:03:51.988767',NULL,'2024-09-03 15:03:51.988768',false),
	 (131,0,'BOT','CHAT',NULL,'2024-09-03 15:05:52.247104',NULL,'2024-09-03 15:05:52.247106',false),
	 (132,0,'BOT','CHAT',NULL,'2024-09-03 15:08:35.908098',NULL,'2024-09-03 15:08:35.908114',false),
	 (133,0,'BOT','CHAT',NULL,'2024-09-03 15:08:36.50217',NULL,'2024-09-03 15:08:36.502172',false),
	 (134,0,'BOT','CHAT',NULL,'2024-09-03 15:08:37.344993',NULL,'2024-09-03 15:08:37.344996',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (135,0,'BOT','CHAT',NULL,'2024-09-03 16:37:28.293229',NULL,'2024-09-03 16:37:28.293231',false),
	 (136,0,'BOT','CHAT',NULL,'2024-09-03 16:38:10.055699',NULL,'2024-09-03 16:38:10.055705',false),
	 (137,0,'BOT','CHAT',NULL,'2024-09-03 16:46:52.446618',NULL,'2024-09-03 16:46:52.446624',false),
	 (138,0,'BOT','CHAT',NULL,'2024-09-03 17:00:24.933951',NULL,'2024-09-03 17:00:24.933955',false),
	 (139,0,'BOT','CHAT',NULL,'2024-09-03 17:14:01.485578',NULL,'2024-09-03 17:14:01.48558',false),
	 (140,0,'BOT','CHAT',NULL,'2024-09-03 17:14:10.691417',NULL,'2024-09-03 17:14:10.691421',false),
	 (141,0,'BOT','CHAT',NULL,'2024-09-03 17:16:19.755588',NULL,'2024-09-03 17:16:19.755589',false),
	 (142,0,'BOT','CHAT',NULL,'2024-09-03 17:16:25.07553',NULL,'2024-09-03 17:16:25.075536',false),
	 (143,0,'BOT','CHAT',NULL,'2024-09-03 17:16:32.665362',NULL,'2024-09-03 17:16:32.665365',false),
	 (144,0,'BOT','CHAT',NULL,'2024-09-03 17:16:57.141061',NULL,'2024-09-03 17:16:57.141071',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (145,0,'BOT','CHAT',NULL,'2024-09-03 17:18:06.50195',NULL,'2024-09-03 17:18:06.501955',false),
	 (146,0,'BOT','CHAT',NULL,'2024-09-03 17:21:22.896595',NULL,'2024-09-03 17:21:22.896606',false),
	 (147,0,'BOT','CHAT',NULL,'2024-09-03 17:25:02.459518',NULL,'2024-09-03 17:25:02.45952',false),
	 (148,0,'BOT','CHAT',NULL,'2024-09-03 17:25:40.690214',NULL,'2024-09-03 17:25:40.69022',false),
	 (149,0,'BOT','CHAT',NULL,'2024-09-03 17:27:07.90179',NULL,'2024-09-03 17:27:07.901792',false),
	 (150,0,'BOT','CHAT',NULL,'2024-09-03 17:28:27.496984',NULL,'2024-09-03 17:28:27.496985',false),
	 (151,0,'BOT','CHAT',NULL,'2024-09-03 17:30:57.89994',NULL,'2024-09-03 17:30:57.899942',false),
	 (152,0,'BOT','CHAT',NULL,'2024-09-03 17:31:27.477284',NULL,'2024-09-03 17:31:27.477286',false),
	 (153,0,'BOT','CHAT',NULL,'2024-09-03 17:55:05.120658',NULL,'2024-09-03 17:55:05.120659',false),
	 (154,0,'BOT','CHAT',NULL,'2024-09-03 17:55:17.606291',NULL,'2024-09-03 17:55:17.606293',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (155,0,'BOT','CHAT',NULL,'2024-09-03 17:57:21.658479',NULL,'2024-09-03 17:57:21.658481',false),
	 (159,0,'BOT','CHAT',NULL,'2024-09-04 10:35:04.678151',NULL,'2024-09-04 10:35:04.678157',false),
	 (160,0,'BOT','CHAT',NULL,'2024-09-04 10:40:05.183716',NULL,'2024-09-04 10:40:05.183717',false),
	 (161,0,'BOT','CHAT',NULL,'2024-09-04 10:41:26.770451',NULL,'2024-09-04 10:41:26.770457',false),
	 (162,0,'BOT','CHAT',NULL,'2024-09-04 10:57:55.097873',NULL,'2024-09-04 10:57:55.097876',false),
	 (164,0,'BOT','CHAT',NULL,'2024-09-04 11:00:04.257401',NULL,'2024-09-04 11:00:04.257406',false),
	 (158,0,'BOT','END',NULL,'2024-09-04 10:34:06.072314',NULL,'2024-09-04 11:16:10.450127',false),
	 (165,0,'BOT','END',NULL,'2024-09-04 11:00:28.880331',NULL,'2024-09-04 11:24:13.371338',false),
	 (163,0,'BOT','END',NULL,'2024-09-04 10:59:49.319561',NULL,'2024-09-04 11:25:03.021291',false),
	 (169,0,'BOT','CHAT',NULL,'2024-09-05 11:29:55.791972',NULL,'2024-09-05 11:29:55.791974',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (170,0,'BOT','END',NULL,'2024-09-05 11:31:03.368467',NULL,'2024-09-05 11:31:24.889768',false),
	 (172,0,'BOT','END',NULL,'2024-09-05 16:48:54.706762',NULL,'2024-09-05 17:00:46.208041',false),
	 (174,0,'BOT','CHAT',NULL,'2024-09-05 17:36:31.379674',NULL,'2024-09-05 17:36:31.379675',false),
	 (175,0,'BOT','CHAT',NULL,'2024-09-05 17:59:11.265207',NULL,'2024-09-05 17:59:11.265209',false),
	 (176,0,'BOT','END',NULL,'2024-09-06 09:28:23.156741',NULL,'2024-09-06 09:28:28.177765',false),
	 (312,0,'BOT','CHAT',NULL,'2025-02-26 15:44:23.098855',NULL,'2025-02-26 15:44:23.098855',false),
	 (312,6,'USER','CHAT',NULL,'2025-02-26 15:44:23.116358',NULL,'2025-02-26 15:44:23.116358',false),
	 (313,0,'BOT','CHAT',NULL,'2025-02-27 17:21:35.111791',NULL,'2025-02-27 17:21:35.111791',false),
	 (313,6,'USER','CHAT',NULL,'2025-02-27 17:21:35.14489',NULL,'2025-02-27 17:21:35.14489',false),
	 (314,0,'BOT','CHAT',NULL,'2025-03-06 17:17:30.342101',NULL,'2025-03-06 17:17:30.342101',false);
INSERT INTO nchatbot.chatroom_user (chat_id,user_id,user_role_cd,chat_user_state_cd,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (314,6,'USER','CHAT',NULL,'2025-03-06 17:17:30.363866',NULL,'2025-03-06 17:17:30.363866',false);
INSERT INTO nchatbot.code (code_id,code_group_id,code_name,code_desc,code_value,code_order,code_use_yn,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
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
INSERT INTO nchatbot.code (code_id,code_group_id,code_name,code_desc,code_value,code_order,code_use_yn,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('FBSTT020','FBSTT','처리중','처리중',NULL,2.0,true,NULL,NULL,NULL,NULL,NULL),
	 ('FBSTT030','FBSTT','처리완료','처리완료',NULL,3.0,true,NULL,NULL,NULL,NULL,NULL),
	 ('FBSTT040','FBSTT','처리불가/반려','처리불가/반려',NULL,4.0,true,NULL,NULL,NULL,NULL,NULL),
	 ('FBSTT010','FBSTT','등록','등록',NULL,1.0,true,NULL,NULL,NULL,NULL,NULL);
INSERT INTO nchatbot.code_group (code_group_id,code_group_name,code_group_desc,code_group_order,code_group_use_yn,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('CRSTT','Chatroom 상태','채팅방 상태',1.0,true,NULL,NULL,NULL,NULL,false),
	 ('AUTH','user 권한','ADM(관리자)/MGR(담당자)/USR(일반사용자)/BOT(봇)',1.0,true,NULL,NULL,NULL,NULL,false),
	 ('FBSTT','feedback 상태','피드백 상태',1.0,true,NULL,NULL,NULL,NULL,NULL);
INSERT INTO nchatbot.embedding_file (file_path,file_name,orign_file_name,category_name,service_cd,service_name,embedding_yn,created_by,created_time,modified_by,last_modified_time,delete_yn,service_desc) VALUES
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
INSERT INTO nchatbot.embedding_file (file_path,file_name,orign_file_name,category_name,service_cd,service_name,embedding_yn,created_by,created_time,modified_by,last_modified_time,delete_yn,service_desc) VALUES
	 ('공용서비스/외부메일_exmail.txt','외부메일_exmail.txt','외부메일_exmail.txt','공용서비스','COM_exmail','외부메일',true,NULL,'2024-09-23 18:09:07.305567',NULL,'2024-09-23 18:12:11.332524',false,'외부 메일 서비스.'),
	 ('공용서비스/원스톱CUE_cue.txt','원스톱CUE_cue.txt','원스톱CUE_cue.txt','공용서비스','COM_cue','원스톱CUE',true,NULL,'2024-09-23 18:09:07.061925',NULL,'2024-09-23 18:12:11.007476',false,'입사자 및 퇴사자의 업무 환경을 빠르게 구축하기 위한 원스톱 CUE 시스템. 원스톱 CUE, 큐 등으로 불림.'),
	 ('공용서비스/경영지원 담당자_manager1.txt','경영지원 담당자_manager1.txt','경영지원 담당자_manager1.txt','공용서비스','COM_manager1','경영지원 담당자',true,NULL,'2024-09-23 18:09:07.100772',NULL,'2024-09-23 18:12:11.060963',false,'온보딩에 적힌 경영지원 담당자 정보를 포함.'),
	 ('공용서비스/IT부문 및 정보보안 담당자_manager2.txt','IT부문 및 정보보안 담당자_manager2.txt','IT부문 및 정보보안 담당자_manager2.txt','공용서비스','COM_manager2','IT부문 및 정보보안 담당자',true,NULL,'2024-09-23 18:09:07.221141',NULL,'2024-09-23 18:12:11.224429',false,'온보딩에 적힌 IT부문 및 정보보안 담당자 정보를 포함. 공용서비스 담당자 정보도 포함되어 있다.'),
	 ('공용서비스/CB부문 담당자_manager3.txt','CB부문 담당자_manager3.txt','CB부문 담당자_manager3.txt','공용서비스','COM_manager3','CB부문 담당자',true,NULL,'2024-09-23 18:09:07.020749',NULL,'2024-09-23 18:12:10.956258',false,'온보딩에 적힌 CB부문 담당자 정보를 포함.'),
	 ('공용서비스/기업부문 담당자_manager4.txt','기업부문 담당자_manager4.txt','기업부문 담당자_manager4.txt','공용서비스','COM_manager4','기업부문 담당자',true,NULL,'2024-09-23 18:09:07.266344',NULL,'2024-09-23 18:12:11.280663',false,'온보딩에 적힌 기업부문 담당자 정보를 포함.');
INSERT INTO nchatbot.faq (question,answer,ref_service_cd,ref_link,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문','답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 ('질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문질문','답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변답변',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO nchatbot.feedback (contents,image_path,state_cd,mgr_user_id,processing_detail,processing_date,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('제출합니다','/feedback/240928/2409282046_4.png','FBSTT010',NULL,NULL,NULL,NULL,'2024-09-28 20:46:44.527947',NULL,'2024-09-28 20:46:44.52795',false),
	 ('ㅁㅁㅁ','/feedback/240928/2409282047_4.png','FBSTT010',NULL,NULL,NULL,NULL,'2024-09-28 20:47:14.593619',NULL,'2024-09-28 20:47:14.593622',false),
	 ('wpcnf','/feedback/240928/2409282051_4.png','FBSTT010',NULL,NULL,NULL,NULL,'2024-09-28 20:51:19.834316',NULL,'2024-09-28 20:51:19.834319',false),
	 ('hihi','/feedback/240928/2409282052_4.png','FBSTT010',NULL,NULL,NULL,4,'2024-09-28 20:52:35.437934',NULL,'2024-09-28 20:52:35.437937',false),
	 ('테스트','/feedback/240928/2409282059_4.png','FBSTT010',NULL,NULL,NULL,4,'2024-09-28 20:59:31.473338',NULL,'2024-09-28 20:59:31.473344',false),
	 ('테스트다~','/feedback/240928/2409282102_4.png','FBSTT010',NULL,NULL,NULL,4,'2024-09-28 21:02:44.838935',NULL,'2024-09-28 21:02:44.838937',false),
	 ('ㅁㄴㅁㅇㄹㅇㄴㄹㅇㅁㄴ','/feedback/240928/2409282104_4.png','FBSTT010',NULL,NULL,NULL,4,'2024-09-28 21:04:39.801917',NULL,'2024-09-28 21:04:39.80192',false),
	 ('ㅁㄴㅇㄹㅁ','/feedback/240928/2409282109_2.png','FBSTT010',NULL,NULL,NULL,2,'2024-09-28 21:09:39.25914',NULL,'2024-09-28 21:09:39.259142',false),
	 ('테스트','/feedback/241028/2410281752_2.png','FBSTT010',NULL,NULL,NULL,2,'2024-10-28 17:52:30.202334',NULL,'2024-10-28 17:52:30.202336',false);
INSERT INTO nchatbot."notice" (contents,start_time,end_time,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 ('테스트222','202410021700','202410221710',2,NULL,NULL,NULL,true),
	 ('금일 오후5시30분에 LLM모델 업데이트 반영으로 순단이 발생할 수 있습니다.','202410021700','202410151900',2,NULL,NULL,NULL,NULL);
INSERT INTO nchatbot.unread_chat_message (chat_msg_id,chat_id,user_id,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (1317,170,4,NULL,'2024-09-05 11:31:19.740174',NULL,'2024-09-05 11:31:19.740179',false),
	 (1236,139,2,NULL,'2024-09-03 17:14:01.61761',NULL,'2024-09-03 17:14:01.617624',false),
	 (1237,140,2,NULL,'2024-09-03 17:14:10.838123',NULL,'2024-09-03 17:14:10.838126',false),
	 (2067,259,1,NULL,'2024-09-30 14:00:34.474092',NULL,'2024-09-30 14:00:34.474093',false),
	 (2068,259,1,NULL,'2024-09-30 14:00:40.932906',NULL,'2024-09-30 14:00:40.932908',false),
	 (2069,259,1,NULL,'2024-09-30 14:00:41.7285',NULL,'2024-09-30 14:00:41.728502',false),
	 (2170,273,1,NULL,'2024-10-16 17:21:39.708737',NULL,'2024-10-16 17:21:39.708753',false),
	 (2172,273,1,NULL,'2024-10-16 17:21:41.757706',NULL,'2024-10-16 17:21:41.757712',false),
	 (2080,260,2,NULL,'2024-10-10 09:09:28.069306',NULL,'2024-10-10 09:09:28.069312',false),
	 (1334,183,2,NULL,'2024-09-06 10:23:14.387805',NULL,'2024-09-06 10:23:14.387808',false);
INSERT INTO nchatbot.unread_chat_message (chat_msg_id,chat_id,user_id,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (2278,297,2,NULL,'2024-11-02 21:38:22.195963',NULL,'2024-11-02 21:38:22.195969',false),
	 (1642,221,2,NULL,'2024-09-23 22:05:54.564534',NULL,'2024-09-23 22:05:54.564538',false),
	 (1644,221,2,NULL,'2024-09-23 22:06:04.625507',NULL,'2024-09-23 22:06:04.62551',false),
	 (2098,265,4,NULL,'2024-10-10 14:10:32.051373',NULL,'2024-10-10 14:10:32.051379',false),
	 (1647,222,2,NULL,'2024-09-23 22:06:30.784613',NULL,'2024-09-23 22:06:30.784617',false),
	 (1649,222,2,NULL,'2024-09-23 22:06:47.523319',NULL,'2024-09-23 22:06:47.523324',false),
	 (1652,223,2,NULL,'2024-09-23 22:11:48.009518',NULL,'2024-09-23 22:11:48.009521',false),
	 (1655,224,2,NULL,'2024-09-23 22:14:08.661744',NULL,'2024-09-23 22:14:08.661749',false),
	 (1657,224,2,NULL,'2024-09-23 22:14:26.940024',NULL,'2024-09-23 22:14:26.940029',false),
	 (1659,224,2,NULL,'2024-09-23 22:14:42.282094',NULL,'2024-09-23 22:14:42.282096',false);
INSERT INTO nchatbot.unread_chat_message (chat_msg_id,chat_id,user_id,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (1567,211,2,NULL,'2024-09-23 15:40:02.284888',NULL,'2024-09-23 15:40:02.28489',false),
	 (1662,225,2,NULL,'2024-09-23 22:17:21.281044',NULL,'2024-09-23 22:17:21.281049',false),
	 (1664,225,2,NULL,'2024-09-23 22:17:56.207151',NULL,'2024-09-23 22:17:56.207155',false),
	 (1666,225,2,NULL,'2024-09-23 22:18:13.737862',NULL,'2024-09-23 22:18:13.737871',false),
	 (2289,301,2,NULL,'2024-11-02 21:46:36.272274',NULL,'2024-11-02 21:46:36.272279',false),
	 (1231,132,2,NULL,'2024-09-03 15:59:20.474583',NULL,'2024-09-03 15:59:20.474593',false),
	 (2107,207,2,NULL,'2024-10-14 15:27:58.101199',NULL,'2024-10-14 15:27:58.101259',false),
	 (2107,207,2,NULL,'2024-10-14 15:27:58.101262',NULL,'2024-10-14 15:27:58.101263',false),
	 (1583,167,1,NULL,'2024-09-23 18:13:32.961399',NULL,'2024-09-23 18:13:32.9614',false),
	 (2108,207,2,NULL,'2024-10-14 15:28:05.289416',NULL,'2024-10-14 15:28:05.289428',false);
INSERT INTO nchatbot.unread_chat_message (chat_msg_id,chat_id,user_id,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (1925,248,2,NULL,'2024-09-25 11:25:27.040893',NULL,'2024-09-25 11:25:27.040898',false),
	 (1927,248,2,NULL,'2024-09-25 11:25:37.32878',NULL,'2024-09-25 11:25:37.328784',false),
	 (1929,248,2,NULL,'2024-09-25 11:25:51.829651',NULL,'2024-09-25 11:25:51.829657',false),
	 (1931,248,2,NULL,'2024-09-25 11:26:22.22402',NULL,'2024-09-25 11:26:22.224025',false),
	 (1933,248,2,NULL,'2024-09-25 11:27:42.964582',NULL,'2024-09-25 11:27:42.964586',false),
	 (2108,207,2,NULL,'2024-10-14 15:28:05.28943',NULL,'2024-10-14 15:28:05.289432',false),
	 (1936,249,2,NULL,'2024-09-25 14:34:53.584796',NULL,'2024-09-25 14:34:53.584801',false),
	 (2109,207,2,NULL,'2024-10-14 15:28:15.480406',NULL,'2024-10-14 15:28:15.480417',false),
	 (2109,207,2,NULL,'2024-10-14 15:28:15.48042',NULL,'2024-10-14 15:28:15.480421',false),
	 (2317,308,1,NULL,'2024-11-02 22:01:57.435448',NULL,'2024-11-02 22:01:57.43545',false);
INSERT INTO nchatbot.unread_chat_message (chat_msg_id,chat_id,user_id,created_by,created_time,modified_by,last_modified_time,delete_yn) VALUES
	 (2318,308,1,NULL,'2024-11-02 22:02:47.025559',NULL,'2024-11-02 22:02:47.02556',false),
	 (2319,308,1,NULL,'2024-11-02 22:03:02.43792',NULL,'2024-11-02 22:03:02.437943',false),
	 (2320,308,1,NULL,'2024-11-02 22:03:31.091584',NULL,'2024-11-02 22:03:31.091584',false),
	 (2321,308,1,NULL,'2024-11-02 22:03:37.94014',NULL,'2024-11-02 22:03:37.940158',false);
INSERT INTO nchatbot."user" (user_nm,email,"password",role_cd,created_by,created_time,modified_by,last_modified_time,delete_yn,emp_no,mng_services,ip,dept_nm,position_nm,guide_tour_json) VALUES
	 ('내규봇','nice-law@niceinfo.co.kr','1234','BOT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::ffff:10.97.192.101','서비스운영실','매니저','{"login":"N", "chatList":"N", "llmChatPannel":"N"}'),
	 ('박예린','rnrmf941@niceinfo.co.kr','1234','USR',NULL,NULL,NULL,'2024-10-16 17:24:38.092622',NULL,NULL,'::ffff:10.97.192.103','::11','서비스운영실','매니저','{"login":"Y","chatList":"Y","llmChatPannel":"Y"}'),
	 ('최우영','wychoi@niceinfo.co.kr','1234','HELP',NULL,NULL,NULL,'2024-10-14 16:10:38.053056',NULL,'011650033',NULL,'::11','서비스운영실','매니저','{"login":"Y","chatList":"Y","llmChatPannel":"Y"}'),
	 ('최석진','sjchoi@niceinfo.co.kr','1234','MGR',NULL,NULL,NULL,'2024-11-02 22:00:44.860272',NULL,NULL,NULL,'::1','서비스운영실','매니저','{"login":"Y","chatList":"Y","llmChatPannel":"N"}'),
	 ('안성균','ask1002@niceinfo.co.kr','1234','USR',NULL,NULL,NULL,'2025-02-19 16:10:38.053',NULL,'011950005',NULL,'::111','서비스운영실','매니저','{"login":"Y","chatList":"Y","llmChatPannel":"Y"}'),
	 ('테스트','test@niceinfo.co.kr','1234','USR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'::11','서비스운영실','매니저','{"login":"N", "chatList":"N", "llmChatPannel":"N"}');
