class Owner:
    def __init__(self, **arguments):
        self.inn = arguments['inn']
        self.ogrn = arguments['ogrn']
        self.company = arguments['company']
        self.registered_at = arguments['registered_at']
        self.license_number = arguments['license_number']
        self.reg_address = arguments['reg_address']
        self.implement_address = arguments['implement_address']
        self.risk_category = arguments['risk_category']
        self.inspect_start = arguments['inspect_start']
        self.inspect_duration = arguments['inspect_duration']
        self.last_inspect = arguments['last_inspect']
        self.purpose_of_inspect = arguments['purpose_of_inspect']
        self.other_reason_of_inspect = arguments['other_reason_of_inspect']
        self.form_of_holding_inspect = arguments['form_of_holding_inspect']
        self.inspect_perform = arguments['inspect_perform']
        self.punishment = arguments['punishment']
        self.description = arguments['description']