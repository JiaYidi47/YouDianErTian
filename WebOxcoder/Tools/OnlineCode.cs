using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;
using System.Xml;
using System.Net;

namespace Tools
{
    public class OnlineCode
    {
        public static string getLanguageID(String language)
        {
            if (language == "C")
            {
                return "11";
            }
            else if (language == "C++")
            {
                return "41";
            }
            else if (language == "java")
            {
                return "10";
            }
            else
            {
                return "";
            }
        }


        public static string submitCode(string code, string language)
        {
            string strURL = "http://api.compilers.sphere-engine.com/api/v3/submissions?access_token=1fc14a7237c32824ae0174ca897f114a";
            System.Net.HttpWebRequest request;
            request = (System.Net.HttpWebRequest)WebRequest.Create(strURL);
            //Post请求方式
            request.Method = "POST";

            // 内容类型
            request.ContentType = "application/x-www-form-urlencoded";
            // 参数经过URL编码
            string paraUrlCoded = System.Web.HttpUtility.UrlEncode("sourceCode");
            paraUrlCoded += "=" + code;
            paraUrlCoded += "&" + System.Web.HttpUtility.UrlEncode("language");
            paraUrlCoded += "=" + System.Web.HttpUtility.UrlEncode(language);

            byte[] payload;
            //将URL编码后的字符串转化为字节
            payload = System.Text.Encoding.UTF8.GetBytes(paraUrlCoded);
            //设置请求的 ContentLength 
            request.ContentLength = payload.Length;
            //获得请 求流
            System.IO.Stream writer = request.GetRequestStream();
            //将请求参数写入流
            writer.Write(payload, 0, payload.Length);
            // 关闭请求流
            writer.Close();
            System.Net.HttpWebResponse response;
            // 获得响应流
            response = (System.Net.HttpWebResponse)request.GetResponse();
            System.IO.StreamReader myreader = new System.IO.StreamReader(response.GetResponseStream(), Encoding.UTF8);
            string responseText = myreader.ReadToEnd();
            return responseText;
        }

        public static string getResult(string ideoneID)
        {
            string strURL = "http://api.compilers.sphere-engine.com/api/v3/submissions/"+ideoneID+"?access_token=1fc14a7237c32824ae0174ca897f114a"+
                            "&withSource=true&withInput=true&withOutput=true&withStderr=true&withCmpinfo=true&UrlEncode=true";
            System.Net.HttpWebRequest request;
            // 创建一个HTTP请求
            request = (System.Net.HttpWebRequest)WebRequest.Create(strURL);
            request.Method = "GET";
            System.Net.HttpWebResponse response;
            response = (System.Net.HttpWebResponse)request.GetResponse();
            System.IO.StreamReader myreader = new System.IO.StreamReader(response.GetResponseStream(), Encoding.UTF8);
            string responseText = myreader.ReadToEnd();
            myreader.Close();
            return responseText;
        }

        public static string getResultContentByresultID(int resultID)
        {
            if (resultID == 11)
            {
                return "compilation error – the program could not be executed due to compilation error";
            }
            else if (resultID == 12)
            {
                return "runtime error – the program finished because of the runtime error, for example: division by zero, array index out of bounds, uncaught exception";
            }
            else if (resultID == 13)
            {
                return "time limit exceeded – the program didn't stop before the time limit";
            }
            else if (resultID == 15)
            {
                return "success – everything went ok";
            }
            else if (resultID == 17)
            {
                return "memory limit exceeded – the program tried to use more memory than it is allowed to";
            }
            else if (resultID == 19)
            {
                return "illegal system call – the program tried to call illegal system function";
            }
            else
            {
                return "internal error – some problem occurred on Sphere Engine; try to submit the program again and if that fails too";
            }
           
        }
    }
}
