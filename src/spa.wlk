import personas.*

object spa {

	var ultimoCliente

	method atender(persona) {
		// Las personas son polimórficas para el spa. Deben entender
		// -> recibirMasajes()
		// -> darseUnBanioDeVapor()
		persona.recibirMasajes()
		persona.darseUnBanioDeVapor()
		self.darPremioPorVolverEnseguida(persona)
		ultimoCliente = persona
	}

	method darPremioPorVolverEnseguida(persona) {
		if (persona == ultimoCliente) {
			persona.recibirMasajes()
		}
	}

}

