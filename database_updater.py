# coding:utf8

from DataBase.DataBase import DataBase as Database
from DataBase.broken_category_registry import registry_3
import xlrd
import os

BEGIN = 1
END = 19

typerisator1 = lambda index: 'license_and_bus_'+str(int(index) if index not in [2.0, 2.1, 2.2] else index)
typerisator2 = lambda index: 'license_'+str(int(index) if index not in [2.0, 2.1, 2.2] else index)
typerisator3 = lambda index: 'bus_'+str(int(index) if index not in [2.0, 2.1, 2.2] else index)


def update_license_and_bus(database, begin, end):
    with open('log_license_and_bus_parsers.txt', 'w', encoding='utf-8') as log:
        print('Start')
        pars_dir = './Реестры и т.д/1 - Реестр лицензий и автобус (Актуальны на 03.06.2020)/'
        files = os.listdir(pars_dir)
        for filename in files:
            filename_name = filename.split('.')[0]
            filename_key = filename_name.split()[0]
            if filename_key in database.functions and end > int(filename_key.split('_')[-1]) > begin:
                database.read_license_and_bus(filename, filename_key)


def update_prosecutor_check(database):
    with open('log_prosecutors_check_parsers.txt', 'w', encoding='utf-8') as log:
        print('Start')
        pars_dir = './Реестры и т.д/2 - Реестры прокуратуры/'
        files = os.listdir(pars_dir)
        for filename in files:
            database.read_prosecutors_check(pars_dir+filename, log=log)


def update_category_register(database):
    with open('log_category_registry.txt', 'w', encoding='utf-8') as log:
        print('Start')
        pars_dir = './Реестры и т.д/3 - Реестры категорирования (Актуальны на 19.06.2020)/'
        files = os.listdir(pars_dir)
        for filename in files:
            if int(filename.split('-')[2]) > 3:
                database.read_category_register(pars_dir+filename, log=log)


if __name__ == '__main__':
    database = Database(host=u'localhost', user=u'Ariken', password=u'F0ll0wAriken', db=u'transportfinder')
    update_license_and_bus(database, BEGIN, END)
    #update_prosecutor_check(database)
    #update_category_register(database)