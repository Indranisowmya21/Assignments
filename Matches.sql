create table teams (
      team_id integer not null,
      team_name varchar(30) not null,
      unique(team_id)
  );
  insert INTO teams VALUES('10','give');
  insert INTO teams VALUES('20','never');
  insert INTO teams VALUES('30','you');
  insert INTO teams VALUES('40','up');
  insert INTO teams VALUES('50','gonna');
  SELECT * FROM teams;
  create table matches (
      match_id integer not null,
      host_team integer not null,
      guest_team integer not null,
      host_goals integer not null,
      guest_goals integer not null,
      unique(match_id)
  );
  INSERT INTO matches VALUES ('1','30','20','1','0');
  INSERT INTO matches VALUES ('2','10','20','1','2');
  INSERT INTO matches VALUES ('3','20','50','2','2');
  INSERT INTO matches VALUES ('4','10','30','1','0');
  INSERT INTO matches VALUES ('5','30','50','0','1');
  SELECT * from matches;
select team_id, team_name, 
     coalesce(sum(case when team_id = host_team then 
                   (
                    case when host_goals > guest_goals then 3
                    when host_goals = guest_goals then 1
                    when host_goals < guest_goals then 0
                    end
                   ) 
                   when team_id = guest_team then
                   (
                   case when guest_goals > host_goals then 3
                   when guest_goals = host_goals then 1
                   when guest_goals < host_goals then 0
                   end
                   )
                   end), 0) as num_points
    from Teams
    left join Matches
    on 
    Teams.team_id = Matches.host_team
    or Teams.team_id = Matches.guest_team
    group by team_id, team_name
    order by num_points desc, team_id;