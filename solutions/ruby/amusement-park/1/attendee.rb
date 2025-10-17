class Attendee
  def initialize(height)
    @height = height
    @pass_id = nil
    # raise 'Implement the Attendee#initialize method'
  end

  def height
    height = @height
    # raise 'Implement the Attendee#height method'
  end

  def pass_id
      return @pass_id
    # raise 'Implement the Attendee#pass_id method'
  end

  def issue_pass!(pass_id)
    if pass_id != nil
      @pass_id = pass_id
    else
      return nil
    end
    # raise 'Implement the Attendee#issue_pass! method'
  end

  def revoke_pass!
    @pass_id = nil
    # raise 'Implement the Attendee#revoke_pass! method'
  end
end
