class AddPhaseToAccApplication < ActiveRecord::Migration
  def change
    add_column :acc_applications, :phase, :integer, default: 1
    add_column :acc_applications, :appform_field_20, :text
    add_column :acc_applications, :appform_field_21, :text
    add_column :acc_applications, :appform_field_22, :text
    add_column :acc_applications, :appform_field_23, :text
    add_column :acc_applications, :appform_field_24, :text
    add_column :acc_applications, :appform_field_25, :text
    add_column :acc_applications, :appform_field_26, :text
    add_column :acc_applications, :appform_field_27, :text
    add_column :acc_applications, :appform_field_28, :text
    add_column :acc_applications, :appform_field_29, :text
    add_column :acc_applications, :appform_field_30, :text
    add_column :acc_applications, :appform_field_31, :text
    add_column :acc_applications, :appform_field_32, :text
    add_column :acc_applications, :appform_field_33, :text
    add_column :acc_applications, :appform_field_34, :text
    add_column :acc_applications, :appform_field_35, :text
    add_column :acc_applications, :appform_field_36, :text
    add_column :acc_applications, :appform_field_37, :text
    add_column :acc_applications, :appform_field_38, :text
    add_column :acc_applications, :appform_field_39, :text
end
end
