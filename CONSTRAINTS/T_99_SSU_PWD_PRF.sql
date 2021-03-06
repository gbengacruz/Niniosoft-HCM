--------------------------------------------------------
--  Constraints for Table T_99_SSU_PWD_PRF
--------------------------------------------------------

  ALTER TABLE "T_99_SSU_PWD_PRF" MODIFY ("R_K" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_PWD_PRF" MODIFY ("PRF_CD" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_PWD_PRF" MODIFY ("PRF_KEY" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_PWD_PRF" MODIFY ("PRF_DSC" NOT NULL ENABLE);
  ALTER TABLE "T_99_SSU_PWD_PRF" ADD CONSTRAINT "T_99_SSU_PWD_PRF_CON" UNIQUE ("PRF_CD")
  USING INDEX  ENABLE;
  ALTER TABLE "T_99_SSU_PWD_PRF" ADD CONSTRAINT "T_99_SSU_PWD_PRF_PK" PRIMARY KEY ("R_K")
  USING INDEX  ENABLE;
