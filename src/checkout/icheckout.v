module checkout

import checkout.entities
import stripe

pub interface ICheckout {
	stripe_instance stripe.IStripe
	checkout_session(checkout_param entities.CheckoutSession) !entities.Session
}
