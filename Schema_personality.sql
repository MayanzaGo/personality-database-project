create database personality;
use personality;


# Step 1 create and load dataset

-- Person
create table person (
       person_id bigint primary key,
       name varchar(100),
       gender enum('Male', 'Female'),
       age int
);

select *
from person;

-- Behavior_scores  
create table behavior (
        behavior_scores_number bigint primary key,
        selfesteem tinyint unsigned check (selfesteem between 1  and 10),
        talkative tinyint unsigned check (talkative between 1  and 10),
        adventurous tinyint unsigned check (adventurous between 1  and 10),
        passive tinyint unsigned check (passive between 1  and 10),
        empathy tinyint unsigned check (empathy between 1  and 10),
        person_id bigint not null,  
        foreign key (person_id) references person(person_id)
);
select *
from behavior;


-- Personality label or target
create table personality_label (
		personality_lable_numer bigint primary key,
        personality enum('Introvert', 'Extrovert'),
        person_id bigint not null,
        foreign key (person_id) references person(person_id)
);

select *
from personality_label 
