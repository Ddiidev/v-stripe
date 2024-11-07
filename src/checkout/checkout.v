module checkout

import checkout.entities
import net.http
import stripe
import json

@[noinit]
pub struct CheckoutStripe {
	stripe_instance stripe.IStripe
}

const url_checkout_sessions = 'https://api.stripe.com/v1/checkout/sessions'

pub fn CheckoutStripe.init(stripe_instance stripe.IStripe) ICheckout {
	return CheckoutStripe{stripe_instance}
}

pub fn (c CheckoutStripe) checkout_session(checkout_param entities.CheckoutSession) !entities.Session {
	data := checkout_param.create_map_request()

	result := http.fetch(http.FetchConfig{
		method: .post
		url:    url_checkout_sessions
		data:   http.url_encode_form_data(data)
		header: http.new_header_from_map({
			.authorization: 'Bearer ${c.stripe_instance.secret_key}'
		})
	})!

	if result.status_code != 200 {
		return error(result.body)
	}

	result_parsed := json.decode(entities.Session, result.body)!

	return result_parsed
}
