module main

import stripe
import checkout
import checkout.entities

fn main() {
	instance := stripe.Stripe{
		secret_key: 'secret-key'
	}

	checkout_stripe := checkout.CheckoutStripe.init(instance)

	result := checkout_stripe.checkout_session(entities.CheckoutSession{
		line_items:  [
			entities.LineItem{
				price: 'price_1QHAqTLZ5gTFc3B28M7DQzbj'
				quantity: 1
			}
		]
		mode:        entities.ModeCheckout.subscription
		success_url: 'https://www.tabnews.com.br/Andreldev/build-public-o-dicionario-do-seu-bebe'
		cancel_url:  'https://www.tabnews.com.br/Andreldev/'
	})!
}
