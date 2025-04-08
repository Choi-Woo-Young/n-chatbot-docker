INSERT INTO "user"
(user_id, user_nm, email, "password", role_cd, created_by, created_time, modified_by, last_modified_time, delete_yn, emp_no, mng_services, ip, dept_nm, position_nm, guide_tour_json)
VALUES(0, '내규봇', 'nice-law@niceinfo.co.kr', '1234', 'BOT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::ffff:10.97.192.101', '서비스운영실', '매니저', '{"login":"N", "chatList":"N", "llmChatPannel":"N"}');
INSERT INTO "user"
(user_id, user_nm, email, "password", role_cd, created_by, created_time, modified_by, last_modified_time, delete_yn, emp_no, mng_services, ip, dept_nm, position_nm, guide_tour_json)
VALUES(2, '박예린', 'rnrmf941@niceinfo.co.kr', '1234', 'USR', NULL, NULL, NULL, '2024-10-16 17:24:38.092', NULL, NULL, '::ffff:10.97.192.103', '::11', '서비스운영실', '매니저', '{"login":"Y","chatList":"Y","llmChatPannel":"Y"}');
INSERT INTO "user"
(user_id, user_nm, email, "password", role_cd, created_by, created_time, modified_by, last_modified_time, delete_yn, emp_no, mng_services, ip, dept_nm, position_nm, guide_tour_json)
VALUES(1, '최우영', 'wychoi@niceinfo.co.kr', '1234', 'HELP', NULL, NULL, NULL, '2024-10-14 16:10:38.053', NULL, '011650033', NULL, '::11', '서비스운영실', '매니저', '{"login":"Y","chatList":"Y","llmChatPannel":"Y"}');



INSERT INTO code_group
(code_group_id, code_group_name, code_group_desc, code_group_order, code_group_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('CRSTT', 'Chatroom 상태', '채팅방 상태', 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code_group
(code_group_id, code_group_name, code_group_desc, code_group_order, code_group_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('AUTH', 'user 권한', 'ADM(관리자)/MGR(담당자)/USR(일반사용자)/BOT(봇)', 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code_group
(code_group_id, code_group_name, code_group_desc, code_group_order, code_group_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('FBSTT', 'feedback 상태', '피드백 상태', 1.0, true, NULL, NULL, NULL, NULL, NULL);





INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('CRSTT010', 'CRSTT', '봇과채팅중', '봇과채팅중', NULL, 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('CRSTT020', 'CRSTT', '이관종료', '이관종료', NULL, 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('CRSTT050', 'CRSTT', '종료', '종료', NULL, 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('CRSTT030', 'CRSTT', '지원대기', '지원대기', NULL, 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('CRSTT040', 'CRSTT', '지원중', '지원중', NULL, 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('ADM', 'AUTH', '관리자', '관리자', NULL, 1.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('HELP', 'AUTH', '헬프데스크', '헬프데스크', NULL, 3.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('MGR', 'AUTH', '서비스담당자', '서비스담당자', NULL, 2.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('USR', 'AUTH', '일반사용자', '일반사용자', NULL, 4.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('BOT', 'AUTH', '봇', '봇', NULL, 5.0, true, NULL, NULL, NULL, NULL, false);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('FBSTT020', 'FBSTT', '처리중', '처리중', NULL, 2.0, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('FBSTT030', 'FBSTT', '처리완료', '처리완료', NULL, 3.0, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('FBSTT040', 'FBSTT', '처리불가/반려', '처리불가/반려', NULL, 4.0, true, NULL, NULL, NULL, NULL, NULL);
INSERT INTO code
(code_id, code_group_id, code_name, code_desc, code_value, code_order, code_use_yn, created_by, created_time, modified_by, last_modified_time, delete_yn)
VALUES('FBSTT010', 'FBSTT', '등록', '등록', NULL, 1.0, true, NULL, NULL, NULL, NULL, NULL);