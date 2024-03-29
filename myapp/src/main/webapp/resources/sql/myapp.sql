DROP SEQUENCE USER_SEQ;
DROP SEQUENCE ACCESS_HISTORY_SEQ;
DROP SEQUENCE LEAVE_USER_SEQ;

CREATE SEQUENCE USER_SEQ NOCACHE;
CREATE SEQUENCE ACCESS_HISTORY_SEQ NOCACHE;
CREATE SEQUENCE LEAVE_USER_SEQ NOCACHE;

DROP TABLE LEAVE_USER_T;
DROP TABLE ACCESS_HISTORY_T;
DROP TABLE USER_T;
CREATE TABLE USER_T(
    /* ȸ����ȣ(PK) */                                              USER_NO NUMBER NOT NULL,
    /* �̸���(��������)*/                                          EMAIL VARCHAR2(100 BYTE) NOT NULL UNIQUE,
    /* ��ȣȭ(SHA-256) PW*/                                     PW VARCHAR2(64 BYTE),
    /* �̸� */                                                        NAME VARCHAR2(100 BYTE),
    /* ���� */                                                        GENDER VARCHAR2(5 BYTE), 
    /* �޴���ȭ */                                                  MOBILE VARCHAR2(20 BYTE),
    /* �̺�Ʈ ���� ����(0 or 1) */                               EVENT_AGREE NUMBER,
    /* ��������(0 : ����, 1 : ���̹�) */                         SIGNUP_KIND NUMBER,
    /* ��й�ȣ ������ */                                         PW_MODIFIED_DT DATE,
    /* ������ */                                                     SIGNUP_DT DATE,
    CONSTRAINT PK_USER PRIMARY KEY(USER_NO)
);

CREATE TABLE ACCESS_HISTORY_T(
    ACCESS_HISTORY_NO NUMBER NOT NULL,
    EMAIL VARCHAR2(100 BYTE),
    IP      VARCHAR2(50 BYTE),    
    SIGNIN_DT DATE,
    SIGNOUT_DT DATE,
    CONSTRAINT PK_ACCESS_HISTORY PRIMARY KEY (ACCESS_HISTORY_NO),
    CONSTRAINT FK_ACCESS_HISTORY_USER
        FOREIGN KEY(EMAIL)
            REFERENCES USER_T(EMAIL)
                ON DELETE CASCADE
);

CREATE TABLE LEAVE_USER_T(
    LEAVE_USER_NO NUMBER NOT NULL,
    EMAIL VARCHAR2(100 BYTE) NOT NULL UNIQUE,
    LEAVE_DT DATE,
    CONSTRAINT PK_LEAVE_USER PRIMARY KEY (LEAVE_USER_NO)
);


/***********************    Ʈ����     *************************/
/*
    1. DML �۾� ���� �ڵ����� ����Ǵ� �����ͺ��̽� ��ü
    2. ��(ROW) ������ �����Ѵ�.
    3. ����
        1) BEFORE : DML ���� ������ ����Ǵ� Ʈ����
        2) AFTER : DML  ���� ���Ŀ� ����Ǵ� Ʈ����
    4. ����
        CREATE [OR REPLACE] TRIGGER Ʈ���Ÿ�
        BEFORE | AFTER
        INSERT OR UPDATE OR DELETE
        ON ���̺��
        FOR EACH ROW
        BEGIN
            Ʈ���� ����
        END;    
*/

/*
    USER_T ���̺��� ������ ȸ�������� LEAVE_USER_T ���̺� �ڵ����� �����ϴ� 
    LEAVE_TRIGGER Ʈ���� �����ϱ�
*/

CREATE OR REPLACE TRIGGER LEAVE_TRIGGER
    AFTER
    DELETE
    ON USER_T
    FOR EACH ROW
BEGIN
    INSERT INTO LEAVE_USER_T(
        LEAVE_USER_NO,
        EMAIL,
        LEAVE_DT
    ) VALUES(
        LEAVE_USER_SEQ.NEXTVAL,
        :OLD.EMAIL,
        CURRENT_DATE
    );
    -- COMMIT;
END;    

