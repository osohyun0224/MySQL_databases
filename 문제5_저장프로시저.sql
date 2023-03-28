DELIMITER $$
create procedure person_info(
dept varchar(50)
)
begin
	select *
    from income as i left join job_info_1 as j on i.job = j.job
    where i.job =job;
end$$
DELIMITER ;
CALL person_info('미용사');
    