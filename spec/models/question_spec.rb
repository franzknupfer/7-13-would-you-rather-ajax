require 'rails_helper'

describe Question do
  it { should validate_presence_of :title }
  it { should validate_presence_of :option1 }
  it { should validate_presence_of :option2 }
  it { should validate_presence_of :description }

  it { should belong_to :user }
end
