def clock_angle(time)
    time_array = time.split(":")
    hour = time_array[0].to_f
    minute = time_array[1].to_f

  #  total_minutes = (hour * 60) + minute

    m_hand_pos = (minute * 6)
    h_hand_pos = ((hour * 30)+ (m_hand_pos/12))

    total = (m_hand_pos - h_hand_pos).abs

    if total >= 180 
        360 - total 
    else
        total
    end
end
