# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
#every 12.hours do
every :day, :at => '12:01am' do
  runner "Coupon.check_expiration"
#  rake "my:rake:task"
#  command "/usr/bin/my_great_command"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
