class Interieurs2Controller < ApplicationController
	def index
		voie2 = params[:voie2]
		if voie2 == 'Francis Garnier'
			@numeros = [1,2,3,4,6,8]
		elsif voie2 == 'Pérouse'
			@numeros = [2,4,6]
		elsif voie2 == 'Bougainville'
			@numeros = [1,2,3,4,5,6,7,8,9,10,11,12,13]
		elsif voie2 == 'Jacques Cartier'
			@numeros = [1,2]
     	elsif voie2 == 'Champlain'
     		@numeros = [1,3,5,7]
     	end
			
		render inline: '<%= select_tag "numero", options_for_select(@numeros) %>'
	end
end