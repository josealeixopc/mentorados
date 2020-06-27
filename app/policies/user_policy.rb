# frozen_string_literal: true

UserPolicy = Struct.new(:current_user, :record) do
  def edit?
    current_user == record && current_user.mentor?
  end

  def update?
    current_user == record && current_user.mentor?
  end

  def permitted_attributes_for_update
    %i[
      active
      bio
      location
      name
      url_text
      year_in
      year_out
      picture
    ]
  end
end
