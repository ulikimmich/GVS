class CreateAccApplications < ActiveRecord::Migration
  def change
    create_table :acc_applications do |t|
      t.text    :appform_field_1
      t.text    :appform_field_2
      t.text    :appform_field_3
      t.text    :appform_field_4
      t.text    :appform_field_5
      t.text    :appform_field_6
      t.text    :appform_field_7
      t.text    :appform_field_8
      t.text    :appform_field_9
      t.text    :appform_field_10
      t.text    :appform_field_11
      t.text    :appform_field_12
      t.text    :appform_field_13
      t.text    :appform_field_14
      t.text    :appform_field_15
      t.text    :appform_field_16
      t.text    :appform_field_17
      t.text    :appform_field_18

      t.timestamps
    end
  end
end
