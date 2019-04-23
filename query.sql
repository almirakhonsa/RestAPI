CREATE TABLE IF NOT EXISTS `stories` 
(
	story_id varchar(255) NOT NULL PRIMARY KEY, 
	created_date varchar(255) DEFAULT NULL,
	updated_date varchar(255) DEFAULT NULL,
	published_date varchar(255) DEFAULT NULL,
	datatype varchar(255) DEFAULT NULL,
	author_group varchar(255) DEFAULT NULL,
	author_id varchar(255) DEFAULT NULL,
	editor_id varchar(255) DEFAULT NULL,
	is_adult_content varchar(255) DEFAULT NULL,
	lead_text varchar(255) DEFAULT NULL,
	location_latitude varchar(255) DEFAULT NULL,
	location_longitude varchar(255) DEFAULT NULL,
	location_name varchar(255) DEFAULT NULL,
	slug varchar(255) DEFAULT NULL,
	status varchar(255) DEFAULT NULL,
	title varchar(255) DEFAULT NULL,
	type varchar(255) DEFAULT NULL,
	meta_description varchar(255) DEFAULT NULL
)


CREATE TABLE IF NOT EXISTS `story_editor` 
(
	story_id varchar(255) NOT NULL PRIMARY KEY, 
	editor_id varchar(255) DEFAULT NULL, 
	FOREIGN KEY (story_id) REFERENCES stories(story_id) 
)

CREATE TABLE IF NOT EXISTS `story_topic` 
( 
    story_id varchar(255) DEFAULT null, 
    topic_id varchar(255) DEFAULT NULL, 
    row_num INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY
)

CREATE TABLE IF NOT EXISTS `story_lead_media` 
( 
    story_id varchar(255) NOT NULL PRIMARY KEY, 
    lead_media_type varchar(255) DEFAULT NULL,
    lead_media_url varchar(255) DEFAULT NULL,
    
    FOREIGN KEY (story_id) REFERENCES stories(story_id) 
)

CREATE TABLE IF NOT EXISTS `story_polling` 
( 
    story_id varchar(255) NOT NULL PRIMARY KEY, 
    date_start varchar(255) DEFAULT NULL,
    date_end varchar(255) DEFAULT NULL,
    question_text varchar(255) DEFAULT NULL,
    question_cover varchar(255) DEFAULT NULL,
    hide_results varchar(255) DEFAULT NULL,
    is_multiple varchar(255) DEFAULT NULL,
    other_manual varchar(255) DEFAULT NULL,
    FOREIGN KEY (story_id) REFERENCES stories(story_id) 
)

CREATE TABLE IF NOT EXISTS `polling_choices` 
( 
	story_id varchar(255), 
	choices_index varchar(255) DEFAULT NULL, 
	image varchar(255) DEFAULT NULL, 
	selected varchar(255) DEFAULT NULL, 
	stats varchar(255) DEFAULT NULL, 
	text varchar(255) DEFAULT NULL
)