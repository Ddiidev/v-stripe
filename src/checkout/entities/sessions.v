module entities

pub struct Session {
pub:
	id                                   string                    @[omitempty]
	object                               string                    @[omitempty]
	after_expiration                     string                    @[omitempty]
	allow_promotion_codes                string                    @[omitempty]
	amount_subtotal                      int                       @[omitempty]
	amount_total                         int                       @[omitempty]
	automatic_tax                        AutomaticTax              @[omitempty]
	billing_address_collection           string                    @[omitempty]
	cancel_url                           string                    @[omitempty]
	client_reference_id                  string                    @[omitempty]
	client_secret                        string                    @[omitempty]
	consent                              string                    @[omitempty]
	consent_collection                   string                    @[omitempty]
	created                              int                       @[omitempty]
	currency                             string                    @[omitempty]
	currency_conversion                  string                    @[omitempty]
	custom_fields                        []string                  @[omitempty]
	custom_text                          CustomText                @[omitempty]
	customer                             string                    @[omitempty]
	customer_creation                    string                    @[omitempty]
	customer_details                     string                    @[omitempty]
	customer_email                       string                    @[omitempty]
	expires_at                           int                       @[omitempty]
	invoice                              string                    @[omitempty]
	invoice_creation                     string                    @[omitempty]
	livemode                             bool                      @[omitempty]
	locale                               string                    @[omitempty]
	mode                                 string                    @[omitempty]
	payment_intent                       string                    @[omitempty]
	payment_link                         string                    @[omitempty]
	payment_method_collection            string                    @[omitempty]
	payment_method_configuration_details string                    @[omitempty]
	payment_method_options               PaymentMethodOptions      @[omitempty]
	payment_method_types                 []string                  @[omitempty]
	payment_status                       string                    @[omitempty]
	phone_number_collection              PhoneNumberCollection     @[omitempty]
	recovered_from                       string                    @[omitempty]
	saved_payment_method_options         SavedPaymentMethodOptions @[omitempty]
	setup_intent                         string                    @[omitempty]
	shipping_address_collection          string                    @[omitempty]
	shipping_cost                        string                    @[omitempty]
	shipping_details                     string                    @[omitempty]
	shipping_options                     []string                  @[omitempty]
	status                               string                    @[omitempty]
	submit_type                          string                    @[omitempty]
	subscription                         string                    @[omitempty]
	success_url                          string                    @[omitempty]
	total_details                        TotalDetails              @[omitempty]
	ui_mode                              string                    @[omitempty]
	url                                  string                    @[omitempty]
}

pub struct AutomaticTax {
pub:
	enabled   bool   @[omitempty]
	liability string @[omitempty]
	status    string @[omitempty]
}

pub struct CustomText {
pub:
	after_submit                string @[omitempty]
	shipping_address            string @[omitempty]
	submit                      string @[omitempty]
	terms_of_service_acceptance string @[omitempty]
}

pub struct Card {
pub:
	request_three_d_secure string @[omitempty]
}

pub struct PaymentMethodOptions {
pub:
	card Card @[omitempty]
}

pub struct PhoneNumberCollection {
pub:
	enabled bool @[omitempty]
}

pub struct SavedPaymentMethodOptions {
pub:
	allow_redisplay_filters []string @[omitempty]
	payment_method_remove   string   @[omitempty]
	payment_method_save     string   @[omitempty]
}

pub struct TotalDetails {
pub:
	amount_discount int @[omitempty]
	amount_shipping int @[omitempty]
	amount_tax      int @[omitempty]
}
