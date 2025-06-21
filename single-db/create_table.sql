CREATE TABLE "public"."predict_result" (
  "home_team" varchar(255),
  "away_team" varchar(255),
  "competition" varchar(255),
  "match_datetime" varchar(255),
  "actual_result" varchar(255),
  "status" varchar(255),
  "1x2_recommendation" varchar(255),
  "1x2_reason" varchar(255),
  "handicap_recommendation" varchar(255),
  "handicap_reason" varchar(255),
  "over_under_recommendation" varchar(255),
  "over_under_reason" varchar(255),
  "analysis_summary" varchar(255),
  "match_id" int4,
  "actual_score" varchar(255),
  "id" int4 NOT NULL,
  PRIMARY KEY ("id")
)
;

CREATE UNIQUE INDEX "p_id" ON "public"."predict_result" (
  "id"
);