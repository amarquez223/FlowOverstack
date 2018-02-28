module ApplicationHelper

	def time_ago(created_time)
		mins = ((Time.now - created_time) / 60).to_i
		case
			when mins < 0 
				"EN EL FUTURO"
			when mins == 0 
				"un momento"
			when mins == 1 
				"1 minuto"
			when mins >  1 && mins < 60
				mins.to_s + " minutos"
			when mins >=  60 && mins < 120
				"alrededor de 1 hora"
			when mins >=  120 && mins < 1440
				(mins / 60).to_s + " horas"
			when mins >= 1440 && mins < 2880
				"1 día"
			when mins >= 2880
				(mins / (60 * 24)).to_s + " días"
		end
		
	end

end
