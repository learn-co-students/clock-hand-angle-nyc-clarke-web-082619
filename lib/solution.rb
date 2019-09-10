def clock_angle(time)
    # code your solution here
    hour_to_minutes = {
        1 => 5,
        2 => 10,
        3 => 15,
        4 => 20,
        5 => 25,
        6 => 30,
        7 => 35,
        8 => 40,
        9 => 45,
        10 => 50,
        11 => 55,
        12 => 0

    }

    time_array = time.split(":")
    time_array[0] = time_array[0].to_i
    time_array[1] = time_array[1].to_i
    time_array[0] = hour_to_minutes[time_array[0]]
 

    ((time_array[0] - time_array[1]).abs * 6) + time_array[1].to_f/2 > 180 ? ((time_array[0] - time_array[1]).abs * 6) - 180 + (time_array[1].to_f/2) : ((time_array[0] - time_array[1]).abs * 6) + time_array[1].to_f/2

end
