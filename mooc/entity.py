# coding=utf-8

class Entity(object):
    def __init__ (self):
        self.__sid = '' #ѧ��id��
        self.__rank = '' #ѧ������
        self.__name = '' 
        self.__education = ''
        self.__cno = '' #ѧ���γ�����
        
    def sid(self):
        return self.__sid