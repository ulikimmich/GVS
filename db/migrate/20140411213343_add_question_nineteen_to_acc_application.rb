class AddQuestionNineteenToAccApplication < ActiveRecord::Migration
  def change
    add_column :acc_applications, :appform_field_19, :text
  end
end
