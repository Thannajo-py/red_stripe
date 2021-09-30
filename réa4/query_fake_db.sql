use fil_rouge;
select 
	game.name, 
	concat("de ", game.player_min, " à ", game.player_max, " joueurs") as number_of_player, 
	game.playing_time, concat("à partir de ", game.age, " ans")as age,
	difficulty.name as difficulty, 
	game.stock,
	group_concat(distinct artist.name separator ", ") as illustrateurs,
	group_concat(distinct designer.name separator ", ") as auteurs,
	group_concat(distinct playingmode.name separator ", ") as playing_mode,
	group_concat(distinct publisher.name separator ", ") as publishers,
    group_concat(distinct addon.name separator ", ") as addons,
    group_concat(distinct comment.title separator ", ") as comments,
    group_concat(distinct languages.name separator ", ") as game_languages,
    group_concat(distinct mechanism.name separator ", ") as game_mechanism,
    group_concat(distinct multiaddon.name separator ", ") as multi_add_ons,
    group_concat(distinct tag.name separator ", ") as tags,
    group_concat(distinct topic.name separator ", ") as topics
	from game
    left join difficulty on difficulty.id = game.difficulty_id
    left join complete_illustrate on game.id = complete_illustrate.game_id
    left join artist on artist.id = complete_illustrate.artist_id
    left join complete_design on game.id = complete_design.game_id
    left join designer on designer.id = complete_design.designer_id
    left join complete_categorize on game.id = complete_categorize.game_id
    left join playingmode on playingmode.id = complete_categorize.playingmode_id
    left join complete_publish on game.id = complete_publish.game_id
    left join publisher on publisher.id = complete_publish.publisher_id
    left join addon on addon.game_id = game.id
    left join comment on comment.game_id = game.id
    left join complete_characterize on complete_characterize.game_id = game.id
    left join languages on languages.id = complete_characterize.language_id
    left join work on work.game_id = game.id
    left join mechanism on work.mechanism_id = mechanism.id
    left join link on link.game_id = game.id
    left join multiaddon on multiaddon.id = link.multiaddon_id
    left join define on define.game_id = game.id
    left join tag on tag.id = define.tag_id
    left join typify on typify.game_id = game.id
    left join topic on topic.id = typify.topic_id
    group by game.name
    order by game.name;
    