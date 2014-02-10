# coding: utf-8

if Rails.env.development?
  User.create email: 'hoge@hoge.com', password: 'secret', password_confirmation: 'secret'
  User.create email: 'fuga@fuga.com', password: 'secret', password_confirmation: 'secret'

  100.times do |i|
    User.find(1).timelines.create name: "HogesTimeline#{i}"
  end

  100.times do |i|
    User.find(2).timelines.create name: "FugasTimeline#{i}"
  end

  100.times do |i|
    IgoDoc.create title: "doc#{i}", content: "テストは#{i}点です。"
  end
end
