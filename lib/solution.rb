def clock_angle(time)
    # code your solution here
    timeArray = time.split(":")
    hour =  timeArray[0].to_i
    min = timeArray[1].to_i
    puts hour
    puts min
    if hour == 12
        hourAngle = 0 - (0.5 * min)
    else 
        hourAngle = hour * 30 + (0.5 * min)
    end

    angle = (6 * min) - hourAngle
    if angle < 0
        angle += angle.abs * 2
    end
    if angle > 180
        angle = 360 - angle
    end
    
    # puts angle
    return angle
end

 puts clock_angle("9:00")
