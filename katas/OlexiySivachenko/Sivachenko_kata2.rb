def duty_free(price, discount, holiday_cost)
    effectively_cover_holiday = holiday_cost.to_i / (price.to_i * discount.to_i / 100.0)
    effectively_cover_holiday.floor
end