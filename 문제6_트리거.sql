-- 백업용 테이블 생성
CREATE TABLE backup_table (
	person_name varchar(20) not null,
    job varchar(30) not null,
    salary int not null
);

-- 테이블 삭제 및 삭제 이력 저장용 테이블 생성
CREATE TABLE deleted_table_history (
  person_name varchar(20) not null,
  job varchar(30) not null,
  salary int not null
);

-- 삭제 트리거 생성
DELIMITER $$
CREATE TRIGGER table_delete_trigger
AFTER DELETE ON income
FOR EACH ROW
BEGIN
  -- 삭제 이력을 저장할 새로운 행 생성
  INSERT INTO deleted_table_history (person_name, job, salary)
  VALUES (i.person_name, i.job, i.salary);
  
  -- 삭제된 데이터를 백업용 테이블에 복사
  INSERT INTO backup_table (person_name, job, salary)
  VALUES (i.person_name, i.job, i.salary);
END$$
DELIMITER ;

-- 삭제 트리거 제거
DROP TRIGGER IF EXISTS table_delete_trigger;