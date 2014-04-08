class AdressesController < ApplicationController
	def index
		voie = params[:voie]
		if voie == 'Allende'
			@numeros = [11,12,13,14]
		elsif voie == 'Dhuys'
			@numeros = [4]
		elsif voie == 'Galliéni'
			@numeros = [1,2,5]
		elsif voie == 'Gambetta'
			@numeros = [7,8,9,10]
		end
		render inline: '<%= select_tag "numero", options_for_select(@numeros) %>'
	end
end