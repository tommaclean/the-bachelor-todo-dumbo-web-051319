def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each { |season_num, contestants|
    if season_num.to_s == season
      contestants.each { |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"]
        end
      }
    end

  }
    return winner.split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.each { |season_num, contestants|
    contestants.each { |contestant|
      if (contestant["occupation"] == occupation)
        return contestant["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  i = 0
	data.each { |season, contestants|
		contestants.each { |contestant|
			if (contestant["hometown"] == hometown)
				i += 1
			end
		}
	}
	return i
end

def get_occupation(data, hometown)
	data.each { |season, contestants|
		contestants.each { |contestant|
			if (contestant["hometown"] == hometown)
				return contestant["occupation"]
			end
		}
	}

end


def get_average_age_for_season(data, season_number)
  ages = []
  data.each { |season, contestants|
		if (season == season_number)
			contestants.each { |contestant|
				ages << contestant["age"]
			}
		end
  }
	sum = 0
	for age in ages
		sum += age.to_f
	end

	return (sum / ages.length).round
end
