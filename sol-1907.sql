select 'Low Salary' as category , count( account_id ) as accounts_count from Accounts
where account_id in ( select account_id from accounts where income < 20000 ) 
union
select 'Average Salary' as category , count( account_id ) as accounts_count from Accounts
where account_id in ( select account_id from accounts where income >= 20000 and income <= 50000 )
union 
select 'High Salary' as category , count( account_id ) as accounts_count from Accounts
where account_id in ( select account_id from accounts where income > 50000 )