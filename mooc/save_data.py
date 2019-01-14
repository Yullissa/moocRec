# coding=utf-8
# import pymysql
# pymysql.install_as_MySQLdb()
# import MySQLdb
import sys
import imp

imp.reload(sys)
sys.setdefaultencoding('utf-8')


class Singleton(object):
    def __new__(cls, *args, **kw):
        if not hasattr(cls, '_instance'):
            orig = super(Singleton, cls)
            cls._instance = orig.__new__(cls, *args, **kw)
        return cls._instance


class SaveData(Singleton):
    cmt_mat = {}
    course = {}

    def ins_cmt_score(self, course_id, cmt_sco, stu_rank):
        stu_rank = stu_rank-1
        print(course_id)
        if (course_id in self.cmt_mat.keys()):
            self.cmt_mat[course_id][stu_rank] = cmt_sco
        else:
            print("course_id exists")
            self.cmt_mat[course_id] = [0]*30
            self.cmt_mat[course_id][stu_rank] = cmt_sco


    def ins_cmt(self):
        with open("cmt_score.txt", "a+") as fin:
            fin.write( "courseid" + "\t")
            for i in range(0,30):
                fin.write("user"+str(i)+"\t")
            for item in self.cmt_mat.keys():
                fin.write(str(item))
                fin.write("\t")
                for i in range(0, 30):
                    fin.write(str(self.cmt_mat[item][i]))
                    fin.write("\t")
                fin.write("\n")
            fin.flush()

    def ins_course_in(self, cin):
        course_id = cin['course_id']
        info = str(cin['cour_school_id']) + '\t' + str(
                    cin['cour_plat_id']) + '\t' + str(cin['cour_lang_id']) + '\t' + str(cin['cour_score_id'])
        if (course_id in self.course.keys()):
            return
        else:
            self.course[course_id] = info

    def ins_course(self):
        try:
            with open("course_info1.txt", 'a+') as fin:
                fin.write("courseid"+"\t"+"cour_school_id"+"\t"+"cour_school_id"+"\t"+"cour_lang_id"+"\t"+"cour_score_id"+"\n")
                for item in self.course.keys():
                    fin.write(str(item))
                    fin.write("\t"+ self.course.get(item)+"\n")
                    fin.flush()
        except Exception as e:
            print (e)
