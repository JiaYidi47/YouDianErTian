using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tools
{
    public class PictureTool
    {
        public static string getCorrePicName(string language)
        {
            if (language == "C")
            {
                return ("c");
            }
            else if (language == "C++")
            {
                return ("cpp");
            }
            else
            {
                return language;
            }
        }
    }
}
