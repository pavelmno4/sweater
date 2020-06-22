delete from user_role;
delete from usr;

insert into usr (id, active, password, username) values
    (1, true, '$2a$08$YhTj.Ek2PJ76L7ELD/YalOC8x2wi.tnAyM80yPq63FVKljr16DuXa', 'admin'),
    (2, true, '$2a$08$YhTj.Ek2PJ76L7ELD/YalOC8x2wi.tnAyM80yPq63FVKljr16DuXa', 'Mike');

insert into user_role(user_id, roles) values
    (1, 'ADMIN'), (1, 'USER'),
    (2, 'USER');