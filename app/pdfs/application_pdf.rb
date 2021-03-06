class ApplicationPdf < Prawn::Document
  def initialize(acc_application)
    super()
    @acc_application = acc_application
    logo
    header
    questions
  end

  def logo
       # TODO add logo
  end

  def header
    text "Phase 1 Application", size: 20
    move_down 16
    text "Contact info: #{@acc_application.user.name}, #{@acc_application.user.email}", size: 10
    move_down 10
    text "Company: #{@acc_application.appform_field_1}", size: 18, style: :bold
    text "Submitted on: #{@acc_application.updated_at.to_date}"
  end

  def questions
    move_down 20
    text "Applicant Basic Info & Background", size: 15
    move_down 7
    text QUESTION_ONE, style: :bold
    text @acc_application.appform_field_1
    move_down 5
    text QUESTION_TWO, style: :bold
    text @acc_application.appform_field_2
    move_down 5
    text QUESTION_THREE, style: :bold
    text @acc_application.appform_field_3
    move_down 5
    text QUESTION_FOUR, style: :bold
    text @acc_application.appform_field_4

    @acc_application.founders.each do |f|

      t = make_table([  ["First name:" + f.firstname,"Last name:" + f.lastname,"Email:" + f.email.to_s, "Company role:" + f.companyrole.to_s],
                        ["Address:" + f.address.to_s,"City:" + f.city,"State:" + f.state, "Zip:" + f.zipcode.to_s ],
                        ["Phone:" + f.phone.to_s, "Date of birth:" + f.dateofbirth.to_s, "Website:" + f.website.to_s],
                        [{ :content => "Education:" + f.education,  :colspan => 4 } ],
                        [{ :content => "Resume:" + f.resume,  :colspan => 4 }]])
      t.draw
      move_down 20

    end

    move_down 20
    move_down 5
    text QUESTION_FIVE, style: :bold
    text @acc_application.appform_field_5
    move_down 5
    text QUESTION_SIX, style: :bold
    text @acc_application.appform_field_6
    move_down 5
    text QUESTION_SEVEN, style: :bold
    text @acc_application.appform_field_7
    move_down 5
    text QUESTION_EIGHT, style: :bold
    text @acc_application.appform_field_8
    move_down 5
    text QUESTION_NINE, style: :bold
    text @acc_application.appform_field_9
    move_down 5
    text QUESTION_TEN, style: :bold
    text @acc_application.appform_field_10
    move_down 15
    text "Company Goals & Status", size: 15
    move_down 7
    text QUESTION_ELEVEN, style: :bold
    text @acc_application.appform_field_11
    move_down 5
    text QUESTION_TWELVE, style: :bold
    text @acc_application.appform_field_12
    move_down 5
    text QUESTION_THIRTEEN, style: :bold
    text @acc_application.appform_field_13
    move_down 5
    text QUESTION_FOURTEEN, style: :bold
    text @acc_application.appform_field_14
    move_down 5
    text QUESTION_FIFTEEN, style: :bold
    text @acc_application.appform_field_15
    move_down 5
    text QUESTION_SIXTEEN, style: :bold
    text @acc_application.appform_field_16
    move_down 5
    text QUESTION_SEVENTEEN, style: :bold
    text @acc_application.appform_field_17
    move_down 5
    text QUESTION_EIGHTEEN, style: :bold
    text @acc_application.appform_field_18
    move_down 5
    text QUESTION_NINETEEN, style: :bold
    text @acc_application.appform_field_19
  end
end