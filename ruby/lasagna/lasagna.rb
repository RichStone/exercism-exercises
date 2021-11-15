class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  MINUTES_PER_LAYER = 2

  def remaining_minutes_in_oven(actual_minutes)
    return 0 if actual_minutes >= EXPECTED_MINUTES_IN_OVEN

    return EXPECTED_MINUTES_IN_OVEN if actual_minutes <= 0

    EXPECTED_MINUTES_IN_OVEN - actual_minutes
  end

  def preparation_time_in_minutes(layers)
    return 0 if layers < 0

    MINUTES_PER_LAYER * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    actual_minutes_in_oven + preparation_time_in_minutes(number_of_layers)
  end
end
