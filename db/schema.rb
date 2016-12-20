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

ActiveRecord::Schema.define(version: 20161220140000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
  end

  create_table "people", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "sname"
    t.string   "tname"
    t.string   "doc_serie"
    t.string   "doc_number"
    t.datetime "birthday"
  end

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
    t.boolean  "estOther"
    t.string   "estOtherTest"
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
  end

end
