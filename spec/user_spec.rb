require 'spec_helper'

describe User do
  it { should have_many :photos }
  it { should have_many :tags }
  it { should have_many(:photos).through(:tags)}
end
