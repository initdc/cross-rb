# frozen_string_literal: true

RSpec.describe Exec do
  it "run cmd got nil" do
    expect(Exec::run "uname").to be nil
  end

  it "run cmd print line by line" do
    expect(Exec::run "sudo apt-get update").to be nil
  end

  it "code cmd got true" do
    expect(Exec::code "uname").to eq true
  end

  it "code cmd got nil" do
    expect(Exec::code "unamea").to be nil
  end

  it "code cmd got false" do
    expect(Exec::code "exit 1").to eq false
  end

  it "code cmd got false" do
    expect(Exec::code "exit 99", 99).to eq false
  end

  it "each_line cmd got array" do
    arr = []
    Exec::each_line "ls -1 bin" do |line|
      res = line.chomp
      p res
      arr.push res
    end

    expect(arr).to eq ["console", "setup"]
  end

  it "by_ls_1 dir got array" do
    expect(Exec::by_ls_1 "bin").to eq ["console", "setup"]
  end

  it "each_line cmd got array" do
    arr = []
    Exec::each_ls_1 "bin" do |line|
      res = line.chomp.upcase
      p res
      arr.push res
    end

    expect(arr).to eq ["CONSOLE", "SETUP"]
  end

  it "output cmd got 'Linux'" do
    expect(Exec::output "uname").to eq "Linux"
  end
end
