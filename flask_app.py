from tokens import VK_API_TOKEN, VK_GROUP_ID
from VkApi import VkSession
from DataBase.DataBase import DataBase as Database


def main():
    print('Подключение к базе данных...')
    database = Database(host='127.0.0.1', user='root', password='pZFEkd2H9HwwETAc', db='transportfinder')
    print('Подключение к серверам вконтакте...')
    vk_session = VkSession(database, token=VK_API_TOKEN, vkgroup=VK_GROUP_ID, users_filename='users.txt', administrators_filename='administrators.txt')
    print('Бот запущен')
    while True:
        try:
            vk_session.update()
        except KeyboardInterrupt:
            raise SystemExit
        except Exception as e:
            print(e)

if __name__ == '__main__':
    main()