class PhasetwoApplicationPdf < Prawn::Document
  def initialize(phasetwo_application)
    super()
    @phasetwo_application = phasetwo_application
    logo
    header
    questions
  end

  def logo
       # TODO add logo
  end

  def header
    text "Phase 2 Application", size: 20
    move_down 16
    text "Contact info: #{@phasetwo_application.user.name}, #{@phasetwo_application.user.email}", size: 10
    move_down 10
    text "Company: #{@phasetwo_application.user.acc_application.appform_field_1}", size: 18, style: :bold
    text "Submitted on: #{@phasetwo_application.updated_at.to_date}"
  end

  def questions
    move_down 20
    text "Part 2: Applicant Team Video Interview", size: 15
    move_down 7
    text QUESTION_THIRTYFIVE, style: :bold
    text @phasetwo_application.appform_field_35
    move_down 15
    text "Part 3: Please answer the following questions here on this form:", size: 15
    move_down 5
    text QUESTION_THIRTYSIX, style: :bold
    text @phasetwo_application.appform_field_36
    move_down 5
    text QUESTION_THIRTYSEVEN, style: :bold
    text @phasetwo_application.appform_field_37
    move_down 5
    text QUESTION_THIRTYEIGHT, style: :bold
    text @phasetwo_application.appform_field_38
    move_down 5
    text QUESTION_THIRTYNINE, style: :bold
    text @phasetwo_application.appform_field_39
    move_down 5
    text QUESTION_FORTY, style: :bold
    text @phasetwo_application.appform_field_40
    move_down 5
    text QUESTION_FORTYONE, style: :bold
    text @phasetwo_application.appform_field_41
    move_down 5
    text QUESTION_FORTYTWO, style: :bold
    text @phasetwo_application.appform_field_42
    move_down 5
    text QUESTION_FORTYTHREE, style: :bold
    text @phasetwo_application.appform_field_43
    move_down 5
    text QUESTION_FORTYFOUR, style: :bold
    text @phasetwo_application.appform_field_44
    move_down 5
    text QUESTION_FORTYFIVE, style: :bold
    text @phasetwo_application.appform_field_45
    move_down 5
    text QUESTION_FORTYSIX, style: :bold
    text @phasetwo_application.appform_field_46
    move_down 5
    text QUESTION_FORTYSEVEN, style: :bold
    text @phasetwo_application.appform_field_47
  end
end