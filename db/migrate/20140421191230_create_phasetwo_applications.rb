class CreatePhasetwoApplications < ActiveRecord::Migration
  def change
    create_table :phasetwo_applications do |t|
      t.text    :appform_field_20
      t.text    :appform_field_21
      t.text    :appform_field_22
      t.text    :appform_field_23
      t.text    :appform_field_24
      t.text    :appform_field_25
      t.text    :appform_field_26
      t.text    :appform_field_27
      t.text    :appform_field_28
      t.text    :appform_field_29
      t.text    :appform_field_30
      t.text    :appform_field_31
      t.text    :appform_field_32
      t.text    :appform_field_33
      t.text    :appform_field_34
      t.text    :appform_field_35
      t.text    :appform_field_36
      t.text    :appform_field_37
      t.text    :appform_field_38
      t.text    :appform_field_39
      t.text    :appform_field_40
      t.text    :appform_field_41
      t.text    :appform_field_42
      t.text    :appform_field_43
      t.text    :appform_field_44
      t.text    :appform_field_45
      t.text    :appform_field_46
      t.text    :appform_field_47
      t.text    :appform_field_48
      t.text    :appform_field_49
      t.boolean :draft, default: true
      t.integer :user_id
      t.string  :status, default: "new"

      t.timestamps
    end
  end
end
