# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170104125746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "type"
    t.integer  "request_id"
    t.integer  "product_id"
  end

  add_index "activities", ["product_id"], name: "index_activities_on_product_id", using: :btree
  add_index "activities", ["request_id"], name: "index_activities_on_request_id", using: :btree

  create_table "activityOptions", force: :cascade do |t|
    t.integer "activity_id"
    t.integer "option_id"
  end

  add_index "activityOptions", ["activity_id"], name: "index_activityOptions_on_activity_id", using: :btree
  add_index "activityOptions", ["option_id"], name: "index_activityOptions_on_option_id", using: :btree

  create_table "credits", force: :cascade do |t|
    t.integer  "type"
    t.string   "otherText"
    t.string   "creditorName"
    t.datetime "sdate"
    t.datetime "edate"
    t.string   "currency"
    t.integer  "totalAmount"
    t.integer  "monthAmount"
    t.integer  "restAmount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "link_ops", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "link_ops", ["option_id"], name: "index_link_ops_on_option_id", using: :btree
  add_index "link_ops", ["product_id"], name: "index_link_ops_on_product_id", using: :btree

  create_table "link_option_options", force: :cascade do |t|
    t.integer  "option_id"
    t.integer  "linkedoption_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "link_option_options", ["linkedoption_id"], name: "index_link_option_options_on_linkedoption_id", using: :btree
  add_index "link_option_options", ["option_id"], name: "index_link_option_options_on_option_id", using: :btree

  create_table "options", force: :cascade do |t|
    t.string   "target"
    t.string   "borrower"
    t.string   "mortgagor"
    t.string   "sAmount"
    t.string   "cpCoeff"
    t.string   "percent"
    t.string   "rule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "NPA"
    t.datetime "startdate"
    t.string   "note"
    t.boolean  "isArchive"
    t.datetime "enddate"
  end

  create_table "people", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "fname"
    t.string   "sname"
    t.string   "tname"
    t.datetime "birthday"
    t.boolean  "sex"
    t.string   "fprevname"
    t.string   "sprevname"
    t.string   "tprevname"
    t.string   "passserie"
    t.string   "passnumber"
    t.string   "passsource"
    t.string   "passdivision"
    t.string   "snils"
    t.boolean  "extpassexists"
    t.string   "regaddrindex"
    t.string   "regaddrregion"
    t.string   "regaddrarea"
    t.string   "regaddrcity"
    t.string   "regaddrstreet"
    t.integer  "regaddrhouse"
    t.string   "regaddrhousekorp"
    t.string   "regaddrhousestr"
    t.integer  "regaddrhouseflat"
    t.boolean  "registration_type"
    t.datetime "addrtempregdate"
    t.boolean  "sameliveaddress"
    t.string   "liveaddrindex"
    t.string   "liveaddrregion"
    t.string   "liveaddrarea"
    t.string   "liveaddrcity"
    t.string   "liveaddrstreet"
    t.integer  "liveaddrhouse"
    t.string   "liveaddrhousekorp"
    t.string   "liveaddrhousestr"
    t.integer  "liveaddrhouseflat"
    t.boolean  "livebaseowner"
    t.boolean  "livebaserelative"
    t.boolean  "livebasesocial"
    t.boolean  "livebaserent"
    t.string   "livebaseother"
    t.string   "phonemobile"
    t.string   "email"
    t.boolean  "married"
    t.boolean  "simplemarried"
    t.boolean  "single"
    t.boolean  "divorced"
    t.boolean  "widower"
    t.boolean  "marriagecontract"
    t.integer  "childcount"
    t.boolean  "ed1"
    t.boolean  "ed2"
    t.boolean  "ed3"
    t.boolean  "ed4"
    t.boolean  "ed5"
    t.boolean  "ed6"
    t.integer  "childyear1"
    t.integer  "childyear2"
    t.integer  "childyear3"
    t.string   "homephone"
    t.string   "contactphone"
  end

  create_table "processOptions", force: :cascade do |t|
    t.integer "process_id"
    t.integer "option_id"
  end

  add_index "processOptions", ["option_id"], name: "index_processOptions_on_option_id", using: :btree
  add_index "processOptions", ["process_id"], name: "index_processOptions_on_process_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "audience"
    t.string   "target"
    t.string   "sAmount"
    t.string   "pledge"
    t.string   "insurance"
    t.string   "cpCoeff"
    t.string   "rule"
    t.string   "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "NPA"
    t.datetime "startdate"
    t.string   "months"
    t.string   "note"
    t.boolean  "isArchive"
    t.datetime "enddate"
  end

  create_table "requests", force: :cascade do |t|
    t.boolean  "isborrower"
    t.boolean  "iscoborrower"
    t.string   "coborroweerRelation"
    t.boolean  "ismortgagor"
    t.string   "bName"
    t.string   "bSName"
    t.string   "bLName"
    t.integer  "amount"
    t.integer  "months"
    t.integer  "firstAmount"
    t.boolean  "source_accumulation"
    t.boolean  "source_sell"
    t.boolean  "source_help"
    t.boolean  "source_otherCredit"
    t.string   "source_other"
    t.boolean  "estate_deposit_new"
    t.boolean  "estate_deposit_old"
    t.integer  "estate_deposit_amount"
    t.string   "region"
    t.boolean  "military"
    t.boolean  "mat_cap"
    t.boolean  "many_children"
    t.boolean  "russian_family"
    t.boolean  "aizhk_estate"
    t.boolean  "apartament"
    t.boolean  "salary_cred_form"
    t.boolean  "floatRate"
    t.boolean  "insurance"
    t.integer  "seniorityyears"
    t.integer  "senioritymonths"
    t.boolean  "emplFixedRecr"
    t.boolean  "emplFloatRecr"
    t.boolean  "emplIP"
    t.boolean  "emplCEO"
    t.boolean  "emplPensioner"
    t.boolean  "emplNone"
    t.boolean  "emplOther"
    t.string   "emplOtherText"
    t.integer  "mainWorkYears"
    t.integer  "mainWorkMonths"
    t.string   "mainWorkPosition"
    t.boolean  "mainWorkPosCategoryOwner"
    t.boolean  "mainWorkPosCategoryGeneral"
    t.boolean  "mainWorkPosCategoryDepManager"
    t.boolean  "mainWorkPosCategoryOther"
    t.integer  "mainWorkAmount"
    t.integer  "sWorkYears"
    t.integer  "sWorkMonths"
    t.string   "sWorkPosition"
    t.boolean  "sWorkPosCategoryOwner"
    t.boolean  "sWorkPosCategoryGeneral"
    t.boolean  "sWorkPosCategoryDepManager"
    t.boolean  "sWorkPosCategoryOther"
    t.integer  "sWorkAmount"
    t.boolean  "otherIncomePension"
    t.boolean  "otherIncomeLease"
    t.boolean  "otherIncomeOther"
    t.boolean  "otherIncomeOtherText"
    t.integer  "otherIncomeAmount"
    t.boolean  "expenseAlimony"
    t.boolean  "expenseAlimonyAmount"
    t.boolean  "expenseCredit"
    t.boolean  "estFlat"
    t.integer  "estFlatPart"
    t.boolean  "estRoom"
    t.integer  "estRoomPart"
    t.boolean  "estHouse"
    t.integer  "estHousePart"
    t.integer  "estOtherPart"
    t.string   "estRegion"
    t.string   "estCity"
    t.integer  "estPrice"
    t.string   "carMake"
    t.string   "carModel"
    t.integer  "carYear"
    t.boolean  "carPledge"
    t.integer  "carPrice"
    t.boolean  "conviction"
    t.boolean  "founder"
    t.boolean  "taxArrears"
    t.boolean  "otherCreditRequests"
    t.boolean  "bunkrupt"
    t.boolean  "waitForChild"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.boolean  "targetReadyEstate"
    t.boolean  "targetBuildingEstate"
    t.boolean  "targetPreviousCredit"
    t.integer  "mainwork_id"
    t.integer  "secondwork_id"
    t.integer  "credit1_id"
    t.integer  "credit2_id"
    t.boolean  "estOther"
    t.string   "estOtherText"
    t.integer  "person_id"
  end

  create_table "works", force: :cascade do |t|
    t.string   "name"
    t.string   "index"
    t.string   "region"
    t.string   "area"
    t.string   "city"
    t.string   "street"
    t.integer  "house"
    t.string   "corp"
    t.string   "str"
    t.string   "office"
    t.string   "phone"
    t.string   "site"
    t.boolean  "act1"
    t.boolean  "act2"
    t.boolean  "act3"
    t.boolean  "act4"
    t.boolean  "act5"
    t.boolean  "act6"
    t.boolean  "act7"
    t.boolean  "act8"
    t.boolean  "act9"
    t.boolean  "act10"
    t.boolean  "act11"
    t.boolean  "act12"
    t.boolean  "act13"
    t.boolean  "act14"
    t.boolean  "act15"
    t.boolean  "act16"
    t.boolean  "act17"
    t.boolean  "act18"
    t.boolean  "act19"
    t.boolean  "act20"
    t.string   "actOtherText"
    t.boolean  "cnt1"
    t.boolean  "cnt2"
    t.boolean  "cnt3"
    t.boolean  "cnt4"
    t.boolean  "cnt5"
    t.boolean  "cnt6"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "requests", "credits", column: "credit1_id"
  add_foreign_key "requests", "credits", column: "credit2_id"
  add_foreign_key "requests", "people"
  add_foreign_key "requests", "works", column: "mainwork_id"
  add_foreign_key "requests", "works", column: "secondwork_id"
end
