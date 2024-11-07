module entities

import maps

pub struct CheckoutSession {
pub:
	payment_method_types []string = ['card']
	line_items           []LineItem
	mode                 ModeCheckout = .setup
	success_url          string
	cancel_url           string
}

pub struct LineItem {
pub:
	price    string
	quantity int
}

pub fn (litems []LineItem) create_map_request() map[string]string {
	mut data := map[string]string{}

	for i, item in litems {
		data['line_items[${i}][price]'] = item.price
		data['line_items[${i}][quantity]'] = item.quantity.str()
	}

	return data
}

pub fn (cs CheckoutSession) create_map_request() map[string]string {
	data := {
		'payment_method_types[]': cs.payment_method_types[0]
		'mode':                   cs.mode.str()
		'success_url':            cs.success_url
		'cancel_url':             cs.cancel_url
	}

	return maps.merge(data, cs.line_items.create_map_request())
}
