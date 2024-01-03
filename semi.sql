alter session set "_oracle_script" = true;

create user semi
identified by semi
default tablespace users;

grant connect, resource to semi;

alter user semi quota unlimited on users;

CREATE TABLE member (
    member_no VARCHAR2(10) NOT NULL,
    member_id VARCHAR2(20),
    password VARCHAR2(50),
    name VARCHAR2(15),
    nickname VARCHAR2(50) NOT NULL,
    height NUMBER,
    role VARCHAR2(1) NOT NULL,
    reg_date date default sysdate,
    birthday VARCHAR2(8),
    weight_loss_goal NUMBER,
    point NUMBER,
    answer VARCHAR2(50),
    local_no VARCHAR2(10) NOT NULL,
    title_no VARCHAR2(10) NOT NULL,
    CONSTRAINT PK_MEMBER PRIMARY KEY (member_no)
);

drop table member;
select * from member;

-- Inserting sample data into the "member" table
INSERT INTO member (
    member_no, member_id, password, name, nickname, height, role, reg_date, birthday,
    weight_loss_goal, point, answer, local_no, title_no
) VALUES (
    '1', 'user123', 'password123', 'John Doe', 'johndoe', 175, 'U', default, '19900101',
    5, 100, 'Answer123', 'L001', 'T001'
);

INSERT INTO member (
    member_no, member_id, password, name, nickname, height, role, reg_date, birthday,
    weight_loss_goal, point, answer, local_no, title_no
) VALUES (
    '2', 'admin456', 'adminPass', 'Admin User', 'adminuser', 180, 'A', default, '19851231',
    10, 200, 'Answer456', 'L002', 'T002'
);

-- Inserting sample data into other tables (if needed)
-- ...

-- Committing the transaction
COMMIT;

select * from member;

<<<<<<< HEAD

=======
<<<<<<< HEAD

select * from member where member_id = 'user123';


-- ���� �Խ��� QnAtest ���̺� (�׽�Ʈ��)
create table semitest(
qb_no varchar2(10),
member_no varchar2(10),
title varchar2(50),
content varchar2(2000),
count number,
reg_date date default sysdate,
constraint pk_semitest_qb_no primary key(qb_no)
);

create sequence seq_qb_no;

insert into semi.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'12','�ȳ��ϼ���','����� ��󸮾��',default, default);
insert into semi.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'133','��������','����������',default, default);
insert into semi.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'14','������','����',default, default);
insert into semi.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'22','ũũũ','��ſ���',default, default);
insert into semi.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'77','ȣȣȣ','�ݰ�����ȣȣ',default, default);
insert into semi.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'33','�����','����������',default, default);
insert into semi.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'1','��������','�ȳ��ϼ�',default, default);
select * from semitest;


-- DROP SEQUENCE seq_qb_no;
-- drop table semitest;


=======
>>>>>>> 290b65c05af58b06abd7d3aca6aee78af964b878
--�����Խ��� Q
create table question_board (
                                qb_no varchar2(10) not null,
                                member_no varchar2(10) not null,
                                title varchar2(50) not null,
                                content varchar2(4000) not null,
                                reg_date date default sysdate,
                                admin_choice number default 0,
                                constraints pk_qb_no primary key(qb_no),
                                constraints ck_admin_choice check (admin_choice in (0, 1)),
                                constraints fk_question_member_no foreign key (member_no) references member(member_no) on delete set null
);
create sequence seq_qb_no;
insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'1','�ȳ��ϼ���','����� ��󸮾��',default, default);
insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'2','��������','����������',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'14','������','����',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'22','ũũũ','��ſ���',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'77','ȣȣȣ','�ݰ�����ȣȣ',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'33','�����','����������',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'131','��������','�ȳ��ϼ�',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'221','�������� ��������..','��ſ���',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'7','1��1���̳�','ġ��ġ����������',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'43','����!!','������ٶ��',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'10','������','�պպ�',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'43','�״븦������~','�ŴϾǸŴϾǸŴϾ�~',default, default);
--insert into semi.question_board(qb_no,member_no,title,content,reg_date,admin_choice) values(seq_qb_no.nextval,'10','����','����������~�̺�������� ��~',default, default);

select * from question_board;


-- DROP SEQUENCE seq_qb_no;
-- drop table question_board;

�亯 A
create table answer_comment (
                                ac_no varchar2(10) not null,
                                member_no varchar2(10) not null,
                                qb_no varchar2(10) not null,
                                title varchar2(50) not null,
                                content varchar2(4000) not null,
                                choice number default 0 not null,
                                like_count number default 0,
                                reg_date date default sysdate,
                                constraints pk_ac_no primary key(ac_no),
                                constraints ck_choice check (choice in (1,0)),
                                constraints fk_answer_member_no foreign key (member_no) references member(member_no) on delete set null,
                                constraints fk_answer_qb_no foreign key (qb_no) references question_board(qb_no) on delete cascade
);
create sequence seq_ac_no;

--ALTER TABLE "SEMI"."ANSWER_COMMENT"
--MODIFY QB_NO VARCHAR2(15);
-- delete from answer_comment where title ='��������';
insert into semi.answer_comment(ac_no,member_no,qb_no,title,content,choice,like_count,reg_date) values(seq_ac_no.nextval,'1','5','�亯�帮����','�̰Ը³�',default, default, default);
insert into semi.answer_comment(ac_no,member_no,qb_no,title,content,choice,like_count,reg_date) values(seq_ac_no.nextval,'2','8','�亯 ����','ļļļ',default, default, default);
insert into semi.answer_comment(ac_no,member_no,qb_no,title,content,choice,like_count,reg_date) values(seq_ac_no.nextval,'2','8','�亯 ����22','�ȳ�',default, default, default);
insert into semi.answer_comment(ac_no,member_no,qb_no,title,content,choice,like_count,reg_date) values(seq_ac_no.nextval,'1','8','�亯 ����33','�ȳ�',default, default, default);
select * from answer_comment;

select
        *
    from
        answer_comment;
--    where
--        ac_no = 19;
<<<<<<< HEAD

select * from member where member_id = 'user123';

select
q.*, m.member_id, m.name
from
question_board q
left join member m
on q.member_no = m.member_no;
=======
>>>>>>> 9520fe8b21422af30a3dbbb597b33571e749ea34
>>>>>>> 290b65c05af58b06abd7d3aca6aee78af964b878
