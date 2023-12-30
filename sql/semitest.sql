-- semitest
alter session set "_oracle_script" = true;

create user semitest
identified by semitest
default tablespace users;

grant connect, resource to semitest;

alter user semitest quota unlimited on users;

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

insert into semitest.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'12','�ȳ��ϼ���','����� ��󸮾��',default, default);
insert into semitest.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'133','��������','����������',default, default);
insert into semitest.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'14','������','����',default, default);
insert into semitest.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'22','ũũũ','��ſ���',default, default);
insert into semitest.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'77','ȣȣȣ','�ݰ�����ȣȣ',default, default);
insert into semitest.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'33','�����','����������',default, default);
insert into semitest.semitest(qb_no,member_no,title,content,count,reg_date) values(seq_qb_no.nextval,'1','��������','�ȳ��ϼ�',default, default);
select * from semitest;


-- DROP SEQUENCE seq_qb_no;
-- drop table semitest;
