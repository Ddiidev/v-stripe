module entities

// Modes for Stripe Checkout Session.
pub enum ModeCheckout {
	// - "subscription": To create subscriptions. This mode allows users to subscribe to a plan that will be billed periodically.
	subscription = 0

	// - "payment": For one-time payments. This mode allows users to pay for items in the checkout once.
	payment = 1

	// - "setup": To save the user's payment method for future charges without charging them immediately. Useful for setting up a payment method for later use.
	setup = 2
}
