task create_report_data: :environment do
  ActiveRecord::Base.transaction do
    User.all.each do |user|
      2.times do |t|
        user.reports.create report_date: (Time.zone.now + t), type_report: t, status: 1
      end
    end
  end
end
