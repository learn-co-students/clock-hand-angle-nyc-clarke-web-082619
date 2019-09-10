def clock_angle(time)
    nums = time.split(':').map(&:to_i)
    hr = nums[0].to_f
    min = nums[1].to_f
    (min == 0 && hr > 6 && hr < 12) ? min = 360.0 : min

    degrees_per_hr = hr * 30.0
    mins_per_hr = (min / 2.0) - (min * 6.0)
    mod = (degrees_per_hr + mins_per_hr) % 360
    mod.abs
end
