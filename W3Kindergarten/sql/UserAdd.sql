-- 관리자 로그인
sqlplus system/manager


-- User 생성
create user pro identified by manager;


-- 권한 할당
grant connect, resource, dba to pro;


-- pro 접속
conn pro/manager
