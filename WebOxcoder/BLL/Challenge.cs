using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using IBLL;
using System.Threading.Tasks;

namespace BLL
{
    public class Challenge : IBLL.IChallenge
    {
        private static readonly IDAL.IChallenge dal = DALFactory.DataAccess.CreateChallenge();
        private static readonly IDAL.IQuestionType typedal = DALFactory.DataAccess.CreateQuestionType();
        private static readonly IDAL.IEnterprise enterprisedal = DALFactory.DataAccess.CreateEnterprise();
      
        IList<challenge> IChallenge.searchBytec(string tec) {
            Model.type temp = typedal.getTypeByName(tec);
            return dal.searchChallengeByTec(temp.id);
        }

        IList<challenge> IChallenge.searchByLevel(string level) {
            Dictionary<int, string> salary = Tools.Config.getLevel();
            int realLevel = salary.FirstOrDefault(q => q.Value == level).Key;
            return dal.searchChallengeByLevel(realLevel);
        }

        IList<challenge> IChallenge.searchByLoc(string loc) {
            IList<enterprise> companies = enterprisedal.getCompanyByLoc(loc);
            List<challenge> result = new List<challenge>();
            for (int i = 0; i < companies.Count; i++) {
                result.AddRange(dal.searchChallengeByCompany(companies.ElementAt(i).email));
            }
            return result;
        }

        IList<challenge> IChallenge.searchByKeywords(string keyword) {
            IList<enterprise> companies = enterprisedal.getCompanyByName(keyword);
            List<challenge> result = new List<challenge>();
            for (int i = 0; i < companies.Count; i++)
            {
                result.AddRange(dal.searchChallengeByCompany(companies.ElementAt(i).email));
            }
            return result;
        }

        IList<challenge> IChallenge.searchAll() {
            return dal.searchAll();
        }

        IList<challenge> IChallenge.searchByEmail(string email) {
            return dal.searchChallengeByCompany(email);
        }

        challenge IChallenge.getChallengeById(int id) {
            return dal.searchById(id);
        }
        bool IChallenge.changeState(int id) {
            return dal.changeState(id);
        }

        bool IChallenge.addChallenge(int tec, int level, int isPhoto, int isPublish, int question1, int question2, int question3, string email, int state, string duration) {
            type temp = typedal.getChallengeType(tec);
            string typeName=typedal.getChallengeType(tec).name+"工程师";
            string title;
            if (level < 3) {
               title = "[初级]";
            }else if(level<5){
                title="[中级]";
            }else{
                title="[高级]";
            }
            title += typeName;
            challenge newChallenge = new challenge();
            newChallenge.challengeLevel = level;
            newChallenge.companyEmail = email;
            newChallenge.duration = duration;
            newChallenge.isPhoto = isPhoto;
            newChallenge.isPublished = isPublish;
            newChallenge.question1ID = question1;
            newChallenge.question2ID = question2;
            newChallenge.question3ID = question3;
            newChallenge.state = 1;
            newChallenge.title = title;
            newChallenge.type = tec;
            return dal.addChallenge(newChallenge);
               
        }
       
        IList<challenge> IChallenge.searchBytec(int tec) 
        {
            return dal.searchChallengeByTec(tec);
        }

        challenge IChallenge.getEnterpriseUpToDateChallenge(String enterpriseEmail)
        {
            return dal.getEnterpriseUpToDateChallenge(enterpriseEmail);
        }

        
        challenge IChallenge.getChallengeByID(int challengeId)
        {
            return dal.getChallengeByID(challengeId);
        }


        IList<challenge> IChallenge.searchByCoderEmail(String coderEmail)
        {
            return dal.searchChallengeByCoderEmail(coderEmail);
        }
    }
}
