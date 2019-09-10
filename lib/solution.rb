def clock_angle(time)
    arr = time.split(":")
    hour = arr[0].to_f
    minute = arr[1].to_f
    hour_percentage = minute/60*20
    minute_percentage = (minute%60)/60
    minute_angle = (minute%60/60.0)*360
    hour_angle = ((hour%12)/12)*360 + (minute%60)/60*30
    puts hour_angle
    puts minute_angle
    arr2 = [(hour_angle - minute_angle).abs, 360-(minute_angle - hour_angle).abs]
    arr2.min
end
