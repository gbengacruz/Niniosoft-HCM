--------------------------------------------------------
--  DDL for Trigger TR_20_HM_EMP_MRT_STA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TR_20_HM_EMP_MRT_STA" 
   BEFORE INSERT OR UPDATE ON T_20_HM_EMP_MRT_STA
   FOR EACH ROW 
 BEGIN 
   IF :new.r_k IS NULL THEN 
    -- SELECT to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') INTO :new.r_k FROM dual; 
    SELECT S_20_HM_EMP_MRT_STA.NEXTVAL INTO :new.r_k FROM dual; 
   END IF; 
   IF inserting THEN 
       :new.crt_dt := localtimestamp; 
       :new.crt_by := nvl(wwv_flow.g_user,user); 
       :new.upd_dt := localtimestamp; 
       :new.upd_by := nvl(wwv_flow.g_user,user); 
    END IF; 
    IF inserting OR updating THEN 
       :new.upd_dt := localtimestamp; 
       :new.upd_by := nvl(wwv_flow.g_user,user); 
    END IF; 

 END TR_20_HM_EMP_MRT_STA;

/
ALTER TRIGGER "TR_20_HM_EMP_MRT_STA" ENABLE;
