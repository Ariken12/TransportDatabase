class Transport:
    def __init__(self, **arguments):
        self.vin = arguments['vin']
        self.state_registry_mark = arguments['srm']
        self.region = arguments['region']
        self.date_of_production = arguments['date_of_issue']
        self.serial = arguments['passport_serial']
        self.ownership = arguments['ownership']
        self.end_date_of_rent = arguments['end_of_ownership']
        self.brand = arguments['brand']
        self.model = arguments['model']
        self.type = arguments['type']
        self.date_of_registration = arguments['date_of_registration']
        self.license_number = arguments['license_number']
        self.status = arguments['status']
        self.last_changes = arguments['last_changes']
        self.categorized = arguments['categorized']
        self.number_of_category_registry = arguments['number_of_cat_reg']
        self.data_from_category_registry = arguments['data_in_cat_reg']
        self.atp = arguments['atp']
        self.model_from_category_registry = arguments['model_from_category_registry']
        self.owner_from_category_registry = arguments['owner_from_cat_reg']
        self.purpose_into_category_registry = arguments['purpose_int_cat_reg']
        self.category = arguments['category']
        self.date_of_registration_in_category_registry = arguments['date_of_cat_reg']