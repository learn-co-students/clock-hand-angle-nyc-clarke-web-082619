def clock_angle(time)
    # code your solution here
    time = time.split(":")

    # minute = 6
    # hr_min = 0.5

    angle = ((time[0].to_i * 60 + time[1].to_i) * 0.5 - time[1].to_i * 6).abs
    
    if angle > 180.0
        angle = 360 - angle
    end

    angle

end
