SELECT ---[discipline_title]
      results.[event_title] as [Event Category],

	  ---identifying athletes gender based on sport participated on
	  Case 
	  WHEN results.event_title like 'Men%' then 'Man'
	  WHEN results.event_title like '%Women%' then 'Woman'
	  else 'Not Stated'
	  END as Gender
      ---,results.[slug_game]
      ---,[participant_type]
      ,medals.[medal_type]
      ---,[athletes]
      ---,[rank_equal]
     --- ,[rank_position]
      ,results.[country_name]
      ,results.[country_code]
      ---,[country_3_letter_code]
      ---,[athlete_url]
      ,results.[athlete_full_name]
      ,[value_unit] as [Scored Unit]
      ,[value_type] as [Scoring Type]
	  ,hosts.game_season
	  ,hosts.game_year
	  ,hosts.game_location
	  ,hosts.game_name
	  ,YEAR(GETDATE()) - athlete.athlete_year_birth as Age --- get current year to calculate age
	  ,athlete.athlete_year_birth as [Year of Birth]

--- join olympic results , hosts and athletes tables
  FROM [Olympic].[dbo].[olympic_results] as results
  join dbo.olympic_hosts as hosts on results.slug_game = hosts.game_slug
  join dbo.olympic_athletes as athlete on athlete.athlete_full_name = results.athlete_full_name
  join dbo.olympic_medals as medals on medals.athlete_full_name = results.athlete_full_name
  where results.athlete_full_name is not null