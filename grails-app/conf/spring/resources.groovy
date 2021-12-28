// Place your Spring DSL code here
beans = {
	applicationContextHolder(jlr.inventario.ApplicationContextHolder) { bean ->
		bean.factoryMethod = 'getInstance'
	}
}
